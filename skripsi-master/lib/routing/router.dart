import 'package:flutter/material.dart';
import 'package:web2/pages/detail/detail.dart';
import 'package:web2/pages/overview/overview.dart';
import 'package:web2/pages/status/status.dart';
import 'package:web2/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverViewPageRoute:
      return _getPageRoute(OverViewPage());
    case StatusViewPageRoute:
      return _getPageRoute(StatusPage());
    case DetailViewPageRoute:
      return _getPageRoute(DetailPage());

    default:
      return _getPageRoute(OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
