//@copied from @oguzhanzeybek

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notebook_app/screens/home_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    //var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    height: 120,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 34, 1, 125),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60,
                    width: 220,
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 4, 15, 102)),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 129, 25, 113)),
                    height: 200,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Merhaba, \nhoşgeldin.",
                    style:
                        GoogleFonts.vt323(color: Colors.white, fontSize: 26.0),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: customInputDecoration(
                        "kullanıcı adı", Colors.white, Colors.white),
                  ),
                  space15(),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: customInputDecoration(
                        "şifre", Colors.white, Colors.white),
                  ),
                  space15(),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60)),
                        child: Center(
                          child: Text(
                            "Şifremi unuttum",
                            style: GoogleFonts.vt323(
                                color: Colors.white, fontSize: 26.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  space15(),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: Center(
                          child: Text(
                            "Giriş Yap",
                            style: GoogleFonts.vt323(
                                color: Colors.white, fontSize: 26.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        child: Center(
                          child: Text(
                            "Kayıt Ol",
                            style: GoogleFonts.vt323(
                                color: Colors.white, fontSize: 26.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 129, 25, 113)),
                    height: 200,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60,
                    width: 220,
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 4, 15, 102)),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 120,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 34, 1, 125),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget space15() => SizedBox(
        height: 15,
      );

  InputDecoration customInputDecoration(
      String hintText, Color firstColor, Color secondColor) {
    return InputDecoration(
      counterStyle: TextStyle(color: Colors.red),
      hintText: hintText,
      hintStyle: GoogleFonts.vt323(color: Colors.white, fontSize: 26.0),
      /*fillColor: Colors.red,
      focusColor: Colors.red,
      hoverColor: Colors.red,
      iconColor: Colors.red,*/
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: firstColor),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: secondColor),
      ),
    );
  }
}
