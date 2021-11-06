part of '_base.dart';

/// An abstractions for page which has pagination.
abstract class BasePaginationState<T extends StatefulWidget,
        K extends FutureState<K, dynamic>> extends State<T>
    with Diagnosticable
    implements BaseStateReBuilder<K> {
  GlobalKey<RefreshIndicatorState>? refreshIndicatorKey;
  ScrollController? scrollController;
  Completer<void>? completer;
  ReactiveModel<K>? thisState;
  String? appName;

  /// Decorator things
  BoxShapeDecorator? boxDecorator;
  TextInputDecorator? inputDecorator;

  @override
  void initState() {
    super.initState();
    completer = Completer<void>();
    refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();
    scrollController = ScrollController();
    scrollController!.addListener(_onScroll);
    thisState = Injector.getAsReactive<K>();
    appName = RistekMaterialSettings.appName;
    boxDecorator = BoxShapeDecorator();
    inputDecorator = TextInputDecorator();
    init();

    /// Initialize initializer as checker.
    Initializer(
      reactiveModel: Injector.getAsReactive<K>(),
      rIndicator: refreshIndicatorKey!,
      state: Injector.getAsReactive<K>().state.getCondition(),
      cacheKey: Injector.getAsReactive<K>().state.cacheKey!,
    ).initialize();
  }

  void _onScroll() {
    if (_isBottom && !completer!.isCompleted && scrollCondition()) {
      onScroll();
    }
  }

  bool scrollCondition();

  void onScroll();

  bool get _isBottom {
    if (!scrollController!.hasClients) {
      return false;
    }
    final maxScroll = scrollController!.position.maxScrollExtent;
    final currentScroll = scrollController!.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  ScaffoldAttribute buildAttribute();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: onBackPressed,
        child: CustomScaffold(
          attr: buildAttribute(),
          body: StateBuilder(
              observe: () => Injector.getAsReactive<K>(),
              builder: (context, ReactiveModel<K>? snapshot) =>
                  SizingInformationBuilder(
                    builder: (context, sizeInfo) {
                      if (sizeInfo.deviceType == DeviceScreenType.mobile) {
                        return buildNarrowLayout(context, snapshot!, sizeInfo);
                      }
                      return buildWideLayout(context, snapshot!, sizeInfo);
                    },
                  )),
          appBar: buildAppBar(context),
        ));
  }
}
