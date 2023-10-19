import 'package:flutter/material.dart';
enum WriterState{JUST,ALWAY,}
class Bottomsheet extends StatefulWidget {
  const Bottomsheet({Key? key}) : super(key: key);

  @override
  State<Bottomsheet> createState() => _BottomsheetState();
}

class _BottomsheetState extends State<Bottomsheet> {
bool Color = false;
WriterState writer = WriterState.JUST;
  @override
  Widget build(BuildContext context) {
    return Container(
     height: 186,
      decoration: BoxDecoration(color: Colors.black12,
          borderRadius:BorderRadius.only(
              topLeft: Radius.circular(11),
              topRight: Radius.circular(11)
          ) ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 19,left: 29),
            child: Text("Open with",
            style: TextStyle(fontSize: 17,
            fontWeight: FontWeight.w500)),
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30,),
                    child: Container(
                      height: 50,
                      width: 51,
                      decoration:BoxDecoration(
                        color: Colors.green,
                          borderRadius: BorderRadius.circular(6)),
                      child: Icon(Icons.shield,
                      size: 33),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22,top: 6),
                    child: Text("Phone Master",
                      style: TextStyle(
                          fontSize: 11
                      ),),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 9),
                    child: Container(
                      height: 50,
                      width: 51,
                      decoration:BoxDecoration(
                        color: Colors.green,
                          borderRadius: BorderRadius.circular(6)),
                      child: Icon(Icons.shield,
                      size: 33),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28,top: 3),
                    child: Text("Phone Master",
                      style: TextStyle(
                          fontSize: 10
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 23,top: 3),
                    child: Text("Storage Clean",
                      style: TextStyle(
                          fontSize: 9,
                        color: Colors.white54
                      ),),
                  ),
                ],
              ),
            ],
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  writer=WriterState.JUST;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 60,top: 16),
                child: Text("JUST ONCE",
                  style: TextStyle(
                      color:writer==WriterState.JUST? Colors.green:Colors.white38,

                      fontSize: 17
                  ),),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  writer=WriterState.ALWAY;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 90,top: 16),
                child: Text("ALWAYS",
                style: TextStyle(
                    color:writer==WriterState.ALWAY? Colors.green:Colors.white30,
                  fontSize: 17
                ),),
              ),
            ),
          ],)

        ],
      ),
    );
  }
}
