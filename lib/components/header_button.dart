import 'package:flutter/material.dart';
import '../util/responsive.dart';

class HeaderButton extends StatefulWidget {
  final IconData icon;
  final String text;
  final GestureTapCallback ontap;
  const HeaderButton({super.key, required this.icon, required this.text, required this.ontap});

  @override
  State<HeaderButton> createState() => _HeaderButtonState();
}

class _HeaderButtonState extends State<HeaderButton> {
  @override
  Widget build(BuildContext context) {
  
    return InkWell(
      onTap: widget.ontap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if(!Responsive.isDesktop(context))
          Icon(widget.icon,size: 34,color: Colors.indigo,),
          // if(Responsive.isDesktop(context))
          Text(widget.text,style: TextStyle(fontSize: 16,color: Colors.black),)
        ],
      ),
    );
  }
}
