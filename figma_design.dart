import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Group3Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Group3Widget - GROUP
    return Container(
        width: 363.5,
        height: 590,

        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 0,
                  left: 134,
                  child: Container(
                      width: 229.50001525878906,
                      height: 258,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 45.90534973144531,
                                left: 40.13657760620117,
                                child: SvgPicture.asset(
                                    'assets/ellipse2.svg',
                                    semanticsLabel: 'ellipse2'
                                ))

                            ,Positioned(
                                top: 0,
                                left: 0,
                                child: SvgPicture.asset(
                                    'assets/ellipse1.svg',
                                    semanticsLabel: 'ellipse1'
                                ))
                            ,
                          ]
                      )
                  )
              ),Positioned(
                  top: 249,
                  left: 0,
                  child: Container(
                    width: 354,
                    height: 284,

                    child: Stack(
                        children: <Widget>[
                        Positioned(
                        top: 0,
                        left: 0,
                        child: Text('Hi, I am Moinuddin. Budding Flutter Developer', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(0, 8, 80, 1),
                        fontFamily: 'Sansation',
                        fontSize: 32,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1.25
                    ),)
              ),Positioned(
                  top: 128,
                  left: 0,
                  child: Text('Seeking an entry level position across growing IT organizations where I can utilize my extensive knowledge. Well versed with Python ,ML with basics of flutter and other knowledge covered in my coursework. Passionate about learning new concepts and and possess the ability to handle work pressure and other issues professionally. Proficient in communication skills and able to build, handle and delegate teamwork.', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(33, 36, 61, 1),
                      fontFamily: 'Glory',
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),
            ]
        )
    )
    ),

    Positioned(
    top: 544,
    left: 73,
    child: Container(
    width: 240,
    height: 46,

    child: Stack(
    children: <Widget>[
    Positioned(
    top: 0,
    left: 0,
    child: Container(
    width: 200,
    height: 46,
    decoration: BoxDecoration(
    borderRadius : BorderRadius.only(
    topLeft: Radius.circular(2),
    topRight: Radius.circular(2),
    bottomLeft: Radius.circular(2),
    bottomRight: Radius.circular(2),
    ),
    color : Color.fromRGBO(93, 95, 239, 1),
    )
    )
    ),Positioned(
    top: 13,
    left: 15,
    child: Text('Download Resume', textAlign: TextAlign.left, style: TextStyle(
    color: Color.fromRGBO(255, 255, 255, 1),
    fontFamily: 'Merge One',
    fontSize: 20,
    letterSpacing: 0,
    fontWeight: FontWeight.normal,
    height: 1
    ),)
    ),
    ]
    )
    )
    ),
    ]
    )
    );
  }
}
