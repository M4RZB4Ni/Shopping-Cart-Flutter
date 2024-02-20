
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:shopping_flutter/app/network/network_enums.dart';
import 'package:shopping_flutter/app/network/response.dart';
import 'dart:convert';

// Class for handling network requests.
class NetworkClient {

  // Private method to handle the HTTP response based on the specified responseType.
  Response _responseHandler(http.Response response) {
    if (response.statusCode < 300 && response.statusCode >= 200) {
      return Response(
          status: true,
          result: response.body,
          statusCode: response.statusCode);
    } else {
      return Response(
          status: false,
          result: response.body,
          statusCode: response.statusCode);
    }
  }

  // Method to send network requests.
  Future<Response> sendRequest(
    final String url, {
    required final HttpRequestType requestType,
    final dynamic bodyData,
    final String? customToken,
    final Map<String, String>? headers,
  }) async {
    http.Response? response;
    Map<String, String>? requestHeader = {
      'Content-Type': 'application/json',
      'Connection': 'keep-alive',
      'platform': 'Mobile',
      'x-api-key': dotenv.env['API_KEY']??'',
    };

    // Update headers if provided.
    if (headers != null) requestHeader = headers;

    // Switch based on the type of HTTP request.
    switch (requestType) {
      case HttpRequestType.POST:
        response = await http.post(Uri.parse(url),
            body: json.encode(bodyData), headers: requestHeader);
        return _responseHandler(response);

      case HttpRequestType.GET:
        response = await http.get(Uri.parse(url), headers: requestHeader);
        return _responseHandler(response);

      case HttpRequestType.PUT:
        response = await http.put(Uri.parse(url),
            body: json.encode(bodyData), headers: requestHeader);
        return _responseHandler(response);

      case HttpRequestType.PATCH:
        response = await http.patch(Uri.parse(url),
            headers: requestHeader, body: json.encode(bodyData));
        return _responseHandler(response);
    }
  }
}
