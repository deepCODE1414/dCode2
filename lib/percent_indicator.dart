import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Xyz2 extends StatefulWidget {
  const Xyz2({Key? key}) : super(key: key);

  @override
  State<Xyz2> createState() => _Xyz2State();
}

class _Xyz2State extends State<Xyz2> {
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
          child: Scaffold(
            backgroundColor: Colors.black,
              body: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15,top: 5),
                        child: IconButton(
                          icon: Icon(
                            Icons.pages_sharp,
                            color:Color(0xff828282),
                            size: 25,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),// icon
                      Container(
                        width:275,
                        height: 34,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xff121213),
                        ),
                          child: Padding(
                          padding: const EdgeInsets.only(left: 10),
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
                        margin: EdgeInsets.only(top: 15, bottom: 5),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15,top: 4),
                        child: IconButton(
                          icon: Icon(
                            Icons.notifications_on,
                            color: Color(0xff828282),
                            size: 24,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      // search-bar
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical
                      ,
                      child: Column(
                        children: [
                          Container(
                            height: 36,
                            color: Color(0xff121213),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.add,
                                      color:Colors.white,
                                      size: 28,
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Text('Create',style:
                                  TextStyle(fontWeight: FontWeight.w600,fontSize: 14,
                                  color: Colors.white),)
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(right: 228,top:
                            10),
                            child: Text('Live Dissscusions',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),),
                          ),
                          Divider(
                            color: Color(0xff191919),
                            height: 6,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20,left: 18),
                                child: CircularPercentIndicator(
                                  radius: 35.0,
                                  lineWidth: 8.0,
                                  percent:0.8,
                                  progressColor: Colors.red,
                                  center: new Icon(
                                    Icons.person_pin,
                                    size: 40.0,
                                    color: Color(0xff828282),

                                  ),
                                ),
                              ),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom:10,left: 10,top:10),
                                    child: Text(
                                      "Emmy Awards 2021",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: "Public Sans",
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "Charles :",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  )
                                ],
                              )

                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20,left: 18),
                                child: CircularPercentIndicator(
                                  radius: 35.0,
                                  lineWidth: 8.0,
                                  percent:0.8,
                                  progressColor: Colors.red,
                                  center: new Icon(
                                    Icons.person_pin,
                                    size: 40.0,
                                    color: Color(0xff828282),

                                  ),
                                ),
                              ),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom:10,left: 10,top:10),
                                    child: Text(
                                      "Newton's Law",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: "Public Sans",
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "Maddy : Agreed",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  )
                                ],
                              )

                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Divider(
                            color: Color(0xff191919),
                            height: 6,
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 250,top:
                                8,bottom: 2),
                                child: Text('Channels',style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),),
                              ),
                              Divider(
                                color: Color(0xff191919),
                                height: 7,
                              ),
                            ],
                          ),

                          
                          Container(
                            height: 250,
                            child: SingleChildScrollView(
                              child: Container(

                                color: Colors.black,
                                child:Column(
                                  children: [
                                    for(int i=0; i<13 ;i++)
                                      Container(
                                        margin: EdgeInsets.only(top: 8),
                                        width: 380,
                                        height:71,
                                        decoration: BoxDecoration(
                                            color: Color(0xff191919),
                                            borderRadius: BorderRadius.circular(8.0)
                                        ),

                                        child: Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(left:
                                              10),
                                              width: 55,
                                              height: 55,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage("images/profile.jpg"),
                                                      fit: BoxFit.cover
                                                  ),
                                                  shape: BoxShape.circle,
                                                  color: Colors.red
                                              ),

                                            ),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(bottom:10,left: 10,top:12),
                                                  child: Text(
                                                    "Department of Fashion",
                                                    style: TextStyle(
                                                      color: Color(0xffc7c7cc),
                                                      fontSize: 12,
                                                      fontFamily: "Public Sans",
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ),

                                                Padding(
                                                  padding: const EdgeInsets.only(left: 12),
                                                  child: Text(
                                                    "2K Members",
                                                    style: TextStyle(
                                                      color: Color(0xff949498),
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 115),
                                              width: 52,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(100),
                                                color: Color(0xff2c2c2e),
                                              ),
                                              child:
                                              IconButton(
                                                icon: Padding(
                                                  padding: const EdgeInsets.only(bottom: 8),
                                                  child: Icon(
                                                    Icons.message,
                                                    color:Color(0xff828282),
                                                    size: 20,
                                                  ),
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                              ),

                                            )




                                          ],
                                        ),
                                      ),

                                  ],
                                ),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Divider(
                                color: Color(0xff191919),
                                height: 6,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 330,top:
                                8),
                                child: Text('Chats',style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),),
                              ),
                            ],
                          ),


                          Container(
                            height: 250,
                            child: SingleChildScrollView(
                              child: Container(
                                child:
                                Column(
                                  children: [
                                    for(int i=0; i<6 ;i++)

                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(left:
                                                20,top: 20),
                                                width: 40,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage("images/profile.jpg"),
                                                        fit: BoxFit.cover
                                                    ),
                                                    shape: BoxShape.circle,
                                                    color: Colors.red
                                                ),

                                              ),
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(bottom:10,left: 10,top:20),
                                                    child: Text(
                                                      "Tiffany Wood",
                                                      style: TextStyle(
                                                        color:Color(0xfff3f6fb),
                                                        fontSize: 14,
                                                        fontFamily: "Public Sans",
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                  ),

                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 12),
                                                    child: Text(
                                                      "618 Little Stead, Fresno, MA 7277",
                                                      style: TextStyle(
                                                        color: Color(0xff949498),
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 100,top: 30),
                                                child: Text(
                                                  "10m ago",
                                                  style: TextStyle(
                                                    color: Color(0xff4f4f4f),
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              )






                                            ],
                                          ),
                                        ],
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          )



                        ],
                      ),
                    ),
                  ),






                ],

              )));
  }
}
