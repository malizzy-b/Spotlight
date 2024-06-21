import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SearchConcertCall {
  static Future<ApiCallResponse> call({
    String? searchString = ' ',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Search concert',
      apiUrl:
          'https://fdvermdxctbffplxamyu.supabase.co/rest/v1/shows_show?nome=ilike.*${searchString}*&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZkdmVybWR4Y3RiZmZwbHhhbXl1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3M TU5NjYwNjMsImV4cCI6MjAzMTU0MjA2M30._jwgKQwWAADkDKcrodMBXSDA1m0vhrGfZOHWu9vqw2k',
        'Autorização':
            'Portador eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZkdmVybWR4Y3RiZmZwbHhhbXl1Iiwicm9sZSI6ImFub24iLCJpYXQiOj E3MTU5NjYwNjMsImV4cCI6MjAzMTU0MjA2M30._jwgKQwWAADkDKcrodMBXSDA1m0vhrGfZOHWu9vqw2k',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarShowsCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Buscar shows',
      apiUrl: 'https://fdvermdxctbffplxamyu.supabase.co/rest/v1/shows_show',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZkdmVybWR4Y3RiZmZwbHhhbXl1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU5NjYwNjMsImV4cCI6MjAzMTU0MjA2M30._jwgKQwWAADkDKcrodMBXSDA1m0vhrGfZOHWu9vqw2k',
      },
      params: {
        'nome': nome,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
