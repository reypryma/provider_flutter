import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'application/example_provider.dart';
import 'router/router.gr.dart' as r;

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final router = r.Router();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ExampleProvider()),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          // onGenerateRoute: router,
          builder: ExtendedNavigator.builder(
            router: r.Router(),
            builder: (context, extendedNav) => Theme(
              data: ThemeData(brightness: Brightness.dark),
              child: extendedNav,
            ),
          )),
    );
  }
}
