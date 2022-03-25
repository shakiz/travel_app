import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/config/app_data.dart';
import 'package:travel_app/models/buddies.dart';
import 'package:travel_app/models/messages.dart';
import 'package:travel_app/pages/item_tiles/buddies_updates_item_tile.dart';
import 'package:travel_app/pages/item_tiles/message_item_tile_extended.dart';
import 'package:travel_app/pages/widgets/frequent_contact_widget.dart';

class TravelBuddiesWidget extends StatefulWidget {
  const TravelBuddiesWidget({Key? key}) : super(key: key);

  @override
  _TravelBuddiesWidgetState createState() => _TravelBuddiesWidgetState();
}

class _TravelBuddiesWidgetState extends State<TravelBuddiesWidget> {
  final List<Buddies> _buddyList = AppData.fetchBuddies();
  final List<Messages> _messageList = AppData.fetchMessages();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.black12.withOpacity(0.01),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.only(bottom: 72),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Text(
                  "Buddies Updates".toUpperCase(),
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500),
                )),
            const SizedBox(height: 16,),
            SizedBox(
              height: 252,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: _buddyList.length,
                shrinkWrap: true,
                padding: const EdgeInsets.only(left: 16, right: 16),
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return BuddiesUpdatesItemTile(_buddyList[index]);
                },
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Frequent Contacts".toUpperCase(),
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    ),
                    const Icon(
                      Icons.more_horiz
                    )
                  ],
                )),
            const SizedBox(height: 16,),
            SizedBox(
              height: 56,
              child: ListView(
                padding: const EdgeInsets.only(left: 16, right: 16),
                scrollDirection: Axis.horizontal,
                children: [
                  FrequentContactWidget(
                      iconPath: "assets/images/male_1.png", contactName: "Shakil"),
                  const SizedBox(
                    width: 12,
                  ),
                  FrequentContactWidget(
                      iconPath: "assets/images/male_2.png", contactName: "Rashed"),
                  const SizedBox(
                    width: 12,
                  ),
                  FrequentContactWidget(
                      iconPath: "assets/images/male_3.png", contactName: "Jahid"),
                  const SizedBox(
                    width: 12,
                  ),
                  FrequentContactWidget(
                      iconPath: "assets/images/male_4.png", contactName: "Sagor"),
                  const SizedBox(
                    width: 12,
                  ),
                  FrequentContactWidget(
                      iconPath: "assets/images/male_2.png", contactName: "Rashed"),
                  const SizedBox(
                    width: 12,
                  ),
                  FrequentContactWidget(
                      iconPath: "assets/images/male_3.png", contactName: "Jahid"),
                  const SizedBox(
                    width: 12,
                  ),
                  FrequentContactWidget(
                      iconPath: "assets/images/male_4.png", contactName: "Sagor"),
                  const SizedBox(
                    width: 12,
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Conversations".toUpperCase(),
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    ),
                    const Icon(
                        Icons.more_horiz
                    )
                  ],
                )),
            const SizedBox(height: 16,),
            Expanded(
              child: SizedBox(
                height: 62,
                child: ListView.builder(
                  itemCount: _messageList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.only(left: 0, right: 0,),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return MessageItemTileExtended(_messageList[index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
