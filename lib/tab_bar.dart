import 'package:deep/cards.dart';
import 'package:flutter/material.dart';
// import 'my_project1.dart';

class Abc extends StatefulWidget {
  const Abc({Key? key}) : super(key: key);

  @override
  State<Abc> createState() => _AbcState();
}

class _AbcState extends State<Abc> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
           backgroundColor: Colors.black,
            title:
               Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 15,right: 10),
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
                     
                   ),
                   Expanded(
                     child:
                     Container(
                       width:314,
                       height: 34,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(8),
                         color: Color(0xff121213),
                       ),
                       child: Padding(
                         padding: const EdgeInsets.only(left: 8.0),
                         child: TextField(
                           decoration: InputDecoration(
                             hintText: 'Search',
                             hintStyle: TextStyle(
                               color: Color(0xff828282),
                             ),
                             suffixIcon: Icon(Icons.search, color:Color(0xff828282)),
                           ),
                           style: TextStyle(
                             color: Colors.white,
                           ),
                         ),
                       ),
                       margin: EdgeInsets.only(top: 2, bottom: 5, right: 3),
                     ),
                   ),
                 ],
               ),


             ],

           ),
            bottom:
            TabBar(tabs: [
              Tab(child: Text("Activity",style: TextStyle(fontSize: 14),)),
              Tab(child: Text("Delegation",style: TextStyle(fontSize: 14))),
              Tab(child: Text("Request",style: TextStyle(fontSize: 14))),
              Tab(child: Text("Alerts",style: TextStyle(fontSize: 14))),
            ]),
          ),
          body: TabBarView(
              children:<Widget> [
            Container(
              child: Container(
                height: 222,
                color: Colors.black,
              ),
            ),
            Container(
              height: 222,
              color: Colors.black,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12,bottom: 8,top: 4),
                    child: Text('New',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),),
                  ),
                  Center(
                    child: Container(
                      width: 390,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color:  Color(0xff121213),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10,left: 250),
                            width: 125,
                            height: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                                color:Color(0xff00335f),
                            ),

                            child:
                            Column(
                              children: [
                                Row(
                                  children: [

                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,top: 4),
                                      child: Icon(
                                        Icons.library_books,
                                        color:Color(0xff2094fa),
                                        size: 10,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,top: 4),
                                      child: Text('Public policy',style: TextStyle(color: Color(0xff2094fa), letterSpacing: 0.28),),
                                    )
                                  ],
                                ),
                              ],
                            ),


                          ),
                          Row(

                            children: [
                              Container(

                                margin:EdgeInsets.only(left: 12,bottom: 20),
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/profile.jpg"),
                                  fit: BoxFit.cover
                                ),
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Color(0xff8f8f8f), width:1, ),
                                ),

                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 12,right: 80,left: 8),
                                        child: Text(
                                          "Nora Barnett · 25 min ago",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontFamily: "Public Sans",
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.24,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 12,left: 80),
                                        child: Icon(
                                          Icons.more_horiz,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 110),
                                        child: Text(
                                          "reported alert at 1387 Victoria Road,\nEdinburgh RF6",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff828282),
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.24,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),



                            ],
                          ),
                          Divider(
                            height: 30,
                            thickness: 1,
                            color: Color(0xff2c2c2e),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 1,left: 15,right: 10),
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/profile.jpg"),
                                      fit: BoxFit.cover
                                  ),

                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Color(0xff8f8f8f), width:1, ),

                                ),

                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 16),
                                width: 242,
                                child: Text(
                                  'The Effects of Cutting Down Trees on the Ecosystem',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,

                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.24,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      margin: EdgeInsets.only(
                                           top:10,left: 30, right: 2),
                                      width: 162,
                                      height: 39,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(52),
                                        color: Color(0xff2c2c2e),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'View Spot',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                            fontWeight: FontWeight.w600,),
                                        ),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        top:10,  right: 30, left: 2),
                                      width: 162,
                                      height: 39,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(52),
                                        color: Color(0xff2c2c2e),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'View on Maps',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                            fontWeight: FontWeight.w600,),
                                        ),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              )
                            ],
                          )


                        ],
                      ),
                    ),
                  )

                ],
              ),


            ),
            Container(
              child: Container(
                height: 222,
                color: Colors.black,
              ),
            ),
            Container(
              child: Container(
                height: 222,
                color: Colors.black,
              ),
            ),
          ]),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Xyz();
              }));
            },
            backgroundColor:Colors.green,
            child: const Icon(Icons.arrow_forward,color: Colors.black,),
          ),
        ),
      ),
    );
  }
}
