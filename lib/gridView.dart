import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:deep/profile.dart';

class Xyz3 extends StatefulWidget {
  const Xyz3({Key? key}) : super(key: key);

  @override
  State<Xyz3> createState() => _Xyz3State();
}

class _Xyz3State extends State<Xyz3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15,top: 5),
                        child: IconButton(
                          icon: Icon(
                            Icons.chevron_left,
                            color:Colors.white,
                            size: 25,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),// icon
                      Text('Interests',style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: "Public Sans",
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.28,
                      ),)
                      // search-bar
                    ],
                  ),
                  Text(
                    "You have to select atleast 3 field of interest",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: "Public Sans",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.28,
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: GridView(

                      shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                          childAspectRatio: 2.0
                        ),
                      children: [
                        Container(
                          // alignment: Alignment.center,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Color(0xff2c2c2e), width: 1,
                          ),
                            color: Color(0xff00325e),
                        ),
                          margin: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                                  ImageIcon(
                                    AssetImage("images/policy.png"),
                                    color: Colors.blue,
                                    size: 24,
                            ),
                              Text(
                                "Public Policy",
                                style: TextStyle(
                                  color: Color(0xff2094fa),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.28,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(0xff2c2c2e), width: 1,
                            ),
                            color: Color(0xff615c00),
                          ),
                          margin: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ImageIcon(
                                AssetImage("images/socialimpact.png"),
                                color: Colors.yellow,
                                size: 24,
                              ),
                              Text(
                                "Social \nImpact/Cause",
                                style: TextStyle(
                                  color: Color(0xfff5ec4e),
                                  fontSize: 14,
                                  fontFamily: "Public Sans",
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.28,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(0xff2c2c2e), width: 1,
                            ),
                            color: Color(0xff6e3b00),
                          ),
                          margin: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ImageIcon(
                                AssetImage("images/political.png"),
                                color: Colors.orange,
                                size: 24,
                              ),
                              Text(
                                "Political/Social \nAdvocacy",
                                style: TextStyle(
                                  color: Color(0xffff9500),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.28,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(0xff2c2c2e), width: 1,
                            ),
                            color: Color(0xff191919),
                          ),
                          margin: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ImageIcon(
                                AssetImage("images/movements.png"),
                                color: Colors.white,
                                size: 24,
                              ),
                              Text(
                                "Movement",
                                style: TextStyle(
                                  color: Color(0xe0ffffff),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.28,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(0xff2c2c2e), width: 1,
                            ),
                            color: Color(0xff007eda),
                          ),
                          //
                          margin: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ImageIcon(
                                AssetImage("images/healthcare.png"),
                                color: Colors.white,
                                size: 24,
                              ),
                              Text(
                                "Healthcare",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xffbfe4ff),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.28,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(0xff2c2c2e), width: 1,
                            ),
                            color: Color(0xff7d0000),
                          ),
                          margin: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ImageIcon(
                                AssetImage("images/news.png"),
                                color: Color(0xffff0100),
                                size: 24,
                              ),
                              Text(
                                "News",
                                style: TextStyle(
                                  color: Color(0xffff0100),
                                  fontSize: 14,
                                  fontFamily: "Public Sans",
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.28,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(0xff2c2c2e), width: 1,
                            ),
                            color: Color(0xff49c889),
                          ),
                          margin: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ImageIcon(
                                AssetImage("images/journalism.png"),
                                color: Color(0xff005830),
                                size: 24,
                              ),
                              Text(
                                "Journalism",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff005830),
                                  fontSize: 14,
                                  fontFamily: "Public Sans",
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.28,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(0xff2c2c2e), width: 1,
                            ),
                            color: Color(0xffaeb4bf),
                          ),
                          margin: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ImageIcon(
                                AssetImage("images/technology.png"),
                                color: Color(0xff79797a),
                                size: 24,
                              ),
                              Text(
                                "Technology",
                                style: TextStyle(
                                  color: Color(0xff79797a),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.28,
                                ),
                              )
                            ],
                          ),

                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(0xff2c2c2e), width: 1,
                            ),
                            color: Color(0xff570632),
                          ),
                          margin: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ImageIcon(
                                AssetImage("images/entertainment.png"),
                                color: Color(0xffff0089),
                                size: 24,
                              ),
                              Text(
                                "Entertainment",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xffff0089),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.28,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(0xff2c2c2e), width: 1,
                            ),
                            color: Color(0xff026e6e),
                          ),
                          margin: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ImageIcon(
                                AssetImage("images/travel.png"),
                                color: Color(0xff00efff),
                                size: 24,
                              ),
                              Text(
                                "Lifestyle & \nTravel",
                                style: TextStyle(
                                  color: Color(0xff00efff),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.28,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(0xff2c2c2e), width: 1,
                            ),
                            color: Color(0xff633700),
                          ),
                           margin: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ImageIcon(
                                AssetImage("images/utilities.png"),
                                color: Color(0xffac8e68),
                                size: 24,
                              ),
                              Text(
                                "Utilities",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xffac8e68),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.28,
                                ),
                              )


                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(0xff2c2c2e), width: 1,
                            ),
                            color: Color(0xff294a00),
                          ),
                          margin: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ImageIcon(
                                AssetImage("images/nature.png"),
                                color: Color(0xff8cff00),
                                size: 24,
                              ),
                              Text(
                                "Nature",
                                style: TextStyle(
                                  color: Color(0xff8cff00),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.28,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(0xff2c2c2e), width: 1,
                            ),
                            color: Color(0xff4f000e),
                          ),
                          margin: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset('images/business.svg'),
                              Text(
                                "Business",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xffe83c5c),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.28,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(0xff2c2c2e), width: 1,
                            ),
                              color: Color(0xff7e2500),
                          ),
                          margin: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset('images/sports.svg'),
                              Text(
                                "Sports",
                                style: TextStyle(
                                  color: Color(0xffff530a),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.28,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(0xff2c2c2e), width: 1,
                            ),
                            color: Color(0xff3d3d3d),
                          ),
                          margin: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset('images/science.svg'),
                              Text(
                                "Science",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xfffdf8f8),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.28,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(0xff2c2c2e), width: 1,
                            ),
                            color: Color(0xff0d3f26),
                          ),
                          margin: EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset('images/finance.svg'),
                              Text(
                                "Finances",
                                style: TextStyle(
                                  color: Color(0xff00ff8b),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.28,
                                ),
                              )
                            ],
                          ),
                        ),




                      ],
                    ),
                  )

                ],

              ),
            )));
  }
}
