import 'package:flutter/material.dart';

class Sound extends StatefulWidget {
  const Sound({Key? key}) : super(key: key);

  @override
  State<Sound> createState() => _SoundState();
}

class _SoundState extends State<Sound> {
  double value = 30;
  double value1 = 50;
  double value2 = 60;
  double value3 = 90;
  bool ischanged = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,
      backgroundColor: Colors.black,
      leading: IconButton(onPressed: () {
        Navigator.pop(context);
      }, icon: Icon(Icons.west_sharp, color: Colors.white,),),
      title: Text(
        "Sound & vibration", style: TextStyle(color: Colors.white,),),),
      backgroundColor: Colors.black26,
      body: SingleChildScrollView(physics: BouncingScrollPhysics(),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
        padding: const EdgeInsets.only(
          top: 9, left: 20,),
        child: Row(children: [
          Container(height: 150,
            width: 140,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: const EdgeInsets.only(left: 15, top: 12,),
                  child: Text(" DTS Sound", style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 17)),),
                Padding(padding: const EdgeInsets.only(left: 15, top: 11),
                  child: Text(
                    "Music", style: TextStyle(color: Colors.white54),),),
                Padding(padding: const EdgeInsets.only(left: 15, top: 48),
                  child: Icon(
                    Icons.headphones, color: Colors.white38, size: 23,),)
              ],),
            decoration: BoxDecoration(color: Colors.white30,
                borderRadius: BorderRadius.circular(12)),),
          Padding(padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Container(height: 70,
                width: 170,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: const EdgeInsets.only(left: 15, top: 12,),
                      child: Text("Do Not Disturb ", style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 17)),),
                    Padding(padding: const EdgeInsets.only(left: 15, top: 11),
                      child: Text("Off", style: TextStyle(
                          color: Colors.white54),),)
                  ],),
                decoration: BoxDecoration(color: Colors.white30,
                    borderRadius: BorderRadius.circular(12)),),
              SizedBox(height: 9,),
              Container(height: 70,
                width: 170,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: const EdgeInsets.only(left: 15, top: 12,),
                      child: Text("Haptic vibration", style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 17)),),
                    Padding(padding: const EdgeInsets.only(left: 15, top: 11),
                      child: Text("Open", style: TextStyle(
                          color: Colors.white54),),)
                  ],),
                decoration: BoxDecoration(color: Colors.orange,
                    borderRadius: BorderRadius.circular(12)),),
            ],),)
        ],),),
      Padding(padding: const EdgeInsets.only(right: 10, left: 20, top: 15),
        child: Container(width: 355, height: 1, color: Colors.white12,),),
      Padding(padding: const EdgeInsets.only(left: 23, top: 11),
        child: Column(crossAxisAlignment:  CrossAxisAlignment.start,
          children: [
          Text.rich(TextSpan(
              children: [
                TextSpan(text: "Media",
                   ),
                TextSpan(text: ("${value.round()}"),
                  )
              ]
          )),
          Text.rich(TextSpan(
              children: [
                TextSpan(text: "Alarm",
                   ),
                TextSpan(text: ("${value1.round()}"),
                  )
              ]
          )),
          Text.rich(TextSpan(
              children: [
                TextSpan(text: "Ringtones",
                   ),
                TextSpan(text:("${value2.round()}"),
                  )
              ]
          )),
          Text.rich(TextSpan(
              children: [
                TextSpan(text: "Notifications",
                   ),
                TextSpan(text:("${value3.round()}"),
                  )
              ]
          )),

        ],),),
      Padding(padding: const EdgeInsets.only(left: 20, top: 30),
        child: Text(
          "VOLUMES ", style: TextStyle(color: Colors.white30, fontSize: 13),),),
      SizedBox(height: 15,),
      Column(children: [
        slide(
          text: "Media",
          value: value,
          image: "assets/icons8-music-64.png",
          onChanged: (p0)
           {
             setState(() {
              value=p0;
                 });
                   },),
             SizedBox(
            height: 17,
                ),
              slide(
           text: "Alarm",
          value: value1,onChanged: (p0) {
             setState(() {
            value1=p0;
            });
             },
               image:"assets/icons8-alarm-clock-24.png"),
              SizedBox(
                height: 17,
                       ),
                slide(
            text: "Ringtones",
              value: value2,
             image: "assets/icons8-notification-50.png",
                    onChanged: (p0) {
               setState(() {
                value2=p0;
                });
                     },),
                   SizedBox(
              height: 17,
                ),
              slide(
                  text: "Notifications",
               value: value3,
           image:"assets/icons8-chat-bubble-50.png",
            onChanged: (p0) {
            setState(() {
              value3=p0;
               });
                },
              )],
                ),

    Padding(
    padding: const EdgeInsets.only(right: 12, left: 20, top: 15),
    child: Container(
    width: 355,
    height: 1,
    color: Colors.white12,
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 20, top: 40),
    child: Text(
    "RINGTONES ",
    style: TextStyle(color: Colors.white30, fontSize: 13),
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 19, right:10,top: 29),
    child:
    Row(
    children: [
    Text("SIM1 ringtone",
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w400
    )),
    Padding(
    padding: const EdgeInsets.only(left: 156),
    child: Text("Arpeggio",style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w400
    ),),
    ),
    SizedBox(width: 6,),
    Icon(Icons.arrow_forward_ios_outlined,
    size: 18,
    color: Colors.white38,)
    ],
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 19,top: 29,right: 18),
    child: Row(
    children: [
    Text("SIM2 ringtone",
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w400
    )),
    Padding(
    padding: const EdgeInsets.only(left: 120),
    child: Text("Random notes",style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w400
    ),),
    ),
    SizedBox(width: 6,),
    Icon(Icons.arrow_forward_ios_outlined,
    size: 18,
    color: Colors.white38,)
    ],
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 19,top: 29,right: 18),
    child: Row(
    children: [
    Text("Notification sound",
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w400
    )),
    Padding(
    padding: const EdgeInsets.only(left: 94),
    child: Text("Seventh cords",style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w400
    ),),
    ),
    SizedBox(width: 6,),
    Icon(Icons.arrow_forward_ios_outlined,
    size: 18,
    color: Colors.white38,)
    ],
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 19,top: 29,right: 18),
    child: Row(
    children: [
    Text("Alarm tones",
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w400
    )),
    Padding(
    padding: const EdgeInsets.only(left: 127),
    child: Text("Synth Arpeggio",style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w400
    ),),
    ),
    SizedBox(width: 6,),
    Icon(Icons.arrow_forward_ios_outlined,
    size: 18,
    color: Colors.white38,)
    ],
    ),
    ),
    SizedBox(
    height: 11,
    ),
    Padding(
    padding: const EdgeInsets.only(right: 12, left: 20, top: 15),
    child: Container(
    width: 355,
    height: 1,
    color: Colors.white12,
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 20, top: 40),
    child: Text(
    "PHONE CALLS ",
    style: TextStyle(color: Colors.white30, fontSize: 13),
    ),
    ),
    SizedBox(
    height: 11,
    ),
    Padding(
    padding: const EdgeInsets.only(top: 16),
    child: ListTile(
      title: Text("Increasing incoming ringtone",
      style: TextStyle(
      color: Colors.white, )),
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
    ),
    Padding(
    padding: const EdgeInsets.only(top: 18,right: 18,),
    child: ListTile(
    title: Text("Sound & vibration ",
    style: TextStyle(color: Colors.white)),
    subtitle: Text("Vibrations",
    style: TextStyle(fontSize: 13, color: Colors.white30)),
    trailing: Icon(
    Icons.arrow_forward_ios_outlined,
    color: Colors.white30,
    size: 14,
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(right: 18,),
    child: ListTile(
    title: Text("Vibrate for calls",
    style: TextStyle(color: Colors.white)),
    subtitle: Text("Vibrate first then ring gradually",
    style: TextStyle(fontSize: 13, color: Colors.white30)),
    trailing: Icon(
    Icons.arrow_forward_ios_outlined,
    color: Colors.white30,
    size: 14,
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(right: 18,),
    child: ListTile(
    title: Text("Advanced options",
    style: TextStyle(color: Colors.white)),
    trailing: Icon(
    Icons.arrow_forward_ios_outlined,
    color: Colors.white30,
    size: 14,
    ),
    ),
    ),
    ]
    ,
    )
    ,
    )
    ,
    );
  }
}


class slide extends StatefulWidget {
  slide(
      {Key? key, required this.text, required this.value, required this.image, this.onChanged,})
      : super(key: key);
  final String text;
  final String image;
  final void Function(double)? onChanged;
  double value;

  @override
  State<slide> createState() => _slideState();
}

class _slideState extends State<slide> {


  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: 5),
        child: Row(children: [
          Padding(padding: const EdgeInsets.only(left: 14,),
              child: Image(image: AssetImage(widget.image),
                color: Colors.white,
                height: 28,)),
          Column(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(widget.text,
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                SliderTheme(data: SliderThemeData(
                    trackHeight: 15, thumbShape: SliderComponentShape.noThumb),
                  child: SizedBox(width: 300,
                    child: Slider(
                      activeColor: Color(0xff40B927),

                      inactiveColor: Colors.white30,

                      value: widget.value,
                      min: 1,
                      max: 100,
                      label: widget.value.round().toString(),
                      onChanged:   widget.onChanged,),),)


              ]),
        ],));
  }
}
