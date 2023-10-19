import 'package:flutter/material.dart';

class Wifi extends StatefulWidget {
  const Wifi({Key? key}) : super(key: key);

  @override
  State<Wifi> createState() => _WifiState();
}

class _WifiState extends State<Wifi> {
  bool ischanged = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar:
      AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.west_sharp,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Wi-Fi",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(children: [
        ListTile(
            title: Text(
          "Wi-Fi",
          style: TextStyle(color: Colors.white),
        ),
        trailing: SizedBox(
          child: Switch(
            activeColor: Color(0xff40B927),
            thumbColor: MaterialStatePropertyAll(Colors.grey),
            splashRadius: 9,
            value: ischanged,
            onChanged: (value) {
              setState(() {
                ischanged = !ischanged;
              });
            },
          ),
        ),),

        SizedBox(
          height: 14,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, left: 10, top: 8),
          child: Container(
            width: 355,
            height: 1,
            color: Colors.white12,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 30),
          child: Row(
            children: [
              Icon(
                Icons.info_outline,
                color: Colors.white30,
                size: 15,
              ),
              SizedBox(width: 9),
              Text(
                "Turn on Wi-Fi to see available networks",
                style: TextStyle(color: Colors.white30, fontSize: 12),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, left: 10, top: 8),
          child: Container(
            width: 355,
            height: 1,
            color: Colors.white12,
          ),
        ),
        ListTile(
          title:
              Text("Wi-Fi preferences", style: TextStyle(color: Colors.white)),
          trailing: Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.white24,
          ),),
        ListTile(
          title:
              Text("Advanced options", style: TextStyle(color: Colors.white)),
          trailing: Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.white24,
          ),),
      ]),
    );
  }
}
