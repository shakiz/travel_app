import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SavedFilterWidget extends StatelessWidget {
  String iconPath;
  String filterText;
  SavedFilterWidget({required this.iconPath, required this.filterText, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64,
      child: Column(
        children: [
          Container(
            height: 52,
            width: 52,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.indigo.withOpacity(0.7),
                borderRadius: BorderRadius.circular(26)
            ),
            child: Image.asset(iconPath, color: Colors.white,),
          ),
          const SizedBox(height: 8,),
          Text(
            filterText.toUpperCase(),
            style: const TextStyle(fontSize: 14, color: Colors.black87, fontWeight: FontWeight.w500, overflow: TextOverflow.ellipsis),
          )
        ],
      ),
    );
  }
}
