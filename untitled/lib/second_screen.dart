import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled/third_screen.dart';
import 'package:im_stepper/stepper.dart';


class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  int activeIndex = 1;
  int currentIndex = 1;
  bool isSwitched = false;
  Widget build(BuildContext context) {
    //final height = MediaQuery.of(context).size.height;

    List<Widget> items = [
      Container(
        margin: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGHib3NaVxk5t3XjnGCu2eudW8JBR9ZfRFEA&usqp=CAU"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4ckFKK2oIQbnHR-Mp44orcL6QLzdnE82bug&usqp=CAU"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdR5VvBlKohOTUad0YUcb6U_1tY54pVvpNRw&usqp=CAU"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAjZmyRIyjlN2UH6WXVgN4gM_brHGcknYJIA&usqp=CAU"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  color: Color(0xffff0089),
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
                  child: Container(
                    child: Center(
                      child: Text(
                        'SLIDER',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    width: 40,
                    height: 40,
                    color: Color(0xffff0089),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        activeIndex = index;
                        currentIndex = index;
                      });
                    },
                    viewportFraction: 1,
                    // scrollDirection: Axis.vertical,
                    // height: height;
                  ),
                  items: items,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 180, top: 20),
                  child: AnimatedSmoothIndicator(
                    activeIndex: activeIndex,
                    count: items.length,
                    effect: WormEffect(
                      dotColor: Colors.black,
                      dotHeight: 8,
                      dotWidth: 8,
                      activeDotColor: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: 27,
                  height: 27,
                  decoration: BoxDecoration(
                    color: Colors.white10.withOpacity(0.50),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  margin: EdgeInsets.only(left: 370, top: 26),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 7, top: 3, bottom: 4),
                    child: Text(
                      "${currentIndex + 1}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text(
                    'Show Modal',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 10),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.black,
                        builder: (BuildContext context) {
                          return Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: Color(0xff121213),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  width: 71,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(31),
                                    color: Color(0xff3a3a3c),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // margin: EdgeInsets.only(top: 15,left: 70,right: 20),
                                          width: 45,
                                          height: 45,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xff2c2c2e),
                                          ),

                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.notifications_off),
                                            color: Colors.red,
                                            padding: EdgeInsets.all(3),
                                            iconSize: 30,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Off",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          // margin: EdgeInsets.only(top: 15,right: 40,left:40),
                                          width: 45,
                                          height: 45,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xff2c2c2e),
                                          ),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                                Icons.notifications_off_sharp),
                                            color: Colors.yellow,
                                            padding: EdgeInsets.all(3),
                                            iconSize: 30,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Low",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          // margin: EdgeInsets.only(top: 15,left: 20,right: 70),
                                          width: 45,
                                          height: 45,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xff2c2c2e),
                                          ),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                                Icons.notifications_active),
                                            color: Colors.green,
                                            padding: EdgeInsets.all(3),
                                            iconSize: 30,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Frequent",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
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
                                                top: 20, left: 30, right: 2),
                                            width: 130,
                                            height: 39,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(52),
                                              color: Color(0xff2c2c2e),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Cancel',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14),
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
                                                top: 20, right: 30, left: 2),
                                            width: 130,
                                            height: 39,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(52),
                                              color: Color(0xff2c2c2e),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Done',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14),
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
                          );
                        });
                  },
                ),
                ElevatedButton(
                    child: Text(
                      "Show Alert Dialog",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            backgroundColor: Colors.transparent,
                            child: Container(
                              width: 258,
                              height: 143,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                  color: Color(0xff2c2c2e),
                                  width: 1,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xad000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                                color: Color(0xff191919),

                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text(
                                      "Email Sent",
                                      style: TextStyle(
                                        color: Color(0xffc7c7cc),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10,top: 20),
                                    child: Text(
                                      "We sent an email to \naaditya.shanker70@gmail.com\nwith a link ro reset your password",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xccffffff),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 80,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(70),
                                      border: Border.all(
                                        color: Color(0xff2c2c2e),
                                        width: 1,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x3f000000),
                                          blurRadius: 4,
                                          offset: Offset(0, 4),
                                        ),
                                      ],
                                      color: Color(0xff111112),
                                    ),
                                    child: GestureDetector(
                                      onTap: (){
                                        Navigator.pop(context);
                                      },
                                      child: Center(
                                        child: Text(
                                          'Ok',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color:Color(0xff58b0ff),
                                              fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                        

                                  ),
                                    ),
                                  ),
                                    ],
                              ),

                            ),
                          );
                        },
                      );
                    }),
                Switch(value: isSwitched, onChanged: (value){
                  setState(() {
                    isSwitched = value;
                    print(isSwitched);
                  });
                },
                  activeTrackColor: Colors.blue,
                  activeColor: Colors.greenAccent,
                ),

              ],
            ),



          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ThirdScreen();
            }));
          },
          backgroundColor: Color(0xffff0089),
          child: const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
