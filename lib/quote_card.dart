// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final VoidCallback delete;
  QuoteCard({required this.quote, required this.delete});


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16,16,16,0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black
              )
              ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600]
              )
              ),
            SizedBox(height: 10,),
            TextButton.icon(
              onPressed: delete,
              label: Text(
                'DELETE',
                style: TextStyle(
                  color: Colors.purple[800],
                )),
              icon: Icon(
                Icons.delete_rounded,
                color: Colors.purple[800],
              ),

            )  
          ],
        ),
      )
    );
  }
}