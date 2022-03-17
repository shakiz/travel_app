import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:travel_app/models/group.dart';
import 'package:travel_app/models/group_member.dart';
import 'package:travel_app/models/location.dart';
import 'package:travel_app/pages/location/group_details.dart';

import '../location/location_details.dart';

class GroupMemberItemTile extends StatelessWidget {
  final GroupMember _groupMember;
  double width;

  GroupMemberItemTile(this._groupMember, this.width, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {},
      child: Container(
          margin: const EdgeInsets.only(right: 20, top: 8, bottom: 16),
          padding: const EdgeInsets.all(8),
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white.withOpacity(0.9),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[300]!,
                    offset: const Offset(2, 2),
                    blurRadius: 4,
                    spreadRadius: 2),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/business_man.png",
                width: width,
                height: 88,
              ),
              Text(
                _groupMember.GroupMemberName,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 4,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    _groupMember.GroupMemberHeading,
                    style: const TextStyle(fontSize: 14, color: Colors.black54),
                  )),
              const SizedBox(
                height: 4,
              ),
            ],
          )),
    );
  }
}
