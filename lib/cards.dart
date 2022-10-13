import 'package:deep/multiple_cards.dart';
import 'package:flutter/material.dart';
// import 'my_project2.dart';

class Xyz extends StatefulWidget {
  const Xyz({Key? key}) : super(key: key);

  @override
  State<Xyz> createState() => _XyzState();
}

class _XyzState extends State<Xyz> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:
        Scaffold(
          backgroundColor: Colors.black,
            body:
            Column(
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
                    ),// icon
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
                        margin: EdgeInsets.only(top: 15, bottom: 5, right: 3),
                      ),
                    ),// search-bar
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                       margin: EdgeInsets.only(right: 100,top: 10,left: 20),
                      width: 143,
                      height:39 ,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xff3a3a3c),
                      ),
                      child:
                      Row(
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: Icon(
                              Icons.place,
                              color: Colors.white,
                              size:28,
                            ),
                          ),// icon
                          Text(
                            "Sector 49, Gurgoan",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: "Public Sans",
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(

                      margin:EdgeInsets.only(top:10,right: 10),
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

                    ),                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 22,top: 15,
                              ),
                              child: Text(
                                "Trending Network",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: "Public Sans",
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.36,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 22,top: 15,right: 10),
                              child: Text( "Browse",
                                  style: TextStyle(
                                  color: Color(0xccacacac),
                                  fontSize: 12,
                                  fontFamily: "Public Sans",
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.24,),),
                            ),
                            ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for(int i=0; i<4 ;i++)
                              Container(
                                margin: EdgeInsets.only(left: 20,top: 15),
                                width: 159,
                                height: 215,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/card1.png"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Color(0xff2c2c2e), width: 1, ),
                                ),
                                child: Stack(
                                  children: [

                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5,left: 4),
                                          child: Text('33k',style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w600),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 110,top: 4),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 15,
                                          ),
                                        ),

                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 140,left: 6),
                                      width: 145,
                                      height: 66,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(color: Color(0xff2c2c2e), width: 1, ),
                                        color: Color(0xff191919),
                                      ),
                                      child:
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right:100,top: 6),
                                            child: Text(
                                              "Black",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: "Public Sans",
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 0.24,
                                              ),
                                            ),
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(top:5,left: 5),
                                            child: Text(
                                              "Some random text about the community, constitution,\nerad... ",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 9,
                                                letterSpacing: 0.18,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20,top: 15),
                                width: 159,
                                height: 215,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/card1.png"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Color(0xff2c2c2e), width: 1, ),
                                ),
                                child: Stack(
                                  children: [

                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5,left: 4),
                                          child: Text('996k',style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w600),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 110,top: 4),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 15,
                                          ),
                                        ),

                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 140,left: 6),
                                      width: 145,
                                      height: 66,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(color: Color(0xff2c2c2e), width: 1, ),
                                        color: Color(0xff191919),
                                      ),
                                      child:
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right:100,top: 6),
                                            child: Text(
                                              "Crip",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: "Public Sans",
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 0.24,
                                              ),
                                            ),
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(top:5,left: 5),
                                            child: Text(
                                              "Some random text about the community, constitution,\nerad... ",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 9,
                                                letterSpacing: 0.18,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                    ),
                                  ],
                                ),
                              ),


                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 22,top: 15,
                              ),
                              child: Text(
                                "Nearby Places",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: "Public Sans",
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.36,
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 22,top: 15,right: 10),
                              child: Text( "Browse",
                                style: TextStyle(
                                  color: Color(0xccacacac),
                                  fontSize: 12,
                                  fontFamily: "Public Sans",
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.24,),),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            for(int i=0; i<4 ;i++)
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              // width: 380,
                              height: 66,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Color(0xff2c2c2e), width: 1, ),
                                color: Color(0xff191919),
                              ),
                              child:
                              Row(
                                mainAxisAlignment:MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                   // margin: EdgeInsets.only(top: 1,left: 15,right: 10),
                                    width: 66,
                                    height: 52,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("images/card1.png"),
                                          fit: BoxFit.cover
                                      ),

                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(color: Color(0xff8f8f8f), width:1, ),

                                    ),

                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Text(
                                          "Sector 29",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontFamily: "Public Sans",
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.24,
                                          ),
                                        ),
                                      ),
                                      Container(
                                       margin: EdgeInsets.only(top: 5),
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
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 4,right: 5),
                                        child: Text(
                                          "7.1 KM",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 9,
                                            letterSpacing: 0.18,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 18),
                                        width: 26,
                                        height: 26,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Color(0xff2c2c2e),
                                        ),
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      )
                                    ],
                                  )

                                ],
                              ),
                            ),


                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 22,top: 15,
                              ),
                              child: Text(
                                "Nearby People",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: "Public Sans",
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.36,
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 22,top: 15,right: 10),
                              child: Text( "Browse",
                                style: TextStyle(
                                  color: Color(0xccacacac),
                                  fontSize: 12,
                                  fontFamily: "Public Sans",
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.24,),),
                            ),
                          ],
                        ),
                        // Container(
                        //   margin:EdgeInsets.only(left: 10,top:5),
                        //   child: Stack(
                        //     children: [
                        //       Align(
                        //         alignment: AlignmentDirectional.topStart,
                        //         child: Row(
                        //           mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //           children: [
                        //             Container(
                        //                 width: 67,
                        //                 height: 67,
                        //                 decoration: BoxDecoration(
                        //                   shape: BoxShape.circle,
                        //                   border: Border.all(color: Color(0xffacacac), width: 1, ),
                        //                 ),
                        //               ),
                        //             Container(
                        //               width: 67,
                        //               height: 67,
                        //               decoration: BoxDecoration(
                        //                 shape: BoxShape.circle,
                        //                 border: Border.all(color: Color(0xffacacac), width: 1, ),
                        //               ),
                        //             ),
                        //             Container(
                        //               width: 67,
                        //               height: 67,
                        //               decoration: BoxDecoration(
                        //                 shape: BoxShape.circle,
                        //                 border: Border.all(color: Color(0xffacacac), width: 1, ),
                        //               ),
                        //             ),
                        //
                        //           ],
                        //         ),
                        //
                        //       ),
                        //       Row(
                        //         children: [
                        //           Container(
                        //             width: 67,
                        //             height: 67,
                        //             decoration: BoxDecoration(
                        //               shape: BoxShape.circle,
                        //               border: Border.all(color: Color(0xffacacac), width: 1, ),
                        //             ),
                        //           ),
                        //           Container(
                        //             width: 67,
                        //             height: 67,
                        //             decoration: BoxDecoration(
                        //               shape: BoxShape.circle,
                        //               border: Border.all(color: Color(0xffacacac), width: 1, ),
                        //             ),
                        //           ),
                        //           Container(
                        //             width: 67,
                        //             height: 67,
                        //             decoration: BoxDecoration(
                        //               shape: BoxShape.circle,
                        //               border: Border.all(color: Color(0xffacacac), width: 1, ),
                        //             ),
                        //           ),
                        //
                        //         ],
                        //       ),
                        //
                        //       // Positioned(
                        //       //   left:50,
                        //       //   child: Container(
                        //       //     width: 67,
                        //       //     height: 67,
                        //       //     decoration: BoxDecoration(
                        //       //       shape: BoxShape.circle,
                        //       //       border: Border.all(color: Color(0xffacacac), width: 1, ),
                        //       //     ),
                        //       //   ),
                        //       // ),
                        //       // Container(
                        //       //   width: 67,
                        //       //   height: 67,
                        //       //   decoration: BoxDecoration(
                        //       //     shape: BoxShape.circle,
                        //       //     border: Border.all(color: Color(0xffacacac), width: 1, ),
                        //       //   ),
                        //       // ),
                        //       // Container(
                        //       //   width: 67,
                        //       //   height: 67,
                        //       //   decoration: BoxDecoration(
                        //       //     shape: BoxShape.circle,
                        //       //     border: Border.all(color: Color(0xffacacac), width: 1, ),
                        //       //   ),
                        //       // ),
                        //       // Container(
                        //       //   width: 67,
                        //       //   height: 67,
                        //       //   decoration: BoxDecoration(
                        //       //     shape: BoxShape.circle,
                        //       //     border: Border.all(color: Color(0xffacacac), width: 1, ),
                        //       //   ),
                        //       // ),
                        //     ],
                        //   ),
                        // ),
                        Cbd(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 22,top: 15,
                              ),
                              child: Text(
                                "Upcoming Events",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: "Public Sans",
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.36,
                                ),
                              ),
                            ),


                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for(int i=0; i<4 ;i++)
                                Container(
                                  margin: EdgeInsets.only(left: 20,top: 15),
                                  width: 159,
                                  height: 262.35,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("images/card1.png"),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Color(0xff2c2c2e), width: 1, ),
                                  ),
                                   child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 8,left: 125),
                                          width: 26,
                                          height: 26,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: Color(0xff2c2c2e),
                                          ),
                                          child: Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 210),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                               Padding(
                                                 padding: const EdgeInsets.only(left: 4),
                                                 child: Text(
                                                  "Sat, 25 Dec",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 9,
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 0.18,
                                                  ),
                                              ),
                                               ),
                                               Padding(
                                                 padding: EdgeInsets.only(right: 4),
                                                 child: Text(
                                                  " 12.6 KM",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 9,
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 0.18,
                                                  ),
                                              ),
                                               ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )

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
                return Xyz1();
    }));
    },
      backgroundColor: Colors.green,
      child: const Icon(Icons.arrow_forward,color: Colors.black,),
    ),
        )
    );
  }
}
class Cbd extends StatefulWidget {
  const Cbd({Key? key}) : super(key: key);

  @override
  State<Cbd> createState() => _CbdState();
}

class _CbdState extends State<Cbd> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 67,
          margin: EdgeInsets.only(left: 28, right: 28,top: 20),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Stack(
                  children: [
                      for (var i = 0;
                      i <
                          6;
                      i++)
                             Container(
                              width: 67,
                              height: 67,
                              margin: EdgeInsets.only(
                              left: (i * 50)
                                  .toDouble()),
                          decoration: BoxDecoration(
                              shape:
                              BoxShape.circle,
                              // color: Colors.red,
                              border: Border.all(color: Color(0xffacacac), width: 2, ),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"))),
                        )
                        //     : Container(
                        //   width: 67,
                        //   height: 67,
                        //   margin: EdgeInsets.only(
                        //       left: (i * 50)
                        //           .toDouble()),
                        //   decoration: BoxDecoration(
                        //     shape: BoxShape.circle,
                        //     color: Colors.grey,
                        //   ),
                        //   child: Center(
                        //       child: Text(
                        //         "${nearbypeopleresponse.data[i].username[0].toUpperCase()}",
                        //         textScaleFactor:
                        //         textScaleFactor,
                        //       )),
                        // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}



