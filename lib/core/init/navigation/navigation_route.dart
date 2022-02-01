import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../constants/navigation/navigation_constant.dart';


class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.DEFAULT:
        return normalNavigate(SplashView(), NavigationConstants.DEFAULT);

      case NavigationConstants.TEST_VIEW:
        return normalNavigate(TestsView(), NavigationConstants.TEST_VIEW);

      case NavigationConstants.BUY_VIEW:
        return normalNavigate(BuyView(), NavigationConstants.BUY_VIEW);

      case NavigationConstants.ON_BOARD:
        return normalNavigate(OnBoardView(), NavigationConstants.ON_BOARD);

      case NavigationConstants.SETTINGS_WEB_VIEW:
        if (args.arguments is SettingsDynamicModel) {
          return normalNavigate(
            SettingsDynamicView(model: args.arguments as SettingsDynamicModel),
            NavigationConstants.SETTINGS_WEB_VIEW,
          );
        }
        throw NavigateException<SettingsDynamicModel>(args.arguments);

      default:
        return MaterialPageRoute(
          builder: (context) => NotFoundNavigationWidget(),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget, String pageName) {
    return MaterialPageRoute(
        builder: (context) => widget,
        //analytciste görülecek olan sayfa ismi için pageName veriyoruz
        settings: RouteSettings(name: pageName));
  }
}