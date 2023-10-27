import 'package:flutter/material.dart';

class Piracy extends StatefulWidget {
  const Piracy({Key? key}) : super(key: key);

  @override
  State<Piracy> createState() => _PiracyState();
}

class _PiracyState extends State<Piracy> {
  bool ischanged = false;
  bool  changed = false;
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
          "Privacy",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.black26,
      body: Column(
        children: [
          SizedBox(height: 13),
          Listup(
            title: 'Show which apps recently used permissions',
            text: 'Piracy dashboard',
          ),
          Listup(
            title: 'Control app access to your data',
            text: 'Permission manager',
          ),
          ListTile(
            title:Text('Microphone  access',),
            subtitle: Text('For all apps and services',
                style: TextStyle(fontSize: 13, color: Colors.white30)),
            trailing: SizedBox(
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
          ListTile(
            title:Text('Show passwords'),
            subtitle: Text('Display characters briefly as you type',
                style: TextStyle(fontSize: 13, color: Colors.white30)),
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
          Listup(
            text: "Lock screen notificaton display Settings",
            title: "Show notifications but hide content",
          ),
          Listup(
            text: "Autofill service from Google",
            title: "Saved passwords, credit cards, addresses",
          ),
          Listup(
            text: "Activity controls",
            title: "Choose the activities and info you allow Google to save",
          ),
          Listup(
            text: "Ads",
            title: "Manage ads personalization on this device",
          ),
          Listup(
            text: "Usage & diagnostics",
            title: "Share data to help improve Android",
          ),
        ],
      ),
    );
  }
}

class Listup extends StatelessWidget {
  const Listup({
    super.key,
    this.text,
    this.title,
  });
 final text;
 final title;
  @override

  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text,
      style:  TextStyle(color: Colors.white)),
      subtitle: Text(title,
    style: TextStyle(fontSize: 13, color: Colors.white30)),
      trailing: Icon(
        Icons.arrow_forward_ios_outlined,
        color: Colors.white30,
        size: 14,
      ),);
  }
}
