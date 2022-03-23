import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/models/category.dart';
import 'package:travel_app/models/location.dart';
import 'package:travel_app/models/messages.dart';

class SavedLocationItemTile extends StatelessWidget {
  Location _location;
  SavedLocationItemTile(this._location, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      alignment: Alignment.center,
      decoration:  BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.05),
            offset: const Offset(1, 1),
            spreadRadius: 2,
            blurRadius: 1
          )
        ]
      ),
      margin: const EdgeInsets.only(bottom: 17),
      child: ListTile(
        leading: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.black12.withOpacity(0.1),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
            child: ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.asset(_location.URL, fit: BoxFit.fill,))),
        title: Text(_location.Name.toUpperCase(), style: const TextStyle(color: Colors.black87, fontSize: 16),),
        subtitle: Text(_location.ExactLocation, style: const TextStyle(color: Colors.black54, fontSize: 14),),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16,),
      ),
    );
  }
}
