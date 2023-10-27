import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(elevation: 0,
        backgroundColor: Colors.black87,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.west_sharp, color: Colors.white,),),
        title: Text(
          "App management", style: TextStyle(color: Colors.white,),),),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 23,right: 23,top: 40),
              child: Container(width: 330,
                height: 65,
                decoration: BoxDecoration(
                    color: Colors.white24.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10)
                ),
                child:
                Padding(
                  padding: const EdgeInsets.only(left: 22,top: 9),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Screen time',
                        style: TextStyle(color: Colors.white,
                            fontSize: 16),),
                      SizedBox(height: 4,),
                      Text('1 hr,38 min today',
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
                      child:
                          Text('Default apps',
                            style: TextStyle(color: Colors.white,
                                fontSize: 16),),


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
                      child:
                          Text('App upadate',
                            style: TextStyle(color: Colors.white,
                                fontSize: 16),),

                    ),

                  ),
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.only(right: 10, left: 20, top: 26),
              child:
              Container(
                width: 355,
                height: 1, color: Colors.white12,),),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 25),
              child: Text(
                "ALL APPS ",
                style: TextStyle(color: Colors.white30, fontSize: 13),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5,top: 17),
              child:
              ListTile(
                title: Text("App list"),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white30,
                  size: 14,
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.only(right: 10, left: 20, top: 20),
              child:
              Container(
                width: 355,
                height: 1, color: Colors.white12,),),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 25),
              child: Text(
                "PERMISSIONS  ",
                style: TextStyle(color: Colors.white30, fontSize: 13),
              ),
            ),
            sheets(
              text: 'Permission manager',
            ),
            sheets(
              text: 'Special app access',
            ),
            sheets(
              text: 'Display over apps',
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, top: 13),
              child: Container(
                height: 90,
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
                            "Auto-start management",
                            style: TextStyle(color: Color(0xff40B927)),
                          ),
                        ),


                      ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class sheets extends StatelessWidget {
  const sheets({
    super.key, this.text,
  });
final text;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      trailing: Icon(
        Icons.arrow_forward_ios_outlined,
        color: Colors.white30,
        size: 14,
      ),
    );
  }
}
