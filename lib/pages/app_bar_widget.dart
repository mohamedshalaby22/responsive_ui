import 'package:flutter/material.dart';
import 'package:responsive_ui/pages/responsive_layout.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!ResponsiveLayout.isComputer(context)) {
      return AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            iconSize: 30,
            color: Colors.black,
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu)),
        title: customField(),
        centerTitle: true,
      );
    } else {
      return Container(
        height: 30,
      );
    }
  }
}

Widget customField() {
  return Container(
    padding: const EdgeInsets.only(
      left: 10,
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300)),
    child: TextFormField(
      decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: 'Search',
          suffixIcon: Icon(
            Icons.search_sharp,
            color: Colors.grey,
            size: 28,
          )),
    ),
  );
}
