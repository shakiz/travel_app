import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:travel_app/config/app_data.dart';
import 'package:travel_app/models/group_member.dart';
import 'package:travel_app/pages/item_tiles/group_member_item_tile.dart';
import 'package:travel_app/pages/widgets/search_widget.dart';

class GroupDetails extends StatefulWidget {
  const GroupDetails({Key? key}) : super(key: key);

  @override
  _GroupDetailsState createState() => _GroupDetailsState();
}

class _GroupDetailsState extends State<GroupDetails> {
  final List<GroupMember> _groupMemberInfo = AppData.fetchGroupMemberInfo();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: body(),
      ),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
                child: Image.asset(
                  "assets/images/travel_image.jpg",
                  height: 266,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  height: 40,
                  width: 40,
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.only(right: 4),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 1)
                      ]),
                  child: InkWell(
                    child: Image.asset("assets/icons/arrow_back.png"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Positioned(
                left: 16,
                right: 16,
                top: 72,
                child: SearchWidget(
                  isCancelIconVisible: true,
                  isAdvanceFilterVisible: false,
                  inputFieldBackColor: Colors.white,
                  hintText: 'Search group member',
                  searchIconColor: Colors.black87,
                  hintTextColor: Colors.black54,
                  cancelIconColor: Colors.black87,
                ),
              ),
              Positioned(
                top: 144,
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(28)),
                      color: Colors.black12),
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    height: 56,
                    width: 56,
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(28)),
                        color: Colors.white),
                    child: Image.asset(
                      "assets/icons/business_man.png",
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 212,
                child: Text(
                  "Group Name",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(4.0, 2.0),
                        blurRadius: 2.0,
                        color: Colors.black12,
                      ),
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 4.0,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Group members",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 4,
                ),
                InkWell(
                  onTap: () async {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(content: Text("Joined"), backgroundColor: Colors.green,));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: const Text(
                      "Join",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 464,
            width: MediaQuery.of(context).size.width,
            child: AnimationLimiter(
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _groupMemberInfo.length,
                padding: const EdgeInsets.only(left: 16, bottom: 24),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.0,
                  mainAxisExtent: 192,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return AnimationConfiguration.staggeredList(
                    position: index,
                    child: ScaleAnimation(
                      duration: const Duration(seconds: 1),
                      child: FadeInAnimation(
                        child: GroupMemberItemTile(_groupMemberInfo[index],
                            MediaQuery.of(context).size.width * 0.5),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
