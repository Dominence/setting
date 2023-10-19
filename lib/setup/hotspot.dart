import 'package:flutter/material.dart';

class Hotspot extends StatefulWidget {
  const Hotspot({Key? key}) : super(key: key);

  @override
  State<Hotspot> createState() => _HotspotState();
}

class _HotspotState extends State<Hotspot> {
  bool ischanged = false;
  bool open = false;
  bool changed = false;
  bool isopen = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
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
          "Hotspot & tethering",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 21),
          child: Text(
            "Portable hotspot",
            style: TextStyle(
              color: Colors.white24,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only( top: 21),
          child: ListTile(
            title: Text(
              "Personal hotspot",
              style: TextStyle(
                color: Colors.white,
              ),
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
            ),
          ),
        ),

        SizedBox(
          height: 25,
        ),
        ListTile(
          title: Text(
            "Hotspot settings",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.white24,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        ListTile(
          title: Text(
            "One-time data limit",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.white24,
          ),
        ),
        ListTile(
          title: Text(
            "Turn off hotspot automatically",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          subtitle: Text("When no devices are connected",
              style: TextStyle(color: Colors.white24)),
          trailing: Padding(
            padding: const EdgeInsets.only(left: 1),
            child: SizedBox(
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
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 18),
          child: Container(
            width: 355,
            height: 1,
            color: Colors.white12,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 24),
          child: Text("TETHERING",
              style: TextStyle(color: Colors.white38, fontSize: 12)),
        ),
        SizedBox(
          height: 11,
        ),
        ListTile(
          title: Text("USB tethering", style: TextStyle(color: Colors.white)),
          trailing: SizedBox(
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
        ListTile(
          title: Text("Bluetooth tethering",
              style: TextStyle(
                  color: Colors.white)),
          trailing: Switch(
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
        )
      ]),
    );
  }
}
