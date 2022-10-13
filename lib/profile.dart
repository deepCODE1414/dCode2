import 'package:flutter/material.dart';
import 'package:deep/checkBox.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
          child: Scaffold(
            backgroundColor: Colors.black,
              body: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                        const EdgeInsets.only(top: 10),
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
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text("Edit",style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 300,top: 4),
                        child: Icon(Icons.more_horiz,color: Colors.white),
                      ),
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              height: 149,
                              width: 149,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/profile.jpg"),
                                      fit: BoxFit.cover),
                                  shape: BoxShape.circle,
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left:100,
                                    top: 110,
                                    child: Container(
                                      width: 36,
                                      height: 36,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff3963ce),
                                      ),
                                      child:  Icon(
                                        Icons.edit,
                                        color: Colors.white,
                                        size: 22,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Name",
                                    style: TextStyle(
                                      color: Color(0xffc7c7cc),
                                      fontSize: 14,
                                      fontFamily: "Public Sans",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 44,
                                  // alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Color(0xff2c2c2e), width: 1, ),
                                    color: Color(0xff191919),
                                  ),

                                  child:   TextField(
                                    style: TextStyle(color: Colors.white),
                                    decoration:
                                    InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 20),
                                      hintStyle:   TextStyle(color: Color(0xffc7c7cc)),
                                      labelStyle: TextStyle(color: Color(0xffc7c7cc)),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(4)

                                      ),
                                      hintText: 'Aaditya Shankar Majumder',


                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Username",
                                    style: TextStyle(
                                      color: Color(0xffc7c7cc),
                                      fontSize: 14,
                                      fontFamily: "Public Sans",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 44,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Color(0xff2c2c2e), width: 1, ),
                                    color: Color(0xff191919),
                                  ),

                                  child:   TextField(
                                    style: TextStyle(color: Colors.white),
                                    decoration:
                                    InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 20),
                                      hintStyle:   TextStyle(color: Color(0xffc7c7cc)),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(4)

                                      ),
                                      hintText: 'B1_atsead',

                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Email address",
                                    style: TextStyle(
                                      color: Color(0xffc7c7cc),
                                      fontSize: 14,
                                      fontFamily: "Public Sans",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 44,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Color(0xff2c2c2e), width: 1, ),
                                    color: Color(0xff191919),
                                  ),

                                  child:   TextField(
                                    style: TextStyle(color: Colors.white),
                                    decoration:
                                    InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 20),
                                      hintStyle:   TextStyle(color: Color(0xffc7c7cc)),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(4)

                                      ),
                                     hintText: 'aadityamajumder@seadlab.in',

                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Phone number",
                                    style: TextStyle(
                                      color: Color(0xffc7c7cc),
                                      fontSize: 14,
                                      fontFamily: "Public Sans",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 44,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Color(0xff2c2c2e), width: 1, ),
                                    color: Color(0xff191919),
                                  ),

                                  child:   TextField(
                                    style: TextStyle(color: Colors.white),
                                    decoration:
                                    InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 20),
                                      hintStyle:   TextStyle(color: Color(0xffc7c7cc)),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(4)

                                      ),
                                      hintText: '9711172242',

                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "About",
                                    style: TextStyle(
                                      color: Color(0xffc7c7cc),
                                      fontSize: 14,
                                      fontFamily: "Public Sans",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 44,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Color(0xff2c2c2e), width: 1, ),
                                    color: Color(0xff191919),
                                  ),

                                  child:   TextField(
                                    style: TextStyle(color: Colors.white),
                                    decoration:
                                    InputDecoration(
                                        contentPadding: EdgeInsets.only(left: 20),
                                      hintStyle:   TextStyle(color: Color(0xffc7c7cc)),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(4)

                                      ),
                                      hintText: "Hakuna Matata!"
                                          "fefeji"
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Category",
                                    style: TextStyle(
                                      color: Color(0xffc7c7cc),
                                      fontSize: 14,
                                      fontFamily: "Public Sans",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 44,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Color(0xff2c2c2e), width: 1, ),
                                    color: Color(0xff191919),
                                  ),
                                  child:   TextField(
                                    style: TextStyle(color: Colors.white),
                                    decoration:
                                    InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 20),
                                      hintStyle:   TextStyle(color: Color(0xffc7c7cc)),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(4)

                                      ),
                                      hintText: 'Designer',

                                    ),
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 20),
                                    width: 352.76,
                                    height: 39,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children:[
                                        Container(
                                          width: 352.76,
                                          height: 39,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(52),
                                            color: Color(0xff2c2c2e),
                                          ),
                                          child:
                                          Center(child: GestureDetector(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                                return Check();
                                              }));
                                            },
                                              child: Text(
                                                "Done",style: TextStyle(
                                                  color: Colors.white,fontSize: 20),))),
                                        ),
                                      ],
                                    ),
                                  ),
                                )

                              ],
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
