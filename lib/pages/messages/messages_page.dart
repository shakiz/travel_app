import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travel_app/config/app_data.dart';
import 'package:travel_app/models/messages.dart';
import 'package:travel_app/pages/item_tiles/message_item_tile.dart';
import 'package:travel_app/pages/widgets/search_widget.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  final List<Messages> _messageList = AppData.fetchMessages();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.black12.withOpacity(0.01),
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: SearchWidget(
                    isCancelIconVisible: true,
                    isAdvanceFilterVisible: false,
                    inputFieldBackColor: Colors.white,
                    hintText: 'Search your buddy',
                    searchIconColor: Colors.black87,
                    hintTextColor: Colors.black54,
                    cancelIconColor: Colors.black87,
                    searchBoxShadow: true,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16, right: 16),
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 1,
                          spreadRadius: 1,
                          offset: Offset(1, 1)
                      )
                    ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        "Chats",
                        style: TextStyle(
                            color: Colors.black87, fontWeight: FontWeight.w600),
                      ),
                      Text("|"),
                      Text(
                        "Status",
                        style: TextStyle(color: Colors.black54),
                      ),
                      Text("|"),
                      Text(
                        "Calls",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  child: ListView.builder(
                    itemCount: _messageList.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return MessageItemTile(_messageList[index]);
                    },
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 90,
              right: 20,
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                heroTag: "message",
                child: const Icon(
                  Icons.message,
                  color: Colors.orange,
                ),
                elevation: 2,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
