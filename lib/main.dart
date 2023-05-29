// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,

          /*SafeArea widget does the job of pushing the content from the user section which is top and bottom*/
          body: SafeArea(
            child: Column(children: [
              SizedBox(height: 50),
              // 1st column
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  /*Image of 1st row*/
                  Image(
                      height: 50,
                      width: 50,
                      image: AssetImage('images/logo.png')),
                  SizedBox(width: 8),

                  /*Text of 1st row */
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Maintenance",
                        style: TextStyle(
                            fontFamily: 'RubikMedium',
                            fontSize: 24,
                            color: Color(0xff2D3142)),
                      ),
                      Text(
                        "Box",
                        style: TextStyle(
                            fontFamily: 'RubikMedium',
                            fontSize: 24,
                            color: Color(0xfff9703b)),
                      ),
                    ],
                  )
                ],
              ),
              //2nd column
              SizedBox(
                height: 40,
              ),
              // login code
              Center(
                  child: Text(
                "Log in",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'RubikMedium',

                  /*0xff converts the color code to hex color code*/
                  color: Color(0xff2D3142),
                ),
              )),

              // Third column
              SizedBox(
                height: 8,
              ),
              Center(
                child: Text(
                  "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'RubikRegular',

                    /*0xff converts the color code to hex color code*/
                    color: Color(0xff4c5988),
                  ),
                ),
              ),

              /*gap between dummy text and text*/
              SizedBox(
                height: 30,
              ),

              /*Email field*/
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Color(0xff4c5988),
                    ),
                    hintText: 'Email',
                    /*Sets the bgc of text field*/
                    fillColor: Color(0xffF8F9FA),
                    filled: true,

                    /*for the border of fields*/
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(
                            0xffE4E7EB,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(20)),

                    // enable border implement all the prop set in focused border
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(
                            0xffE4E7EB,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),

              SizedBox(height: 6),
              /*Password field*/
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: TextFormField(
                  decoration: InputDecoration(
                    /*Icons*/
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xff4c5988),
                    ),
                    hintText: 'Password',
                    /*Sets the bgc of text field*/
                    fillColor: Color(0xffF8F9FA),
                    filled: true,
                    suffixIcon: Icon(Icons.visibility_off_outlined),

                    /*for the border of fields*/
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(
                            0xffE4E7EB,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(
                            0xffE4E7EB,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 25, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "Forgot Password ?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 15,
                        fontFamily: 'RubikRegular',

                        /*0xff converts the color code to hex color code*/
                        color: Color(0xff4c5988),
                      ),
                    ),
                  ],
                ),
              ),

              /*Gap between button and text field*/
              SizedBox(
                height: 300,
              ),
              /*Sign in button container*/
              Container(
                /*container decoration*/
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xfff9703b),
                ),
                height: 40,
                width: 270,
                child: Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontFamily: 'RubikRegular',
                      color: Colors.white,
                      fontSize: 23,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Don't have account ?",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'RubikRegular',

                      /*0xff converts the color code to hex color code*/
                      color: Color(0xff4c5988),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Sign up',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'RubikMedium',

                      /*0xff converts the color code to hex color code*/
                      color: Color(0xfff9703b),
                    ),
                  ),
                ],
              )
            ]),
          ),
        ));
  }
}
