import 'package:flutter/material.dart';
import 'package:responsive_ui/pages/responsive_layout.dart';
import '../panels/panel_page_center.dart';
import '../panels/panel_page_left.dart';
import 'drawer_page.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPage(),
      // appBar: PreferredSize(

      //   preferredSize: const Size(double.infinity, 60),
      //   child: (ResponsiveLayout.isTinyLimit(context) ||
      //           ResponsiveLayout.isTinyHeightLimit(context)
      //       ? Container()
      //       : const AppBarWidget()),
      // ),
      body: ResponsiveLayout(
        tiny: Container(),
        phone: const PanelLeftPage(),
        tablet: Row(
          children: const [
            Expanded(child: PanelLeftPage()),
            Expanded(child: PanelCenterPage()),
          ],
        ),
        largeTablet: Row(
          children: const [
            Expanded(child: PanelLeftPage()),
            Expanded(child: PanelCenterPage()),
          ],
        ),
        computer: Row(children: const [
          Expanded(flex: 1, child: DrawerPage()),
          Expanded(flex: 2, child: PanelLeftPage()),
          Expanded(flex: 3, child: PanelCenterPage()),
        ]),
      ),
    );
  }
}
