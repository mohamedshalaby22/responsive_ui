import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_ui/models/demo_data.dart';
import 'package:responsive_ui/panels/panel_page_center.dart';

import '../pages/app_bar_widget.dart';
import '../pages/responsive_layout.dart';

class PanelLeftPage extends StatelessWidget {
  const PanelLeftPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (!ResponsiveLayout.isComputer(context))
          ? AppBar(
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
            )
          : AppBar(
              toolbarHeight: 0.0,
            ),
      body: Padding(
        padding: EdgeInsets.only(
            left: 10,
            right: 10,
            top: ResponsiveLayout.isComputer(context) ? 5 : 15),
        child: Column(
          children: [
            if (ResponsiveLayout.isComputer(context))
              Column(
                children: [
                  customField(),
                  const SizedBox(
                    height: 15,
                  )
                ],
              ),
            Row(
              children: const [
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Sort b date',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Icon(
                  Icons.filter_list,
                  color: Colors.black,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: demoData.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PanelCenterPage()));
                  },
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: (!ResponsiveLayout.isPhoneLimit(context) &&
                                index == 0)
                            ? Colors.blue
                            : Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        demoData[index].tagColor != Colors.transparent
                            ? Padding(
                                padding: const EdgeInsets.only(left: 8, top: 5),
                                child: Icon(
                                  Icons.label_important_sharp,
                                  color: demoData[index].tagColor,
                                ),
                              )
                            : Container(),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(demoData[index].image),
                          ),
                          title: Text(
                            demoData[index].name,
                            style: TextStyle(
                                color:
                                    (!ResponsiveLayout.isPhoneLimit(context) &&
                                            index == 0)
                                        ? Colors.white
                                        : Colors.black),
                          ),
                          subtitle: Text(
                            demoData[index].subject,
                            style: TextStyle(
                                color:
                                    (!ResponsiveLayout.isPhoneLimit(context) &&
                                            index == 0)
                                        ? Colors.white
                                        : Colors.black),
                          ),
                          trailing: Text(
                            demoData[index].time,
                            style: TextStyle(
                                color:
                                    (!ResponsiveLayout.isPhoneLimit(context) &&
                                            index == 0)
                                        ? Colors.white
                                        : Colors.black),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 20),
                          child: Text(
                            emailDemoText,
                            maxLines: Random().nextInt(5) + 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color:
                                    (!ResponsiveLayout.isPhoneLimit(context) &&
                                            index == 0)
                                        ? Colors.white
                                        : Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
