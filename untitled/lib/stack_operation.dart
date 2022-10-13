import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:untitled/second_screen.dart';

class Xyz extends StatefulWidget {
  const Xyz({Key? key}) : super(key: key);

  @override
  State<Xyz> createState() => _XyzState();
}

class _XyzState extends State<Xyz> {

  @override

  List<String> items = ['New','One','Two','Three','Four','Five'];
  String? selectedItem = 'New';

  get floatingActionButton => null;




  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 50,
                  color: Colors.black,
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 40,
                    width: 200,
                    color: Colors.black,
                    child: Container(
                      height: 33,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xff3a3a3c),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            suffixIcon: Icon(Icons.search, color: Colors.white),
                          ),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      margin: EdgeInsets.only(top: 2, bottom: 5, right: 3),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 78.95,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                        fit: BoxFit.cover
                    ),

                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin: EdgeInsets.only(left: 2, right: 2),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(334),
                    border: Border.all(
                      color: Color(0xffff0089),
                      width: 2,
                    ),
                  ),
                  margin: EdgeInsets.only(top: 60, left: 20),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0,top: 2.0),
                      child: Text(
                        "#/Jumanji",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),

                      ),
                    ),
                    Row(
                      children: [
                        Container(

                          width: 25,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                            border: Border.all(color: Colors.green)
                          ),
                          
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications), color: Colors.green,padding: EdgeInsets.all(3),
                          iconSize: 12,
                          ),
                          margin: EdgeInsets.only(right: 8),

                        ),

                       Container(
                         width: 65,
                         height: 20,

                         decoration: BoxDecoration(
                           shape: BoxShape.rectangle,
                           borderRadius: BorderRadius.all(Radius.circular(6)),
                           border: Border.all(color: Colors.pink),

                           color: Colors.black,

                         ),
                         child: OutlinedButton(
                                onPressed: (){},
                              style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                              ),
                              child: const Text("Save",
                              style: TextStyle(color:  Color(0xffff0089)),),
                              ),
                         margin: EdgeInsets.only(right: 12),
                       ),
                      ],
                    ),

                  ],


                ),
              ],

            ),
            Container(

              child: Text(
                  '58,80,030 Members . 67,580 Active Menbers',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                  color: Color(0xff8e8e93),
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.20,

                ),
              ),
              margin: EdgeInsets.only(left: 10,top: 8,bottom: 5,),
            ),
            Container(
              width: 300,
              child: Text(
                'Jumanji 3 Falcon Jewel Battle is the entertaining dice rolling game based on the movie The Next Level.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.20,
                ),
              ),
              margin: EdgeInsets.only(left: 10),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: DropdownButton<String>(
                    dropdownColor: Colors.black,
                    value: selectedItem,
                    items:items

                      .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Container(
                        child: Text(item,style:TextStyle(fontSize: 12,
                            color: Colors.white,fontWeight:FontWeight.w600)),
                      ),
                       ))
                        .toList(),
                        onChanged: (item) => setState(() => selectedItem = item),

                    ),
                ),
                 Container(
                  child:Icon(
                    Icons.access_time,
                    color: Colors.white,
                    size: 20,
                  ),
                  margin: EdgeInsets.only(left: 260,top: 10),
                ),
                  ]


                ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50,top: 5 ),
                          child: Text(
                            "Live discussion  ",
                            style: TextStyle(
                              color: Color(0xfffa1d1d),
                              fontSize: 14,
                              fontFamily: "Public Sans",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 150,
                              height: 30,

                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Color(0xff570632).withOpacity(1),
                                borderRadius: BorderRadius.all(Radius.circular(6),
                                ),
                              ),

                              child: OutlinedButton(
                                onPressed: (){},
                                style: ButtonStyle(
                                ),
                                child: const Text("Entertainment",
                                  style: TextStyle(color:  Color(0xffff0089),
                                    fontWeight: FontWeight.w900,),
                                ),
                              ),
                              margin: EdgeInsets.only(right: 2,left: 40,top: 4),
                            ),
                          ],
                        ),
                        Container(
                          child:Icon(
                            Icons.more_horiz_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                          margin: EdgeInsets.only(top: 5,right: 2),
                        ),


                      ],

                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(334),
                                  border: Border.all(
                                    color: Color(0xffff0089),
                                    width: 1,
                                  ),
                                ),
                                margin: EdgeInsets.only( left: 10),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                child: Text(
                                  "Francia.2H",
                                  style: TextStyle(
                                    color: Color(0xff8e8e93),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                margin: EdgeInsets.only(right: 100,left: 10),
                              ),



                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: 155,
                          height: 18,

                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            border: Border.all(color: Colors.black),
                            color: Colors.white24,

                          ),

                          child: Padding(
                            padding: const EdgeInsets.only(top: 1),
                            child: Text(
                              "1134 Dewy Embers Parade",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Color(0xff8e8e93),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.20,

                              ),
                            ),
                          ),
                          margin: EdgeInsets.only(left: 53),

                        ),

                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 300,
                          child: Text(
                            'EVERY CHARACTER HAS UNIQUE BONUSES: \nMuch like in the movie, Falcon Jewel Battle Game features characters with their own unique bonuses!\n',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.20,

                            ),
                          ),
                          margin: EdgeInsets.only(left: 54,top: 4),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        
                        Container(
                          width: 70,
                          height: 25,
                          margin: EdgeInsets.only(left: 50),
                          decoration: BoxDecoration(
                            color: Color(0xff570632).withOpacity(1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(6),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 6,left: 12,right: 4),
                            child: Text(
                              "Jumanji",
                              style: TextStyle(
                                color: Color(0xffff0089),
                                fontSize: 12,
                                fontWeight:FontWeight.w500,


                              ),

                            ),
                          ),

                        ),


                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 205,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                              fit: BoxFit.cover,
                            ),

                            borderRadius: BorderRadius.circular(8),
                          ),
                          margin: EdgeInsets.only(left: 45, right: 2,top: 5),
                        ),
                        Container(
                          height: 205,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKMM43IDqseBSgyJCxsbUzgpr-4P_KxCDcEg&usqp=CAU"),
                              fit: BoxFit.cover,
                            ),

                            borderRadius: BorderRadius.circular(8),
                          ),
                          margin: EdgeInsets.only(left: 45, right: 2,top: 5),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 1,left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 17,
                            height: 22,
                            child:Icon(
                              Icons.swap_horiz,
                              color: Color(0xff7f7f7f),
                              size: 20,
                            ),
                            margin: EdgeInsets.only(top: 5,left: 45),
                          ),
                          Container(
                            width: 17,
                            height: 17,
                            child:Icon(
                              Icons.location_searching,
                              color:  Color(0xff7f7f7f),
                              size: 18,

                            ),
                            margin: EdgeInsets.only(top: 5,left: 20),
                          ),
                          Container(
                            child:Row(
                              children: [
                                Icon(
                                  Icons.navigation,
                                  color: Colors.green,
                                  size: 20,
                                ),
                                Text(
                                'VOTE',
                                  style: TextStyle(
                                    color:  Color(0xff7f7f7f),
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Icon(
                                  Icons.navigation_rounded,
                                  color: Colors.red,
                                  size: 20,
                                ),

                              ],
                            ),
                            margin: EdgeInsets.only(right: 4,left: 30),
                          ),

                          Container(
                            child:Icon(
                              Icons.mode_comment,
                              color:  Color(0xff7f7f7f),
                              size: 16,
                            ),
                            //margin: EdgeInsets.only(top: 5,right: 22),
                            margin: EdgeInsets.only(left: 15,top: 5),
                          ),
                          Container(
                            child:Icon(
                              Icons.share,
                              color:  Color(0xff7f7f7f),
                              size: 20,
                            ),
                            margin: EdgeInsets.only(top: 5,right: 20,left:16 ),
                          ),
                        ],
                      ),
                    ),


                  ],
                ),

              ),

            ),



           ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context){
             return SecondScreen();
           }));
          },
          backgroundColor: Color(0xffff0089),
          child: const Icon(Icons.arrow_forward,color: Colors.white,),
        ),
      ),
    );
  }
}
