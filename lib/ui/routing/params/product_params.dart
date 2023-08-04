// To parse this JSON data, do
//
//     final productParams = productParamsFromJson(jsonString);

import 'dart:convert';

InitSessionQueryParams initSessionQueryParamsFromJson(String str) => InitSessionQueryParams.fromJson(json.decode(str));

String initSessionQueryParamsToJson(InitSessionQueryParams data) => json.encode(data.toJson());

class InitSessionQueryParams {
  InitSessionQueryParams({
    this.clientId='',
    this.token='',
    this.aggId='',
    this.udf1='',
    this.lang='en',
  });

  String clientId;
  String token;
  String aggId;
  String udf1;
  String lang;

  factory InitSessionQueryParams.fromJson(Map<String, dynamic> json) => InitSessionQueryParams(
    clientId: json['clientId'] ?? '',
    token: json['token'] ?? '',
    aggId: json['aggId'] ?? '',
    udf1: json['udf1'] ?? '',
    lang: json['lang'] ?? '',
  );

  Map<String, dynamic> toJson() => {
    'clientId': clientId,
    'token': token,
    'aggId': aggId,
    'udf1': udf1,
    'lang': lang,
  };
}
