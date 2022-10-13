import 'package:flutter/material.dart';
import 'package:deep/profile.dart';
class Rdbuttons extends StatefulWidget {
  const Rdbuttons({Key? key}) : super(key: key);

  @override
  State<Rdbuttons> createState() => _RdbuttonsState();
}

class _RdbuttonsState extends State<Rdbuttons> {
  String?gender;
  @override
  Widget build(BuildContext context) {
    return 
      SafeArea(
          child: Scaffold(
               backgroundColor: Colors.black,
              body:
              Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Padding(
                          padding:
                          const EdgeInsets.only(top: 10),
                          child: IconButton(
                            icon: Icon(
                              Icons.chevron_left,
                              color: Colors.white,
                              size: 25,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ), // icon
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text("What is your Gender?",style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                          ),),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.blue,
                          height: 50,
                          child: RadioListTile(
                            activeColor: Colors.red,
                            title: Text("Male",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                            value: "male",
                            groupValue: gender,
                            onChanged: (value){
                              setState(() {
                                gender = value.toString();
                              });
                            },
                          ),
                        ),


                        Container(
                          color: Colors.purpleAccent,
                          height: 50,
                          child: RadioListTile(
                            activeColor: Colors.red,
                            title: Text("Female",style: TextStyle(color: Colors.black,fontWeight:
                            FontWeight.bold)),
                            value: "female",
                            groupValue: gender,
                            onChanged: (value){
                              setState(() {
                                gender = value.toString();
                              });
                            },
                          ),
                        ),
                        Container(
                          color: Colors.greenAccent,
                          height: 50,
                          child: RadioListTile(
                            activeColor: Colors.red,
                            title: Text("Other",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            value: "other",
                            groupValue: gender,
                            onChanged: (value){
                              setState(() {
                                gender = value.toString();
                              });
                            },
                          ),
                        ),

                        Container(
                          color: Colors.white,
                          height: 50,
                          child: RadioListTile(
                            activeColor: Colors.red,
                            title: Text("Prefer not to say",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                            value: "Prefer not to say",
                            groupValue: gender,
                            onChanged: (value){
                              setState(() {
                                gender = value.toString();
                              });
                            },
                          ),
                        ),
                      ],
                    )
                  ],

                ),
              )));
  }
}
