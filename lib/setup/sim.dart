import 'package:flutter/material.dart';
enum SimState{ONE,TWO}
enum PlusState{ONE,TWO}
enum TrioState{ONE,TWO,NONE}
class Sim extends StatefulWidget {
  const Sim({Key? key}) : super(key: key);

  @override
  State<Sim> createState() => _SimState();
}

class _SimState extends State<Sim> {
  SimState sim = SimState.ONE;
  PlusState plus = PlusState.ONE;
  TrioState trio = TrioState.ONE;

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
          "SIM & network settings ",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(physics: BouncingScrollPhysics(

      ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Container(
                  width: 155,
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("MTN NG",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                          SizedBox(
                            height: 10,
                          ),
                          Text("MTN NG",
                              style: TextStyle(
                                color: Colors.white24,
                              )),
                          SizedBox(
                            height: 23,
                          ),
                          Image(image: AssetImage("assets/sim-card (1).png"),
                            height: 25,
                            color: Colors.white70,)
                        ]),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(14)),
                ),
                SizedBox(width: 8),
                Container(
                  width: 155,
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Airtel NG",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Airtel NG",
                              style: TextStyle(
                                color: Colors.white24,
                              )),
                          SizedBox(
                            height: 23,
                          ),
                       Image(image: AssetImage("assets/sim-card.png"),
                       height: 25,
                       color: Colors.white70,)
                        ]),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(14)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Mobile data", style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 9),
          Padding(
            padding: const EdgeInsets.only(left: 23, right: 23),
            child: Container(
              height: 38,
              width: 330,
              child:
              Row(children: [

                GestureDetector(onTap: () {
                  setState(() {
                    sim=SimState.ONE;
                  });
                },
                  child: Container(
                    height: 38,
                      width: 157,
                      decoration:
                      BoxDecoration(
                          color:sim==SimState.ONE? Colors.green:Colors.transparent,
                      borderRadius: BorderRadius.circular(11)),
                      child:
                      Image(image: AssetImage("assets/sim-card (1).png"),
                        color:Colors.white70,
                        height: 10,
                      )
                  ),
                ),

                GestureDetector(onTap: () {
                  setState(() {
                    sim=SimState.TWO;
                  });
                },
                  child: Container(
                      height: 38,
                      width: 157,
                      decoration:
                      BoxDecoration(
                          color:sim==SimState.TWO? Colors.green:Colors.transparent,
                          borderRadius: BorderRadius.circular(11)),
                      child:
                      Image(image: AssetImage("assets/sim-card.png",),
                        color:Colors.white70,fit:BoxFit.contain ,
                        )
                  ))
              ]),
              decoration: BoxDecoration(
                  color: Colors.white24, borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("SMS", style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 9),
          Padding(
            padding: const EdgeInsets.only(left: 23, right: 23),
            child: Container(
              height: 38,
              width: 330,
              child:
              Row(children: [

                GestureDetector(onTap: () {
                  setState(() {
                    plus=PlusState.ONE;
                  });
                },
                  child: Container(
                      height: 38,
                      width: 157,
                      decoration:
                      BoxDecoration(
                          color:plus==PlusState.ONE? Colors.green:Colors.transparent,
                          borderRadius: BorderRadius.circular(11)),
                      child:
                      Image(image: AssetImage("assets/sim-card (1).png"),
                        color:Colors.white70,
                        height: 10,
                      )
                  ),
                ),

                GestureDetector(onTap: () {
                  setState(() {
                    plus=PlusState.TWO;
                  });
                },
                    child: Container(
                        height: 38,
                        width: 157,
                        decoration:
                        BoxDecoration(
                            color:plus==PlusState.TWO? Colors.green:Colors.transparent,
                            borderRadius: BorderRadius.circular(11)),
                        child:
                        Image(image: AssetImage("assets/sim-card.png",),
                          color:Colors.white70,fit:BoxFit.contain ,
                        )
                    ))
              ]),
              decoration: BoxDecoration(
                  color: Colors.white24, borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Calls", style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 9),
          Padding(
            padding: const EdgeInsets.only(left: 23, right: 23),
            child: Container(
              height: 38,
              width: 330,
              child:
              Row(children: [

                GestureDetector(onTap: () {
                  setState(() {
                    trio=TrioState.ONE;
                  });
                },
                  child: Container(
                      height: 38,
                      width: 104,
                      decoration:
                      BoxDecoration(
                          color:trio==TrioState.ONE? Colors.green:Colors.transparent,
                          borderRadius: BorderRadius.circular(11)),
                      child:
                      Image(image: AssetImage("assets/sim-card (1).png"),
                        color:Colors.white70,
                        height: 10,
                      )
                  ),
                ),

                GestureDetector(onTap: () {
                  setState(() {
                    trio=TrioState.TWO;
                  });
                },
                    child: Container(
                        height: 38,
                        width: 105,
                        decoration:
                        BoxDecoration(
                            color:trio==TrioState.TWO? Colors.green:Colors.transparent,
                            borderRadius: BorderRadius.circular(11)),
                        child:
                        Image(image: AssetImage("assets/sim-card.png",),
                          color:Colors.white70,fit:BoxFit.contain ,
                        )
                    )),
                GestureDetector(onTap: () {
                  setState(() {
                    trio=TrioState.NONE;
                  });
                },
                    child: Container(
                        height: 38,
                        width: 105,
                        decoration:
                        BoxDecoration(
                            color:trio==TrioState.NONE? Colors.green:Colors.transparent,
                            borderRadius: BorderRadius.circular(11)),
                        child:
                        Image(image: AssetImage("assets/sim-card.png",),
                          color:Colors.white70,fit:BoxFit.contain ,
                        )
                    )),
              ]),
              decoration: BoxDecoration(
                  color: Colors.white24, borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(height: 32),
          ListTile(
              title: Text(
            "Data & security",
            style: TextStyle(color: Colors.white),
          ),
          trailing:   Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.white30,
            size: 14,
          )),
          ListTile(
              title: Text(
            "Intellignt network optimization",
            style: TextStyle(color: Colors.white),
          ),
          trailing:   Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.white30,
            size: 14,
          )),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 18, top: 13),
            child: Container(
              height: 117,
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
                          "Call settings",
                          style: TextStyle(color: Color(0xff40B927)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          "SMS Settings",
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
