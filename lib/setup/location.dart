import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  bool ischanged = false;
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
          "Location",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.black26,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              "Location",
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
            padding: const EdgeInsets.only(top: 8),
            child: ListTile(
              title: Text("App location permissions",
                  style: TextStyle(color: Colors.white)),
              subtitle: Text("Location is off",
                  style: TextStyle(color: Colors.white30)),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white30,
                size: 14,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: ListTile(
              title: Text("Location services",
                  style: TextStyle(color: Colors.white)),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white30,
                size: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
