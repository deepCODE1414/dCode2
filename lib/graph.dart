import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:percent_indicator/percent_indicator.dart';


const KTextStyle =  TextStyle(
  color: Colors.white,
  fontSize: 13,
  fontFamily: "Public Sans",
  fontWeight: FontWeight.w700,
);
const KNumStyle =  TextStyle(
  color: Colors.blue,
  fontSize: 13,
  fontFamily: "Public Sans",
  fontWeight: FontWeight.bold,
);
class ChartData{
  ChartData(this.x,this.y, this.y1, this.y2);
  final int x;
  final double y;
  final double y1;
  final double y2;

}
class GraphExample extends StatefulWidget {

  const GraphExample({Key? key,}) : super(key: key);

  @override
  State<GraphExample> createState() => _GraphExampleState();
}

class _GraphExampleState extends State<GraphExample> {
   bool graphbutton = false;

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = <ChartData>[
      ChartData(2010, 10.53, 3.3, 5.6,),
      ChartData(2011, 9.5, 5.4,7.2,),
      ChartData(2012, 10, 2.65,6.6,),
      ChartData(2013, 9.4, 2.62,4.4,),
      ChartData(2014, 5.8, 1.99,3.23,),
      ChartData(2015, 4.9, 1.44,2.3,),
      ChartData(2016, 4.5, 2.9,4.45,),
      ChartData(2017, 3.6, 1.56,5.56),
      ChartData(2018, 3.43, 2.1,6.88),
    ];
    return
      SafeArea(
          child:
          Scaffold(
            backgroundColor: Colors.black,
              body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 5),
                        child: IconButton(
                          icon: Icon(
                            Icons.chevron_left,
                            color:Colors.white,
                            size: 35,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      // icon
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 20,top: 5),
                             child: Text(
                               "Settings Dashboard",
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 18,
                                 fontFamily: "Public Sans",
                                 fontWeight: FontWeight.w900,
                               ),
                             ),
                           ),
                           Padding(
                            padding: const EdgeInsets.only(left: 20,top: 5),
                            child: Text(
                             "Good Morning,",
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 14,
                               fontFamily: "Public Sans",
                               fontWeight: FontWeight.w200,
                             ),
                            ),
                          ),
                           Padding(
                            padding: const EdgeInsets.only(left:
                            20,top: 60),
                            child: Text(
                              "Aaditya Shankar Majumder",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: "Public Sans",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )

                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20,bottom: 40),
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/profile.jpg"),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle,
                         ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 60,
                              left: 60,
                              child: Container(
                                alignment: Alignment.center,
                                width: 22,
                                height: 22,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                                child: GestureDetector(
                                  child: Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                  onTap: (){

                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 380,
                            height: 164,
                            // decoration: BoxDecoration(
                            //   border: Border.all(color: Color(0xff2c2c2e), width: 2,),
                            //   boxShadow: [
                            //     BoxShadow(
                            //       color: Color(0xad000000),
                            //       blurRadius: 4,
                            //       offset: Offset(0, 4),
                            //     ),
                            //   ],
                            // ),
                            child: Center(
                                child: graphbutton? SfCartesianChart(
                                  plotAreaBorderWidth: 0.4,

                                  primaryYAxis: NumericAxis(
                                    isVisible: false,
                                      majorGridLines: MajorGridLines(
                                          width: 0.5,
                                          color: Colors.white54,
                                          dashArray: <double>[5,5]
                                      ),
                                      minorGridLines: MinorGridLines(
                                          width: 0.5,
                                          color: Colors.white54,
                                          dashArray: <double>[5,5]
                                      ),
                                      minorTicksPerInterval:8
                                  ),
                                  primaryXAxis: NumericAxis(isVisible: false),

                                  series:<ChartSeries>[
                                    SplineAreaSeries<ChartData, int>(

                                      borderWidth: 3,
                                      borderColor: Colors.purple,
                                      gradient:  LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xffea31fd),Color(0x7f7f3a44)], ),
                                        dataSource: chartData,
                                        xValueMapper: (ChartData data, _) => data.x,
                                        yValueMapper: (ChartData data,_)=>data.y),
                                    SplineAreaSeries<ChartData, int>(
                                        borderWidth: 3,
                                        borderColor: Colors.blue,
                                        gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xff0075ff),Color(0x7f7f3a44)], ),
                                        dataSource: chartData,
                                        xValueMapper: (ChartData data, _) => data.x,
                                        yValueMapper: (ChartData data,_)=>data.y2),
                                    SplineAreaSeries<ChartData, int>(
                                        borderWidth: 3,
                                        borderColor: Colors.pink,
                                        gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xffff008a), Color(0x00ff0089)], ),
                                        dataSource: chartData,
                                        xValueMapper: (ChartData data, _) => data.x,
                                        yValueMapper: (ChartData data,_)=>data.y1),

                                  ],
                                ) : Container(color: Colors.black,height: 164,width: 333,margin: EdgeInsets.only(right: 30),
                                     child: Container(
                                       alignment: Alignment.centerLeft,
                                       child: Column(
                                         children: [
                                           Row(
                                             children: [
                                               Container(
                                                 child: Stack(children: [

                                                   Container(
                                                     margin: EdgeInsets.only(left: 28,right: 28,bottom: 28,top: 28),
                                                     width: 89,
                                                     height: 89,

                                                     child: CircularPercentIndicator(
                                                       backgroundColor: Colors.transparent,
                                                       lineWidth: 6.0,
                                                       percent:0.5,
                                                       reverse: true,
                                                         radius: 30.0,
                                                         circularStrokeCap: CircularStrokeCap.round,
                                                         progressColor: Color(0xffea31fd),

                                                     ),
                                                   ),
                                                   Container(
                                                     margin: EdgeInsets.only(top: 15,bottom: 15,left: 15,right: 15),
                                                     width: 115.48,
                                                     height: 115.48,
                                                     child: CircularPercentIndicator(
                                                       backgroundColor: Colors.transparent,
                                                       lineWidth: 6.0,
                                                       percent:0.9,
                                                         reverse: true,
                                                         radius: 45.0,
                                                         circularStrokeCap: CircularStrokeCap.round,
                                                         progressColor: Color(0xffff0089),

                                                     ),
                                                   ),

                                                   Container(
                                                     margin: EdgeInsets.only(),
                                                     height: 144,
                                                     width: 144,
                                                     child: CircularPercentIndicator(
                                                       backgroundColor: Colors.transparent,
                                                       lineWidth: 6.0,
                                                       reverse: true,
                                                       percent:0.6,
                                                       radius: 60.0,
                                                         circularStrokeCap: CircularStrokeCap.round,
                                                        progressColor:Color(0xff0075ff),



                                                     ),
                                                   ),
                                                 ]),
                                               ),
                                               Column(
                                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                 crossAxisAlignment: CrossAxisAlignment.center,
                                                 children: [
                                                   Container(
                                                     margin: EdgeInsets.only(top: 30),
                                                     width: 14,
                                                     height: 14,
                                                     decoration: BoxDecoration(
                                                       shape: BoxShape.circle,
                                                       color: Color(0xff0075ff),
                                                     ),
                                                   ),
                                                   Container(
                                                     width: 14,
                                                     height: 14,
                                                     decoration: BoxDecoration(
                                                       shape: BoxShape.circle,
                                                       color: Color(0xffff0089),
                                                     ),
                                                   ),
                                                   Container(
                                                     margin: EdgeInsets.only(bottom: 30),
                                                     width: 14,
                                                     height: 14,
                                                     decoration: BoxDecoration(
                                                       shape: BoxShape.circle,
                                                       color: Color(0xffff0089),
                                                     ),
                                                   ),
                                                 ],
                                               ),
                                               Column(
                                                 mainAxisAlignment: MainAxisAlignment.start,
                                                 crossAxisAlignment: CrossAxisAlignment.center,
                                                 children: [
                                                   Padding(
                                                     padding: const EdgeInsets.only(top: 30),
                                                     child: Text(
                                                       "Points Earned",
                                                       style: TextStyle(
                                                         color: Colors.white,
                                                         fontSize: 12,
                                                         fontFamily: "Public Sans",
                                                         fontWeight: FontWeight.w700,
                                                       ),
                                                     ),
                                                   ),
                                                   Text(
                                                     "Area’s Explored",
                                                     style: TextStyle(
                                                       color: Colors.white,
                                                       fontSize: 12,
                                                       fontFamily: "Public Sans",
                                                       fontWeight: FontWeight.w700,
                                                     ),
                                                   ),
                                                   Padding(
                                                     padding: const EdgeInsets.only(bottom: 30,left: 10),
                                                     child: Text(
                                                       "Connections & Growth",
                                                       style: TextStyle(
                                                         color: Colors.white,
                                                         fontSize: 12,
                                                         fontFamily: "Public Sans",
                                                         fontWeight: FontWeight.w700,
                                                       ),
                                                     ),
                                                   ),

                                                 ],
                                               ),
                                             ],
                                           ),
                                           Row(
                                             mainAxisAlignment: MainAxisAlignment.start,
                                             crossAxisAlignment: CrossAxisAlignment.center,
                                             children: [
                                               Row(
                                                 children: [
                                                   Container(
                                                     width: 6,
                                                     height: 6,
                                                     decoration: BoxDecoration(
                                                       shape: BoxShape.circle,
                                                       color: Color(0xff0075ff),
                                                     ),
                                                   ),
                                                   Padding(
                                                     padding: const EdgeInsets.only(left:
                                                     5),
                                                     child: Text(
                                                       "Points Earned",
                                                       textAlign: TextAlign.center,
                                                       style: TextStyle(
                                                         color: Colors.white,
                                                         fontSize: 9,
                                                         fontFamily: "Public Sans",
                                                         fontWeight: FontWeight.w700,
                                                       ),
                                                     ),
                                                   ),
                                                 ],
                                               ),
                                               Row(
                                                 children: [
                                                   Container(
                                                     width: 6,
                                                     height:  6,
                                                     decoration: BoxDecoration(
                                                       shape: BoxShape.circle,
                                                       color: Color(0xffff0089),
                                                     ),
                                                   ),
                                                   Padding(
                                                     padding: const EdgeInsets.only(left: 5),
                                                     child: Text(
                                                       "Points Earned",
                                                       textAlign: TextAlign.center,
                                                       style: TextStyle(
                                                         color: Colors.white,
                                                         fontSize: 9,
                                                         fontFamily: "Public Sans",
                                                         fontWeight: FontWeight.w700,
                                                       ),
                                                     ),
                                                   ),
                                                 ],
                                               ),
                                               Row(
                                                 children: [
                                                   Container(
                                                     width: 6,
                                                     height: 6,
                                                     decoration: BoxDecoration(
                                                       shape: BoxShape.circle,
                                                       color: Color(0xffea31fd),
                                                     ),
                                                   ),

                                                   Padding(
                                                     padding: const EdgeInsets.only(left: 5),
                                                     child: Text(
                                                       "Points Earned",
                                                       textAlign: TextAlign.center,
                                                       style: TextStyle(
                                                         color: Colors.white,
                                                         fontSize: 9,
                                                         fontFamily: "Public Sans",
                                                         fontWeight: FontWeight.w700,
                                                       ),
                                                     ),
                                                   ),
                                                 ],
                                               ),
                                             ],
                                           ),



                                         ],
                                       ),
                                     )
                                ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [

                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    // _hasBeenPressed = !_hasBeenPressed;
                                    graphbutton = !graphbutton;
                                  });
                                },
                                child: Container(
                                  width: graphbutton? 14:10,
                                  height: graphbutton? 14:10,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: graphbutton?Border.all(color: Color(0xff7b7b7b), width: 2, ):Border.all(),
                                    color: graphbutton?  Colors.white:Color(0xff2c2c2e),
                                  ),
                                ),
                              ),

                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    graphbutton = !graphbutton;
                                   });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 10),
                                  width:!graphbutton? 14:10 ,
                                  height: !graphbutton? 14:10,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:  !graphbutton?  Border.all(color: Color(0xff7b7b7b), width: 2, ):Border.all(),
                                    color:  !graphbutton? Colors.white : Color(0xff2c2c2e),
                                  ),
                                ),
                              ),

                            ],
                          )

                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              ReFactor( "ACCOUNT \nINFORMATION\n",1),
                              ReFactor("ADVANCE \nSETTINGS\n",2),
                                                         ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ReFactor("VIEW OPTIONS\n", 3),
                              ReFactor("ABOUT\n", 4)
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),

                ],
              )));
  }
}
class ReFactor extends StatelessWidget {
  final String title;
  final int num;

  ReFactor(this.title,this.num);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Container(
          alignment: Alignment.center,
          width: 164,
          height: 73,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color(0xff2c2c2e), width: 1, ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  '$title',
                  style: KTextStyle,
                ),
              ),
              Text('$num',style: KNumStyle,)

            ],
          ),
        ));
  }
}
