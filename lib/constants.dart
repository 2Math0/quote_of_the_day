import 'package:flutter/cupertino.dart';

const String kLanguageCode = 'en';
const String kAppName = 'Quotes';
const Color kLightGrey = Color(0xFFFEFEFF);
const String kTimesFamily = 'Times';
// add the quotes api
const Map<String, String> headers = {
  'X-RapidAPI-Host': 'quotes15.p.rapidapi.com',
  'X-RapidAPI-Key': '341df03672msh37dd75eaa3cc2a7p1fea4cjsn4689f810105b'
};
const String url = 'https://quotes15.p.rapidapi.com/quotes/random/?language_code=$kLanguageCode';