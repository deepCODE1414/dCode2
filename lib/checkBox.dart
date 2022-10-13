import 'package:flutter/material.dart';
// import 'package:deep/profile.dart';

class Check extends StatefulWidget {
  const Check({Key? key}) : super(key: key);

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
String selected = "";
List checkListItems =[

  {
    "id": 0,
    "value": false,
    "title": "Male",
  },
  {
    "id":1,
    "value":false,
    "title":"Female",
  },
  {
    "id":2,
    "value":false,
    "title":"Other",
  },
  {
    "id": 3,
    "value":false,
    "title":"Prefer not to say"
  },
];

  @override
  Widget build(BuildContext context) {
    return 
      SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
              body:
              Column(
                children:
                    List<CheckboxListTile>.generate(
                        checkListItems.length, (index) =>
                        CheckboxListTile(
                          activeColor: Colors.green,
                            title: Text(
                              checkListItems[index]["title"],
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                            ),
                            value: checkListItems[index]["value"], onChanged: (value){
                              setState(() {
                                for (var element in checkListItems) {
                                  element["value"] = false;
                                }
                                checkListItems[index]["value"]=value;
                                selected =
                                '${checkListItems[index]["id"]}, ' "${checkListItems[index]["title"]}, "
                                    "${checkListItems[index]["value"]}";
                                // print(selected);
                              });
                        }),),


              ),
          ));
  }
}
