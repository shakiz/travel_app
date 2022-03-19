import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/models/category.dart';
import 'package:travel_app/models/messages.dart';

class MessageItemTile extends StatelessWidget {
  Messages _messages;
  MessageItemTile(this._messages, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      alignment: Alignment.center,
      child: ListTile(
        leading: Image.asset("assets/icons/business_man.png"),
        title: Text(_messages.MessageTitle),
      ),
    );
  }
}
