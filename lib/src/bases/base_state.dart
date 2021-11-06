part of '_base.dart';

abstract class BaseState<T extends StatefulWidget,
        K extends FutureState<K, dynamic>> extends State<T>
    with Diagnosticable
    implements BaseStateReBuilder<K> {
  GlobalKey<RefreshIndicatorState>? refreshIndicatorKey;
  ReactiveModel<K>? thisState;
  String? appName;

  ///decorator things
  BoxShapeDecorator? boxDecorator;
  TextInputDecorator? inputDecorator;

  @override
  void initState() {
    super.initState();
    refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();
    thisState = Injector.getAsReactive<K>();

    appName = RistekMaterialSettings.appName;
    boxDecorator = BoxShapeDecorator();
    inputDecorator = TextInputDecorator();
    init();

    ///checker
    Initializer(
      reactiveModel: Injector.getAsReactive<K>(),
      rIndicator: refreshIndicatorKey!,
      state: Injector.getAsReactive<K>().state.getCondition(),
      cacheKey: Injector.getAsReactive<K>().state.cacheKey!,
    ).initialize();
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
