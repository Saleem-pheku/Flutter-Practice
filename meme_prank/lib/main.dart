import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
  home: meme_prank(),
));

class meme_prank extends StatefulWidget {
  const meme_prank({Key? key}) : super(key: key);

  @override
  State<meme_prank> createState() => _meme_prankState();
}

class _meme_prankState extends State<meme_prank> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text('Adventure Game',
          style: GoogleFonts.ubuntu(textStyle: TextStyle(color: Colors.amberAccent),fontSize: 24 , fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: isVisible,
              maintainState: true,
              maintainAnimation: true,
              maintainSize: true,
              child: Container(
                child: Image.asset('assets/meme.png'),
            ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              icon: Icon(Icons.play_arrow_sharp, size: 40),
              label: Text('PLAY',
                style: GoogleFonts.ubuntu(textStyle: TextStyle(color: Colors.amberAccent),fontSize: 24 , fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
