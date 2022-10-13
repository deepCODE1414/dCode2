import 'package:deep/graph.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {



  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {

  final List<String> studentNames = <String>['Addy', 'Aish', 'Ayan', 'Ben', 'Bob', 'Charlie', 'Cook', 'Carline','Deep','Diana','Daniel','Dain','Emule','Emberg','Elizabeth','Earth'];
  final List<int> msgCount = <int>[11, 22, 33, 44, 55, 66, 77, 88,99,11,22,33,44,55,66,77];

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.black,
          body: ListView.builder(
              padding: const EdgeInsets.all(8),
               itemCount: studentNames.length,
               itemBuilder: (BuildContext context, int index) {

                return Container(
                  height: 50,
                  margin: EdgeInsets.all(2),
                  // color: msgCount[index]>=10? Colors.blue[400]:
                  // msgCount[index]>3? Colors.blue[100]: Colors.grey,
                  child: Center(
                 child: Container(

                   height: 50,
                   decoration: BoxDecoration(
                     color: Colors.yellowAccent,
                     borderRadius: BorderRadius.circular(15),
                     border: Border.all(color: Colors.white, width: 1, ),
                   ),
                   child:
                   Center(
                     child: Text('${studentNames[index]} (${msgCount[index]})',
                     style: TextStyle(fontSize: 18,
                         fontWeight:FontWeight.w600,color: Colors.black),
                      ),
                   ),
                 ),
                ),
                );
              }
          )
      );
  }
}
