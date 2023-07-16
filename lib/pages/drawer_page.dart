import 'package:flutter/material.dart';

import 'responsive_layout.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Drawer(
      backgroundColor: Colors.white,
      elevation: 0.0,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                      'assets/outlook-Logo.png',
                    ))),
                  ),
                  if (!ResponsiveLayout.isComputer(context))
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.black,
                        )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 17,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'New Message',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.power_settings_new,
                      color: Colors.grey[700],
                      size: 17,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Get Messages',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              customRowWidget(
                  iconData: Icons.all_inbox_rounded,
                  text: 'Inbox',
                  isShowNum: true,
                  selectedColor: false),
              customRowWidget(
                iconData: Icons.send_outlined,
                text: 'Send',
              ),
              customRowWidget(
                iconData: Icons.drafts,
                text: 'Drafts',
              ),
              customRowWidget(
                  iconData: Icons.delete_forever_rounded,
                  text: 'Deleted',
                  isShowDivider: false),
              const SizedBox(
                height: 50,
              ),
              customTags(
                color: Colors.grey.shade400,
                text: 'Tags',
                isShowAdd: true,
              ),
              customTags(
                color: Colors.green.shade400,
                text: 'Design',
              ),
              customTags(
                color: Colors.blue.shade400,
                text: 'Work',
              ),
              customTags(
                color: Colors.yellow.shade400,
                text: 'Friends',
              ),
              customTags(
                color: Colors.purple.shade400,
                text: 'Family',
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

Widget customRowWidget({
  required IconData iconData,
  required String text,
  bool isShowNum = false,
  bool selectedColor = true,
  bool isShowDivider = true,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
    child: Column(
      children: [
        Row(
          children: [
            Icon(
              iconData,
              color: selectedColor ? Colors.grey.shade400 : Colors.blue,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(
                  color: selectedColor ? Colors.grey.shade400 : Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            isShowNum
                ? Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.pink[300], shape: BoxShape.circle),
                    child: Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey.shade900,
                        ),
                      ),
                    ),
                  )
                : Container()
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        isShowDivider
            ? const Divider(
                thickness: 0.8,
              )
            : Container(),
      ],
    ),
  );
}

Widget customTags({
  required Color color,
  required String text,
  bool isShowAdd = false,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
    child: Row(
      children: [
        isShowAdd
            ? Icon(
                Icons.label_important_outline_rounded,
                color: color,
                size: 28,
              )
            : Icon(
                Icons.label_important_outlined,
                color: color,
                size: 28,
              ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(
              color: Colors.grey.shade500,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        const Spacer(),
        isShowAdd
            ? Icon(
                Icons.add,
                color: Colors.grey.shade600,
              )
            : Container(),
      ],
    ),
  );
}
