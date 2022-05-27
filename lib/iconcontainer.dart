import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final Color bgcolor,bordercolor;
  final double width,height,size;
  final int index;
  const IconContainer({
    required this.bordercolor,
    required this.bgcolor,
    required this.index,
     required this.width,
    required this.size,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    List<IconData> _Icon=[
      Icons.event_note,
      Icons.work,
      Icons.umbrella,
      Icons.add_location,
      Icons.medical_services,
      Icons.cast_for_education,
      Icons.construction,
    ];
    return Container(
      width: this.width,
      height: this.height,
      child: Icon(
        _Icon[index],size: this.size,color: Colors.white,
      ),
      decoration: BoxDecoration(
        color: bgcolor,

        shape: BoxShape.circle,
        border: Border.all(width: 5,color: bordercolor)
      ),
    );
  }
}
