import 'package:flutter/material.dart';
import 'package:settings/setup/display.dart';
import 'package:settings/setup/hotspot.dart';
import 'package:settings/setup/lockscreen.dart';
import 'package:settings/setup/loggins.dart';
import 'package:settings/setup/piracy.dart';
import 'package:settings/setup/sim.dart';
import 'package:settings/setup/sound.dart';
import 'package:settings/setup/storage.dart';
import 'package:settings/setup/wi_fi.dart';

class tuggle extends StatefulWidget {
  const tuggle({Key? key}) : super(key: key);

  @override
  State<tuggle> createState() => _tuggleState();
}

class _tuggleState extends State<tuggle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 93,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Settings",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Container(
                height: 35,
                child: TextFormField(
                    cursorColor: Color(0xff6CC471),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(7.0),
                      fillColor: Color(0xff181818),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.0)),
                      hintText: ("Search settings"),
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.search_rounded),
                    )),
              ),
            ),
            SizedBox(height: 18),
            ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Loggins(),
                  ));
                },
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.account_circle_outlined,
                      color: Color(0xff6CC471), size: 40),
                ),
                title: Text("Log in to Infinix ID",
                    style: TextStyle(color: Colors.white)),
                subtitle: Text(
                    "View Infinix ID use an e-warranty card, and ...",
                    style: TextStyle(color: Colors.white, fontSize: 10)),
                trailing: Icon(Icons.arrow_forward_ios_outlined)),
            SizedBox(height: 16),
            Row(
              children: [
                Padding(padding: EdgeInsetsDirectional.all(6.0)),
                CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.stay_current_portrait_rounded,
                      color: Color(0xff6CC471),
                      size: 25,
                    )),
                SizedBox(width: 14),
                Text("My Phone",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400)),
                SizedBox(width: 61),
                Text(
                  "Infinix SMART 7 HD",
                  style: TextStyle(color: Colors.white54, fontSize: 12),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_outlined,
                        color: Colors.white24))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 8),
              child: Container(
                width: 355,
                height: 1,
                color: Colors.white12,
              ),
            ),
            SizedBox(height: 22),
            listitems(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sim(),
                      ));
                },
                icon: Icons.import_export_outlined,
                color: Color(0xff6CC471),
                title: "SIM & network settings"),
            listitems(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Wifi(),
                    ));
              },
              title: "Wi-Fi",
              color: Color(0xff4496E6),
              icon: Icons.wifi_outlined,
            ),
            listitems(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Hotspot(),
                ));
              },
              title: "Hotspot & tethering",
              color: Color(0xff6CC471),
              icon: Icons.sensors_outlined,
            ),
            listitems(
              title: "More connections",
              color: Color(0xffEBB751),
              icon: Icons.insert_link_outlined,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 8),
              child: Container(
                width: 355,
                height: 1,
                color: Colors.white12,
              ),
            ),
            listitems(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Display(),
                    ));
              },
              title: "Display & brightness",
              color: Color(0xffEBB751),
              icon: Icons.wb_sunny_outlined,
            ),
            listitems(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Locks(),
                ));
              },
              title: "Theme & lockscreen",
              color: Color(0xffB75865),
              icon: Icons.theaters_rounded,
            ),
            listitems(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sound(),
                    ));
              },
              title: "Sound & vibration",
              color: Colors.deepOrange,
              icon: Icons.volume_up_outlined,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 8),
              child: Container(
                width: 355,
                height: 1,
                color: Colors.white12,
              ),
            ),
            listitems(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Storage(),
                    ));
              },
              title: "Storage",
              color: Color(0xff44BF9F),
              icon: Icons.access_time_outlined,
            ),
            listitems(
              title: "Notification center",
              color: Color(0xff3A85CD),
              icon: Icons.post_add_rounded,
            ),
            listitems(
              title: "App management",
              icon: Icons.bookmarks_outlined,
              color: Color(0xff65BC6C),
            ),
            listitems(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Piracy(),
                    ));
              },
              title: "Privacy",
              icon: Icons.privacy_tip_outlined,
              color: Color(0xff67BD68),
            ),
            listitems(
              title: "Location ",
              icon: Icons.room_outlined,
              color: Color(0xff3A85CD),
            ),
            listitems(
              title: "Security  ",
              icon: Icons.fingerprint,
              color: Color(0xff7B7CF2),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 8),
              child: Container(
                width: 355,
                height: 1,
                color: Colors.white12,
              ),
            ),
            listitems(
              title: "AI Assistant",
              icon: Icons.spa_outlined,
              color: Color(0xff3A85CD),
            ),
            listitems(
              title: "Kids Mode",
              icon: Icons.face_unlock_sharp,
              color: Color(0xffEBB751),
            ),
          ],
        ),
      ),
    );
  }
}

class listitems extends StatelessWidget {
  const listitems({
    super.key,
    this.onTap,
    this.icon,
    this.color,
    required this.title,
  });

  final void Function()? onTap;
  final icon;
  final color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
          backgroundColor: Colors.black,
          child: Icon(
            icon,
            color: color,
            size: 33,
          )),
      title: Text(title, style: TextStyle(color: Colors.white)),
      trailing: Icon(
        Icons.arrow_forward_ios_outlined,
        color: Colors.white24,
      ),
    );
  }
}
// void showThemePicker({required BuildContext context}) {
//   showDialog<void>(
//     context: context,
//     builder: (BuildContext context) {
//       return ThemePickerDialog(
//         onSelectedTheme: (BrightnessPreference preference) {
//           ThemeManager.of(context).setBrightnessPreference(preference);
//         },
//       );
//     },
//   );
// }
