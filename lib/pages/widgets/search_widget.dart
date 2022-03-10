import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.search, color: Colors.black54),
                ),
                //Search Textbox field
                Expanded(
                  child: Center(
                    child: TextField(
                      style: const TextStyle(color: Colors.black),
                      autofocus: false,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search your destination',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      onChanged: (input) async {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Advance Button
        InkWell(
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
      ],
    );
  }
}
