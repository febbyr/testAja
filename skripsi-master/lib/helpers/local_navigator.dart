import 'package:flutter/widgets.dart';
import 'package:web2/constants/controllers.dart';
import 'package:web2/routing/router.dart';
import 'package:web2/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: OverViewPageRoute,
      onGenerateRoute: generateRoute,
    );
