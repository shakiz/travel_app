import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  bool isAdvanceFilterVisible;
  bool isCancelIconVisible;
  Color inputFieldBackColor, hintTextColor, cancelIconColor, searchIconColor;
  String hintText;

  SearchWidget(
      {required this.isAdvanceFilterVisible,
      required this.isCancelIconVisible,
      required this.inputFieldBackColor,
      required this.hintText,
      required this.hintTextColor,
      required this.cancelIconColor,
      required this.searchIconColor,
      Key? key})
      : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    super.dispose();
    _focusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              color: widget.inputFieldBackColor,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: () async {
                    FocusScope.of(context).requestFocus(_focusNode);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.search, color: widget.searchIconColor),
                  ),
                ),
                //Search Textbox field
                Expanded(
                  child: Center(
                    child: TextField(
                      style: const TextStyle(color: Colors.black),
                      autofocus: false,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: widget.hintText,
                        hintStyle: TextStyle(
                          color: widget.hintTextColor,
                        ),
                      ),
                      onChanged: (input) async {},
                    ),
                  ),
                ),
                Visibility(
                  visible: widget.isCancelIconVisible,
                  child: InkWell(
                    onTap: () async {
                      FocusScope.of(context).requestFocus(_focusNode);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.cancel, color: widget.cancelIconColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Advance Button
        Visibility(
          visible: widget.isAdvanceFilterVisible,
          child: InkWell(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              //advance filter
              width: 48,
              height: 48,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.settings),
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  //shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 3.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
            ),
          ),
        ),
      ],
    );
  }
}
