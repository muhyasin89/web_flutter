import 'package:flutter/material.dart';
import 'package:web_flutter/helpers/responsiveness.dart';
import 'package:web_flutter/widgets/large_screen.dart';
import 'package:web_flutter/widgets/medium_screen.dart';
import 'package:web_flutter/widgets/small_screen.dart';
import 'package:web_flutter/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: Drawer(),
        body: ResponsiveWidget(
          largeScreen: LargeScreen(),
          mediumScreen: MediumScreen(),
          smallScreen: SmallScreen(),
        ));
  }
}
