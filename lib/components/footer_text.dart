import 'package:flutter/material.dart';


class FooterText extends StatefulWidget {
  final String text;
  final GestureTapCallback? ontap;
  const FooterText({
    super.key, required this.text, this.ontap,
  });

  @override
  State<FooterText> createState() => _FooterTextState();
}

class _FooterTextState extends State<FooterText> {

  bool isHover=false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: widget.ontap,
      onHover: (val){
       setState(() {
         isHover=val;
       });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 200),
          child: Row(
            children: [
              Expanded(
                child: Text(widget.text,style: TextStyle(
                    fontSize: 16,fontFamily: 'Main',
                    fontVariations: [FontVariation('wght', 400)],
                    color:isHover?Colors.blue: Colors.black
                ),),
              ),
              Icon(Icons.arrow_forward_ios,size: 16,color:isHover? Colors.blue: Colors.black,)
            ],
          ),
        ),
      ),
    );
  }
}