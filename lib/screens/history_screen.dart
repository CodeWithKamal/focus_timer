import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:focustimer/controllers/history_controller.dart';
import 'package:focustimer/models/history_model.dart';
import 'package:focustimer/utils/colors.dart';
import 'package:focustimer/widgets/history_item.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  HistoryController historyController = HistoryController();
  List<History> listHistory = [];

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: green1));
    HistoryController.init();
    listHistory.addAll(historyController.read("history"));
    listHistory.sort((a, b) {
      return b.dateTime.compareTo(a.dateTime);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green2,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: green1),
        title: Text(
          "History",
          style: TextStyle(
            color: green1,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final item = listHistory.elementAt(index);
          if (index != 0 &&
              (item.dateTime.day ==
                  listHistory.elementAt(index - 1).dateTime.day) &&
              (item.dateTime.month ==
                  listHistory.elementAt(index - 1).dateTime.month) &&
              (item.dateTime.year ==
                  listHistory.elementAt(index - 1).dateTime.year)) {
            return HistoryItem(
              history: item,
              isNewDay: false,
            );
          } else {
            return HistoryItem(
              history: item,
              isNewDay: true,
            );
          }
        },
        itemCount: listHistory.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          thickness: 0,
          color: Colors.transparent,
        ),
      ),
    );
  }
}
