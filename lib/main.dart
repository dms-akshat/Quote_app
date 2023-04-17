// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote>  quotes = [
    Quote(text:'Just Do IT',author: 'NIKE'),
    Quote(text:'All wars are won or lost before they are ever fought',author: 'Sun Tzu'),
    Quote(text: 'The greatest victory is that which requires no battle', author: 'Sun Tzu'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text(
          'THE BLADE QUOTES',
          style: TextStyle(
            wordSpacing: 3,
            letterSpacing: 1,
          )
        ),
        centerTitle: true,
        backgroundColor: Colors.pink[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
            }
          )).toList()
        ),
      ),
    );
  }
}

