import 'package:flutter/material.dart';
import 'package:settings/drawer/bottom_sheet.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Storage extends StatelessWidget {
  const Storage({Key? key}) : super(key: key);

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
          "Storage",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircularPercentIndicator(radius: 64,
            backgroundColor: Colors.white10.withOpacity(0.2),
            animation: true,
            lineWidth: 20,
            animationDuration: 5000,
            circularStrokeCap: CircularStrokeCap.round,
            percent: 0.56,
            progressColor: Colors.yellow,
            center: const Text('56%',
             style: TextStyle(
               fontSize: 25,
               color: Colors.white
             ),),),
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28, left: 58),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Used:",
                      style: TextStyle(
                        color: Colors.white38,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "42.43 GB",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 98),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total:",
                      style: TextStyle(
                        color: Colors.white38,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "64.00 GB",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23, top: 22, right: 22),
            child: Container(
              width: 317,
              height: 270,
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 21, top: 12),
                child: Column(
                  children: [
                    draft(
                        color: Colors.blue,
                        color2: Colors.green,
                        text: "Images",
                        text2: "Videos",
                        no1: "132 MB",
                        no2: "15.18 GB"),
                    SizedBox(height: 15),
                    draft(
                        color: Colors.deepPurpleAccent,
                        color2: Colors.purple,
                        text: "Audio",
                        text2: "Documents",
                        no1: "3.15 GB",
                        no2: "12.30 MB"),
                    SizedBox(height: 15),
                    draft(
                        color: Colors.orange,
                        color2: Colors.amber,
                        text: "Apps",
                        text2: "Other",
                        no1: "9.13 GB",
                        no2: "1.77 MB"),
                    SizedBox(height: 15),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 13, left: 14),
                          child: CircleAvatar(
                            backgroundColor: Colors.white60,
                            radius: 4,
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Text(
                                "System",
                                style: TextStyle(
                                    color: Colors.white38, fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, left: 11),
                              child: Text("12.37 GB"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 40, top: 66),
            child: Container(
              width: 340,
              height: 33,
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Bottomsheet(),
                  );
                },
                child: Center(
                  child: Text(
                    "CLEAN UP",
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xff40B927),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ],
      ),
    );
  }
}

class draft extends StatelessWidget {
  const draft({
    super.key,
    this.text,
    this.color,
    this.text2,
    this.no1,
    this.no2,
    this.color2,
  });

  final text;
  final color;
  final color2;
  final text2;
  final no1;
  final no2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13, left: 14),
              child: CircleAvatar(
                backgroundColor: color,
                radius: 4,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 12),
              child: Text(
                text,
                style: TextStyle(color: Colors.white38, fontSize: 12),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 13, left: 123),
              child: CircleAvatar(
                backgroundColor: color2,
                radius: 4,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 12),
              child: Text(
                text2,
                style: TextStyle(color: Colors.white38, fontSize: 12),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 33),
              child: Text(no1),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 130),
              child: Text(no2),
            ),
          ],
        )
      ],
    );
  }
}
