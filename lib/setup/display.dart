import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  const Display({Key? key}) : super(key: key);

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  bool ischanged = false;
  bool open = false;
  bool changed = false;
  bool isopen = false;
  bool close = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          "Display & brightness",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.black26,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child:
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 9,
              left: 20,
            ),
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 140,
                  child: Text("data",
                  style: TextStyle(color: Colors.cyanAccent)),
                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(12)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Container(
                        height: 70,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 20, top: 15),
            child: Container(
              width: 355,
              height: 1,
              color: Colors.white12,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Text(
              "BRIGHTNESS LEVEL",
              style: TextStyle(color: Colors.white30, fontSize: 13),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: ListTile(
              title: Text("Brightness level",
                  style: TextStyle(color: Colors.white)),
              subtitle: Text("50%", style: TextStyle(color: Colors.white30)),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white30,
                size: 14,
              ),
            ),
          ),
          ListTile(
              title: Text(
            "Adaptive brightness",
            style: TextStyle(color: Colors.white),
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(left: 80),
            child: SizedBox(
              child: Switch(
                activeColor: Colors.green,
                thumbColor: MaterialStatePropertyAll(Colors.grey),
                splashRadius: 9,
                value: ischanged,
                onChanged: (value) {
                  setState(() {
                    ischanged = !ischanged;
                  });
                },
              ),
            ),
          ),),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 20, top: 15),
            child: Container(
              width: 355,
              height: 1,
              color: Colors.white12,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Text(
              "SCREEN OFF ",
              style: TextStyle(color: Colors.white30, fontSize: 13),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: ListTile(
              title: Text("Screen timeout ",
                  style: TextStyle(color: Colors.white)),
              subtitle: Text("After 30 seconds of inactivity",
                  style: TextStyle(color: Colors.white30)),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white30,
                size: 14,
              ),
            ),
          ),
          ListTile(
              title: Text(
            "Keep screen on",
            style: TextStyle(color: Colors.white),
          ),
          trailing: SizedBox(
            child: Switch(
              activeColor: Colors.green,
              thumbColor: MaterialStatePropertyAll(Colors.grey),
              splashRadius: 9,
              value: open,
              onChanged: (value) {
                setState(() {
                  open = !open;
                });
              },
            ),
          ),),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 20, top: 10),
            child: Container(
              width: 355,
              height: 1,
              color: Colors.white12,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Text(
              "DISPLAY ",
              style: TextStyle(color: Colors.white30, fontSize: 13),
            ),
          ),
          ListTile(
              title: Text(
                "Font size",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white30,
                size: 14,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child:
            ListTile(
              title: Text("Inadvertently mode ",
                  style: TextStyle(color: Colors.white)),
              subtitle: Text("Prevent mistouch when yourphone is in a pocket",
                  style: TextStyle(fontSize: 13, color: Colors.white30)),
              trailing:SizedBox(
                child: Switch(
                  activeColor: Colors.green,
                  thumbColor: MaterialStatePropertyAll(Colors.grey),
                  splashRadius: 9,
                  value: changed,
                  onChanged: (value) {
                    setState(() {
                      changed = !changed;
                    });
                  },
                ),
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Auto-rotate screen",
              style: TextStyle(color: Colors.white),
            ),
            trailing: SizedBox(
              child: Switch(
                activeColor: Colors.green,
                thumbColor: MaterialStatePropertyAll(Colors.grey),
                splashRadius: 9,
                value: close,
                onChanged: (value) {
                  setState(() {
                    close = !close;
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 20, top: 19),
            child: Container(
              width: 355,
              height: 1,
              color: Colors.white12,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text(
              "OTHER ",
              style: TextStyle(color: Colors.white30, fontSize: 13),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: ListTile(
              title: Text("Lock screen", style: TextStyle(color: Colors.white)),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white30,
                size: 14,
              ),
            ),
          ),
          ListTile(
              title: Text(
            "Status bar network speed display",
            style: TextStyle(color: Colors.white),
          ),
          trailing:SizedBox(
            child: Switch(
              activeColor: Colors.green,
              thumbColor: MaterialStatePropertyAll(Colors.grey),
              splashRadius: 9,
              value: isopen,
              onChanged: (value) {
                setState(() {
                  isopen = !isopen;
                });
              },
            ),
          ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18, top: 9),
            child: Container(
              height: 170,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.grey.withOpacity(0.2)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "More Settings",
                        style: TextStyle(color: Colors.white24),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          "Desktop setting",
                          style: TextStyle(color: Color(0xff40B927)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "System navigation",
                          style: TextStyle(color: Color(0xff40B927)),
                        ),
                      ), Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "Language & input ",
                          style: TextStyle(color: Color(0xff40B927)),
                        ),
                      ), Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "Display over other apps",
                          style: TextStyle(color: Color(0xff40B927)),
                        ),
                      ),
                    ]),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
