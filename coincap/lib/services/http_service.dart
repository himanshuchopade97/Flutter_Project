// ignore_for_file: no_leading_underscores_for_local_identifiers, non_constant_identifier_names

import 'package:dio/dio.dart';
import '../models/app_config.dart';
import 'package:get_it/get_it.dart';

class HTTPService {
  final Dio dio = Dio();

  AppConfig? _appConfig;
  String? _base_url;

  HTTPService() {
    _appConfig = GetIt.instance.get<AppConfig>();
    _base_url = _appConfig!.COIN_API_BASE_URL;
  }  

  // ignore: body_might_complete_normally_nullable
  Future<Response?> get(String _path) async {
    try {
      String _url = "$_base_url$_path";
      return await dio.get(_url);
    }
    catch (e){
      // print('HTTP Service :unable to perform get request');
      // print (e);
    }
  }

}

