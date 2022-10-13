import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:deep/profile.dart';

class Xyz4 extends StatefulWidget {
  const Xyz4({Key? key}) : super(key: key);

  @override
  State<Xyz4> createState() => _Xyz4State();
}

class _Xyz4State extends State<Xyz4> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body:
      Column(
        children: [
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 15, right: 10, top: 8),
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
              Expanded(
                child: Container(
                  width: 314,
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
                        suffixIcon:
                            Icon(Icons.search, color: Color(0xff828282)),
                      ),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  margin: EdgeInsets.only(top: 15, bottom: 5, right: 3),
                ),
              ), // search-bar
            ],
          ),
          
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 100,
                    color: Color(0xff121213),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "David Hamilton  ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    )),
                                TextSpan(
                                  text: "· @davidhamilton",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xb2c7c7cc),
                                  ),
                                ),
                              ])),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 170, top: 10),
                              child: Text(
                                "Artist",
                                style: TextStyle(
                                  color: Color(0xb2c7c7cc),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.24,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, right: 105),
                              child: RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "Connections:",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xb2c7c7cc),
                                    )),
                                TextSpan(
                                    text: "1021",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ))
                              ])),
                            )
                          ],
                        ),
                        Container(
                          // margin: EdgeInsets.only(left: 130,),
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/profile.jpg"),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle,
                              color: Colors.red),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 33,
                                left: 28,
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 15,
                                  height: 15,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.blue,
                                  ),
                                  child: GestureDetector(
                                    child: Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                      size: 8,
                                    ),
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context){
                                          return Profile();
                                        }));
                                      },
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 190,
                    color: Color(0xff121213),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircularPercentIndicator(
                          radius: 85.0,
                          lineWidth: 20.0,
                          percent: 0.8,
                          startAngle: 1.87,
                          linearGradient: LinearGradient(
                              colors: [Colors.green, Colors.yellow]),
                          circularStrokeCap: CircularStrokeCap.round,
                          backgroundColor: Colors.green,
                          center: new Text(
                            "64 m",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                        CircularPercentIndicator(
                          radius: 85.0,
                          lineWidth: 20.0,
                          percent: 0.8,
                          backgroundColor: Colors.red,
                          linearGradient:
                          LinearGradient(colors: [Colors.red, Colors.blue]),
                          circularStrokeCap: CircularStrokeCap.round,
                          center: new Text(
                            "9000",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  TabBar(
                    controller: _tabController,
                    tabs: [
                      Tab(child: Text("Spots",style: TextStyle(fontSize: 14),)),
                      Tab(child: Text("Respots",style: TextStyle(fontSize: 14))),
                      Tab(child: Text("About",style: TextStyle(fontSize: 14))),
                      Tab(child: Text("Delegate",style: TextStyle(fontSize: 14))),
                    ],),
                  Container(
                    height: 300,
                    child: TabBarView(
                        controller: _tabController,
                        children: [
                          Container(
                            color: Colors.black,
                          ),
                          Container(
                            color: Colors.black,
                          ),
                          Container(
                            color: Colors.black,
                          ),
                          Container(
                            color: Colors.black,
                          ),

                        ]),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    ));
  }
}
