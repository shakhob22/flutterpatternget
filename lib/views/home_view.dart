
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutterpatternget/controller/home_controller.dart';

import '../model/post_model.dart';

Widget itemOfPost(Post post) {
  return Slidable(
    startActionPane: ActionPane (
      motion: const ScrollMotion(),
      dismissible: Dismissible(onDismissed: (direction) {}, key: const Key(""), child: const SizedBox(),),
      children: [
        SlidableAction(
          onPressed: (context) {},
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          icon: Icons.edit,
          label: "Update",
        ),

      ],
    ),
    endActionPane: ActionPane(
      motion: const ScrollMotion(),
      children: [
        SlidableAction(
          onPressed: (BuildContext context) {},
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          icon: Icons.delete,
          label: 'Delete',
        ),
      ],
    ),
    child: Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(post.title!.toUpperCase(), style: const TextStyle()),
          const SizedBox(height: 5,),
          Text(post.body!, style: const TextStyle(color: Colors.black54),)
        ],
      ),
    ),
  );
}