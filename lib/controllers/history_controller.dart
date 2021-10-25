import 'dart:convert';

import 'package:focustimer/models/history_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HistoryController {
  List<String>? list = [];
  List<History>? historyList = [];
  static SharedPreferences? prefs;
  static Future init() async => prefs = await SharedPreferences.getInstance();
  read(String key) {
    try {
      historyList!.clear();
      list!.clear();
      list!.addAll(prefs!.getStringList(key)!);
      for (var item in list!) {
        historyList!.add(History.fromJson(json.decode(item)));
      }
    } catch (_) {
      // print(e);
    }

    return historyList;
  }

  save(String key, List<History> historyList) async {
    list!.clear();
    for (var item in historyList) {
      list!.add(json.encode(item.toJson()));
    }
    prefs!.setStringList(key, list!);
  }
}
