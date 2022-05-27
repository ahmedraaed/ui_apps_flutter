import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/people_model.dart';

class  PersonDeitalCard extends StatelessWidget {

  final Person person;
  const PersonDeitalCard({Key? key,required this.person}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 20,
      margin: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
      shadowColor: Colors.grey.withOpacity(1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 100,

             // padding: EdgeInsetsDirectional.only(start: 20),
             decoration: BoxDecoration(
             shape: BoxShape.circle,

             border: Border.all(width: 5,color: Colors.blue,),
             image:DecorationImage(
               image: AssetImage(person.image),
             ),
           boxShadow: [
             BoxShadow(
               blurRadius: 8,
               color: Colors.grey,
               offset: Offset(0,3),
               spreadRadius: 8
             ),
           ],
             ),
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(person.name,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text(person.job,style: TextStyle(fontSize: 15,color: Colors.black54,),),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.watch_later_outlined,size: 20,),
                    SizedBox(width: 5,),
                    Text(person.time,style: TextStyle(fontSize: 15,color: Colors.black45,),),

                  ],
                ),


              ],
            ),
            Expanded(child: Container(color: Colors.blue,),),
            Column(
              children: [
                Icon(Icons.circle,size: 5,),
                Icon(Icons.circle,size: 5,),
                Icon(Icons.circle,size: 5,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
