import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ecommerce_flutter/core/api.dart';
import 'package:flutter/material.dart';

class UserRepository {
  //put data in model from fetching data from api

  final _api = Api();

  Future<void> createAccount(
      {required String email, required String password}) async {
    try {
      Response response = await _api.sendRequest.post('/user/createAccount',
          data: jsonEncode({"email": email, "password": password}));

      ApiResponse apiResponse = ApiResponse.fromResponse(response);

      if (!apiResponse.success) {
        throw apiResponse.message.toString();
      }

      //Convert raw data to model
    } catch (ex) {
      rethrow;
    }
  }
}
