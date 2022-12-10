// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notebook_app/screens/note_editor.dart';
import 'package:notebook_app/screens/note_reader.dart';
import 'package:notebook_app/style/app_style.dart';
import 'package:notebook_app/widgets/note_card.dart';
import 'package:pixelarticons/pixelarticons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.mainColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Dream App",
          style: GoogleFonts.vt323(color: Colors.white, fontSize: 26.0),
        ),
        centerTitle: true,
        backgroundColor: AppStyle.bgColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          //verticalDirection: VerticalDirection.down,
          //mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Your Recent Notes",
              style: GoogleFonts.vt323(color: Colors.white, fontSize: 28.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.hasData) {
                    return GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      children: snapshot.data!.docs
                          .map(
                            (note) => NoteCardWidget(
                              onTap: () async {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        NoteReaderScreen(note),
                                  ),
                                );
                              },
                              doc: note,
                            ),
                          )
                          .toList(),
                    );
                  }
                  return Text(
                    "No notes until now",
                    style: GoogleFonts.nunito(
                      color: Colors.white,
                    ),
                  );
                },
                stream:
                    FirebaseFirestore.instance.collection("Notes").snapshots(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NoteEditorScreen(),
            ),
          );
        },
        label: Text(
          "add notes",
          style: GoogleFonts.vt323(color: Colors.white, fontSize: 20.0),
        ),
        icon: Icon(Pixel.addbox),
        //extendedPadding: EdgeInsets.all(10.0),
      ),
    );
  }
}
