import 'package:flutter/material.dart';

class ClipHome extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {

    Path path = Path();


    path.lineTo(0, size.height);//posição de x= 0  e y = o valor máximo


    path.lineTo(size.width, 0);//posição de x= o valor máximo e y = 0
    path.close();
    return path;

  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper !=this;
  }

}

class  BezierWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ClipPath(
      clipper: ClipHome(),
      child: Container(
        width: MediaQuery.of(context).size.width*0.8,
        height:5,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors:
              [Color(0xFF90CAF9),
                Color(0xFF64B5F6)]
          ),
        ),
      ),
    );
  }
}