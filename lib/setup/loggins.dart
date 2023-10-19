import 'package:flutter/material.dart';
class Loggins extends StatelessWidget {
  const Loggins({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
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
              "Infinix ID",
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.contact_support_outlined,
                    color: Colors.white,
                  ))
            ]),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                  height: 66,
                  width: 69,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/img-removebg-preview.png"),
                          fit: BoxFit.fill))),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Log in to Infinix ID",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w500),
                  )),
              SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon:
                    Icon(Icons.perm_identity_outlined, color: Colors.white),
                    hintText: ("Phone/Email"),
                    hintStyle: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.key, color: Colors.white),
                    hintText: ("Verification code"),
                    hintStyle: TextStyle(color: Colors.white),
                    suffixText: ("Get code"),
                    suffixStyle: TextStyle(color: Colors.green)),
              ),
              SizedBox(height: 120),
              Container(
                width: 190,
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login/Register",
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 80,right: 80),
                child: Container(height: 34,width: 300,
                  child: TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.white,

                      decoration: InputDecoration(
                          contentPadding:
                          EdgeInsetsDirectional.all(6.0),
                          hintText: ("Login with password"),
                          filled: true,
                          fillColor: Colors.white12,
                          hintStyle: TextStyle(color: Colors.green),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0)))),
                ),
              ),
            ],
          ),
        ));
  }
}
