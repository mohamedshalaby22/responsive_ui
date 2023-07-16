import 'package:flutter/material.dart';
import 'package:responsive_ui/pages/responsive_layout.dart';
import '../models/demo_data.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PanelCenterPage extends StatelessWidget {
  const PanelCenterPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Row(
              children: [
                if (ResponsiveLayout.isPhoneLimit(context))
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.grey[600],
                    ),
                  )
                else
                  Container(),
                Icon(
                  Icons.delete_forever,
                  color: Colors.grey[600],
                ),
                const SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.turn_left,
                  color: Colors.grey[600],
                ),
                const SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.turn_sharp_left,
                  color: Colors.grey[600],
                ),
                const SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.turn_right_rounded,
                  color: Colors.grey[600],
                ),
              ],
            ),
            const Spacer(),
            if (!ResponsiveLayout.isPhoneLimit(context))
              Icon(
                Icons.print,
                color: Colors.grey[600],
              ),
            const SizedBox(
              width: 5,
            ),
            Icon(
              Icons.label_important_outline,
              color: Colors.grey[600],
            ),
            const SizedBox(
              width: 5,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.grey[600],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(
              thickness: 1.1,
            ),
            const SizedBox(
              height: 8,
            ),
            Column(
              children: [
                ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/user_2.png'),
                    radius: 25,
                  ),
                  title: Text(
                    'Elvia Atkins',
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w500),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      'Inspiration for our new home',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  trailing: Text(
                    'Today at 10:43',
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    emailDemoText,
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[700],
                        height: 1.4,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Text(
                        '6 Attachments',
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Text(
                            'Download All',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.file_download_outlined,
                            size: 20,
                            color: Colors.grey[700],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Divider(
                    thickness: 1.2,
                  ),
                ),
              ],
            ),
            MasonryGridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              mainAxisSpacing: 20,
              gridDelegate:
                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    "assets/Img_$index.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
            // Row(
            //   children: [
            //     ClipRRect(
            //       borderRadius: BorderRadius.circular(8),
            //       child: Image.asset(
            //         "assets/Img_0.png",
            //         fit: BoxFit.cover,
            //         height: 200,
            //         width: 200,
            //       ),
            //     ),
            //     Column(
            //       children: [
            //         ClipRRect(
            //           borderRadius: BorderRadius.circular(8),
            //           child: Image.asset(
            //             "assets/Img_1.png",
            //             width: 100,
            //             height: 100,
            //             fit: BoxFit.cover,
            //           ),
            //         ),
            //         ClipRRect(
            //           borderRadius: BorderRadius.circular(8),
            //           child: Image.asset(
            //             "assets/Img_2.png",
            //             width: 200,
            //             height: 100,
            //             fit: BoxFit.cover,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
