import 'package:flutter/material.dart';

import '../constants.dart';
import '../service/https.dart';
import '../model/quotes.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  String doubleQuotes = '"';
  Quotes quote = Quotes(originator: Originator());

  void get getData async => quote = await quoteUrlResponse();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGrey,
      appBar: AppBar(
        title: Center(
            child: Text(
          kAppName,
          style: TextStyle(
            color: Colors.green[700],
            fontSize: 28,
          ),
        )),
        backgroundColor: kLightGrey,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32),
              child: Text(
                '$doubleQuotes ${quote.content} $doubleQuotes',
                maxLines: null,
                softWrap: true,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 24, fontFamily: kTimesFamily),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            RichText(
              text: TextSpan(children: <TextSpan>[
                const TextSpan(
                    text: 'written by ', style: TextStyle(color: Colors.grey)),
                TextSpan(
                    text: quote.originator.name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontFamily: kTimesFamily,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    )),
              ]),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          getData;
          print('clicked');
        }),
        child: const Icon(Icons.format_quote),
        backgroundColor: Colors.green[700],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}


