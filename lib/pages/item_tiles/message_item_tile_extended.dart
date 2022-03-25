import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/models/category.dart';
import 'package:travel_app/models/messages.dart';

class MessageItemTileExtended extends StatelessWidget {
  Messages _messages;

  MessageItemTileExtended(this._messages, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 79,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Positioned(
            left: 16,
            child: Container(
                height: 56,
                width: 56,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black12.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Image.asset("assets/icons/business_man.png")),
          ),
          Positioned(
            left: 90,
            top: 0,
            bottom: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 160,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _messages.MessageTitle,
                    style: const TextStyle(color: Colors.black54, fontSize: 14),
                  ),
                  Text(
                    _messages.MessageFromPersonName,
                    style: const TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 16,
            child: Column(
              children: [
                Text(
                  _messages.MessageDate,
                  style: const TextStyle(color: Colors.black54, fontSize: 14),
                ),
                Icon(
                  Icons.watch_later_outlined,
                  size: 16,
                  color: Colors.black54,
                )
              ],
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            top: 72,
            child: Divider(
              height: 8,
                color: Colors.black12
            ),
          )
        ],
      ),
    );
  }
}
