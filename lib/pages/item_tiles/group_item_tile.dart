import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/models/group.dart';
import 'package:travel_app/models/location.dart';
import 'package:travel_app/pages/location/group_details.dart';

import '../location/location_details.dart';

class GroupItemTile extends StatelessWidget {
  Group group;
  double width;

  GroupItemTile(this.group, this.width, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const GroupDetails()));
      },
      child: Container(
          margin: const EdgeInsets.only(right: 20, top: 8, bottom: 16),
          padding: const EdgeInsets.all(8),
          height: 156,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: AssetImage(
                          group.GroupThumbnail
                      )
                  ),
                ),
              ),
              const SizedBox(width: 8,),
              Expanded(
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        group.GroupName,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black87.withOpacity(0.8),
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      const SizedBox(height: 4,),
                      Text(
                        group.GroupCategory,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black87.withOpacity(0.6),
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      const SizedBox(height: 4,),
                      Stack(
                        overflow: Overflow.visible,
                        children: [Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                            child: ClipRRect(
                                borderRadius:
                                const BorderRadius.all(Radius.circular(100)),
                                child: Image.asset("assets/images/user.png", height: 16, width: 16,)),
                          ),
                          Positioned(
                            left: 17,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(100)),
                                  border:
                                  Border.all(color: Colors.white, width: 0.5)),
                              child: ClipRRect(
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(100)),
                                  child: Image.asset("assets/images/user.png", height: 16, width: 16,)),
                            ),
                          ),
                          Positioned(
                            left: 17.0 * 2,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(100)),
                                  border:
                                  Border.all(color: Colors.white, width: 0.5)),
                              child: ClipRRect(
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(100)),
                                  child: Image.asset("assets/images/user.png", height: 16, width: 16,)),
                            ),
                          ),
                          Positioned(
                            left: 17.0 * 3,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(100)),
                                  border:
                                  Border.all(color: Colors.white, width: 0.5)),
                              child: ClipRRect(
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(100)),
                                  child: Image.asset("assets/images/user.png", height: 16, width: 16,)),
                            ),
                          ),
                          Positioned(
                            left: 17.0 * 4,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(100)),
                                  border:
                                  Border.all(color: Colors.white, width: 0.5)),
                              child: ClipRRect(
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(100)),
                                  child: Image.asset("assets/images/user.png", height: 16, width: 16,)),
                            ),
                          ),
                         Positioned(
                            left: 17.0 * 5,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                              child: ClipRRect(
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(100)),
                                  child: Image.asset("assets/images/user.png")),
                            ),
                          ),
                          Positioned(
                            left: 17.0 * 5,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                              child: ClipRRect(
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(100)),
                                  child: Image.asset("assets/images/user.png")),
                            ),
                          ),
                          Positioned(
                            left: 17.0 * 5,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                              child: ClipRRect(
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(100)),
                                  child: Image.asset("assets/images/user.png")),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 8,),Text(
                        "${group.TotalMember}  persons are members.",
                        style: const TextStyle(
                            color: Color(0xff8A8A8A),
                            fontSize: 13,
                            fontFamily: "Lato",
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8,),
            ],
          )),
    );
  }
}
