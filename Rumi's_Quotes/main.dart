import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Mawlana Rumi', text:'Let yourself be drawn by the stronger pull of that which you truly love'),
    Quote(author: 'Mawlana Rumi', text:'Where there is ruin, there is hope for a treasure'),
    Quote(author: 'Mawlana Rumi', text:'Lovers dont finally meet somewhere They are in each other all along'),
    Quote(author: 'Mawlana Rumi', text:'Dont grieve. Anything you lose comes round in another form'),
    Quote(author: 'Mawlana Rumi', text:'What you seek is seeking you'),
    Quote(text: '1', author: 'Mawlana Rumi'),
    Quote(text: '2', author: 'Mawlana Rumi'),
    Quote(text: '3', author: 'Mawlana Rumi'),
    Quote(text: '4', author: 'Mawlana Rumi'),
    Quote(text: '5', author: 'author'),
    Quote(text: 'Some text', author: ' me'),
    Quote(text: 'Some random quote', author: 'some random author'),
    Quote(text: 'hey you yes you go study', author: 'Me'),
    Quote(text: '9', author: 'ABC'),
    Quote(text: '10', author: 'DEF'),
    Quote(text: 'Made with Love', author: 'By Mohammed Moinuddin'),
    Quote(text: 'Reach me out on Insta and GitHub', author: '@Moinuddin9777')
  ];

  Widget quoteTemplate(quote){
    return Card(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(30)),
        shadowColor: Colors.deepPurple,
        elevation: 9,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Text(quote.text,
                style: GoogleFonts.alatsi(textStyle: TextStyle(color: Colors.deepPurple),fontSize: 20 ,fontWeight: FontWeight.bold , letterSpacing: 2,),
              ),
              SizedBox(height: 7),
              Text(quote.author,
                style: GoogleFonts.josefinSans(textStyle: TextStyle(color: Colors.deepPurple),fontSize: 18 ,fontWeight: FontWeight.bold , letterSpacing: 2,),
              )
            ],
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text('Rumi\'S  QuoteS',
        style: GoogleFonts.cinzelDecorative(textStyle: TextStyle(color: Colors.amberAccent),fontSize: 24 , fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: 
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        ),
      ),
    );
  }
}




