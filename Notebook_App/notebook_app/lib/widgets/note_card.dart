// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notebook_app/style/app_style.dart';
import 'package:pixelarticons/pixel.dart';

class NoteCardWidget extends StatefulWidget {
  final Function()? onTap;
  late final QueryDocumentSnapshot doc;

  NoteCardWidget({super.key, this.onTap, required this.doc});

  @override
  State<NoteCardWidget> createState() => _NoteCardWidgetState();
}

class _NoteCardWidgetState extends State<NoteCardWidget> {
  Function()? onTap;
  late QueryDocumentSnapshot doc;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 14.0, right: 0.0, top: 6.0),
        margin: EdgeInsets.all(
          8.0,
        ),
        decoration: BoxDecoration(
          color: AppStyle.cardColors[doc['color_id']],
          borderRadius: BorderRadius.circular(
            0.0,
          ),
        ),
        //child: Padding(
        //padding: EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              doc["note_title"],
              style: AppStyle.mainTitle,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              doc["creation_date"],
              style: AppStyle.dataTitle,
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              doc["note_content"],
              style: AppStyle.mainContent,
              overflow: TextOverflow.ellipsis,
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: AppStyle.mainColor,
                    child: IconButton(
                      onPressed: () {
                        setState(() {});
                      },
                      icon: Icon(
                        color: Colors.white,
                        Pixel.trash,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        //),
      ),
    );
  }
}

Widget noteCard(Function()? onTap, QueryDocumentSnapshot doc) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.only(left: 14.0, right: 0.0, top: 6.0),
      margin: EdgeInsets.all(
        8.0,
      ),
      decoration: BoxDecoration(
        color: AppStyle.cardColors[doc['color_id']],
        borderRadius: BorderRadius.circular(
          0.0,
        ),
      ),
      //child: Padding(
      //padding: EdgeInsets.all(0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            doc["note_title"],
            style: AppStyle.mainTitle,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            doc["creation_date"],
            style: AppStyle.dataTitle,
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            doc["note_content"],
            style: AppStyle.mainContent,
            overflow: TextOverflow.ellipsis,
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: AppStyle.mainColor,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      color: Colors.white,
                      Pixel.trash,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      //),
    ),
  );
}
