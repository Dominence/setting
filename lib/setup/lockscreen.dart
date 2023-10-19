import 'package:flutter/material.dart';
class Locks extends StatelessWidget {
  const Locks({Key? key}) : super(key: key);

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
          "Theme & lockscreen",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.black26,
      body:
      Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8,top: 11),
            child: ListTile(leading: Container(width: 44,
            height: 42,
            decoration: BoxDecoration(
                color: Colors.orange,
              borderRadius: BorderRadius.circular(8)
            ),
              child:Image(image: AssetImage("assets/icons8-wide-facade-scraper-30.png"),
              color: Colors.white,)
            ),
            title: Text("XTheme",
            style: TextStyle(color: Colors.white),),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white24,
                size: 14,
              ),
            ),
          ),
          SizedBox(height: 19),
          locks(
            text: "My theme",
          ), locks(
            text: "My wallpaper",
          ), locks(
            text: "My DIY",
          ),

        ],
      ),

    );
  }
}

class locks extends StatelessWidget {
  const locks({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 9),
      child: ListTile(
        title: Text(text,
        style: TextStyle(color: Colors.white,)),
        trailing:  Icon(
         Icons.arrow_forward_ios_outlined,
         color: Colors.white30,
           size: 14,)
      ),
    );
  }
}
