import 'package:http/http.dart' as http;
import '../constants.dart';
import '../model/quotes.dart';
Future<Quotes> quoteUrlResponse() async {

  /** ? for larger project
   * ! client = Uri.parse(url);
   * ? that will increase the performance
   * ? as you will no longer need to initialize a client for http
  **/

  var request = http.Request('GET', Uri.parse(url));

  request.headers.addAll(headers);

  final http.StreamedResponse streamedResponse = await request.send();
  final response = await http.Response.fromStream(streamedResponse);

  return quotesFromJson(response.body);
}