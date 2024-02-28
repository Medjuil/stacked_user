import 'package:flutter/material.dart';
import 'package:sky_stacked/models/user.dart';

Widget userCard(User user,
    {String idAndName = "",
    String address = "",
    String email = "",
    String phoneNumber = ""}) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(idAndName),
          Text(address),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(email),
              Text(phoneNumber),
            ],
          )
        ],
      ),
    ),
  );
}
