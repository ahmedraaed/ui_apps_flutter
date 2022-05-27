import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'iconcontainer.dart';

class About extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
            child: Column(

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.list_sharp,size: 40,),
                    Icon(Icons.search,size: 40,),
                  ],
                ),
                SizedBox(height: 40,),
                Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      padding: EdgeInsets.only(right: 5,left: 5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('img/avater2.jpg'),
                        )
                      ),
                    ),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ahmed",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,decoration: TextDecoration.none),),
                        Text("Software Developer",style: TextStyle(fontSize: 15,color: Colors.black54,decoration: TextDecoration.none),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: HexColor('#2a9d8f'),
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(child: SingleChildScrollView(
            padding: EdgeInsets.only(right: 20,left: 20),
            child: Column(
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("My Task",style: TextStyle(fontSize: 20,color: Colors.black54,fontWeight: FontWeight.bold,decoration: TextDecoration.none),),
                    IconContainer(bordercolor: Colors.black12, bgcolor: Colors.orangeAccent, index: 0, width: 70, size: 18, height: 70),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    IconContainer(bordercolor: Colors.white60, bgcolor: Colors.teal, index: 1, width: 60, size: 13, height: 60),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("My tasks",style: TextStyle(fontSize: 20,color: Colors.black54,fontWeight: FontWeight.bold,decoration: TextDecoration.none,),),
                        SizedBox(height: 5,),
                        Text("i have one tasks",style: TextStyle(fontSize: 15,color: Colors.black26,decoration: TextDecoration.none,),)

                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(

                  children: [
                    IconContainer(bordercolor: Colors.orange, bgcolor: Colors.lime, index: 2, width: 60, size: 13, height: 60),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("next tasks",style: TextStyle(fontSize: 20,color: Colors.black54,fontWeight: FontWeight.bold,decoration: TextDecoration.none,),),
                        SizedBox(height: 5,),
                        Text("i will visit moon",style: TextStyle(fontSize: 15,color: Colors.black26,decoration: TextDecoration.none,),)

                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    IconContainer(bordercolor: Colors.lightBlue, bgcolor: Colors.lightBlueAccent, index: 3, width: 60, size: 13, height: 60),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("Location",style: TextStyle(fontSize: 20,color: Colors.black54,fontWeight: FontWeight.bold,decoration: TextDecoration.none,),),
                        SizedBox(height: 5,),
                        Text("egypt",style: TextStyle(fontSize: 15,color: Colors.black26,decoration: TextDecoration.none,),)

                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text('Activity Projects',style: TextStyle(fontSize: 20,decoration: TextDecoration.none,color: Colors.black),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15,bottom: 5,),
                        child: Container(
                          width: 150,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: HexColor('264653'),

                          ),
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 15,)),
                              IconContainer(bordercolor: Colors.white54, bgcolor: Colors.black26, index: 4, width: 50, size: 13, height: 50),
                              SizedBox(height:20),
                              Text('Go to Gym',style: TextStyle(fontSize: 14,decoration: TextDecoration.none,color: Colors.white),),
                              SizedBox(height:10),
                              Text('12:50 pm',style: TextStyle(fontSize: 14,decoration: TextDecoration.none,color: Colors.white),),
                            ],
                          ),

                        ),
                      ),
                    ),
                    SizedBox(width: 25,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15,bottom: 5,),
                        child: Container(
                          width: 150,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: HexColor('1d3557'),

                          ),
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 15,)),
                              IconContainer(bordercolor: Colors.white54, bgcolor: Colors.black26, index: 4, width: 50, size: 13, height: 50),
                              SizedBox(height:20),
                              Text('Run',style: TextStyle(fontSize: 14,decoration: TextDecoration.none,color: Colors.white),),
                              SizedBox(height:10),
                              Text('5:30 AM',style: TextStyle(fontSize: 14,decoration: TextDecoration.none,color: Colors.white),),
                            ],
                          ),

                        ),
                      ),
                    ),

                  ],
                ),

              ],
            ),

          ),
          ),
           ],
      ),
    );
  }
}
