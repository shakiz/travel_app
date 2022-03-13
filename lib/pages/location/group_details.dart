import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/pages/widgets/search_widget.dart';

class GroupDetails extends StatefulWidget {
  const GroupDetails({Key? key}) : super(key: key);

  @override
  _GroupDetailsState createState() => _GroupDetailsState();
}

class _GroupDetailsState extends State<GroupDetails> {
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
                  height: 272,
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
                            color: Colors.black12.withOpacity(0.1), spreadRadius: 2, blurRadius: 1)
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
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(28)),
                    color: Colors.white),
                    child: const Icon(Icons.person,color: Colors.black87, size: 32,),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
