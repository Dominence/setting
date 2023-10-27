import 'package:flutter/material.dart';

class more extends StatefulWidget {
  const more({Key? key}) : super(key: key);

  @override
  State<more> createState() => _moreState();
}

class _moreState extends State<more> {
  bool ischanged = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      appBar: AppBar(elevation: 0,
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.west_sharp, color: Colors.white,),),
        title: Text(
          "More connections", style: TextStyle(color: Colors.white,),),),
      body:
      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child:
        Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 23,right: 23,top: 30),
              child: Container(width: 330,
              height: 63,
                decoration: BoxDecoration(
                  color: Colors.white24.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10)
                ),
                child:
                Padding(
                  padding: const EdgeInsets.only(left: 22,top: 9),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Bluetooth',
                      style: TextStyle(color: Colors.white,
                      fontSize: 16),),
                      SizedBox(height: 4,),
                      Text('Closed',
                      style: TextStyle(color: Colors.white30,
                      fontSize: 16),),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24,top: 10,right: 22),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 63,
                    width: 153,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white24.withOpacity(0.2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 22,top: 9),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Airplane mode',
                            style: TextStyle(color: Colors.white,
                                fontSize: 16),),
                          SizedBox(height: 4,),
                          Text('Closed',
                            style: TextStyle(color: Colors.white30,
                                fontSize: 16),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 63,
                    width: 153,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white24.withOpacity(0.2),
                    ),
                    child:Padding(
                      padding: const EdgeInsets.only(left: 22,top: 9),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Cast',
                            style: TextStyle(color: Colors.white,
                                fontSize: 16),),
                          SizedBox(height: 4,),
                          Text('Closed',
                            style: TextStyle(color: Colors.white30,
                                fontSize: 16),),
                        ],
                      ),
                    ),

                  ),
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.only(right: 10, left: 20, top: 33),
              child:
              Container(
                width: 355,
                height: 1, color: Colors.white12,),),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 25),
              child: Text(
                "OTHER CONNECTION ",
                style: TextStyle(color: Colors.white30, fontSize: 13),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22,top: 30,right: 21),
              child: Row(
                children: [
                  Text("VPN",
                  style: TextStyle(fontSize: 16)),
                  Padding(
                    padding: const EdgeInsets.only(left: 233),
                    child: Text("None",
                        style: TextStyle(color: Colors.white70)),
                  ),SizedBox(width: 4),
                  Icon(Icons.arrow_forward_ios_sharp,
                      color: Colors.white70,
                  size: 12,)

                ],),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22,top: 33,right: 21),
              child: Row(
                children: [
                  Text("Private DNS",
                  style: TextStyle(fontSize: 16)),
                  Padding(
                    padding: const EdgeInsets.only(left: 150),
                    child: Text("Automatic",
                    style: TextStyle(color: Colors.white70)),
                  ),SizedBox(width: 4),
                  Icon(Icons.arrow_forward_ios_sharp,
                      color: Colors.white70,
                  size: 12,)

                ],),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10,top: 22),
              child: ListTile(
                title:Text("USB ",
                    style: TextStyle(color: Colors.white)),
                subtitle: Text('Charging this device',
                    style: TextStyle(fontSize: 13, color: Colors.white30)),
                  trailing:   Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white70,
                    size: 14,
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 17),
              child: ListTile(
                title:Text("Printing ",
                    style: TextStyle(color: Colors.white)),
                subtitle: Text('Off',
                    style: TextStyle(fontSize: 13, color: Colors.white30)),
                  trailing:   Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white70,
                    size: 14,
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 10),
              child:
              ListTile(
                title: Text("OTG ",
                    style: TextStyle(color: Colors.white)),
                subtitle: Text("Automatically turn off if not connected in ten minutes",
                    style: TextStyle(fontSize: 13, color: Colors.white30)),
                trailing:SizedBox(
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
            Padding(padding: const EdgeInsets.only(right: 10, left: 20, top: 30),
              child:
              Container(
                width: 355,
                height: 1, color: Colors.white12,),),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ListTile(
                  title: Text(
                    'Nearby share',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle:Text(
                    'Share files with nearby devices',
                    style: TextStyle(color: Colors.white70),
                  ),
                  leading: Image(image: AssetImage("assets/sharing.png"),
                      color: Colors.white,
                    width: 37,
                     ),
                  trailing:   Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white70,
                    size: 14,
                  )),
            )
          ],
        ),
      ),


    );
  }
}

