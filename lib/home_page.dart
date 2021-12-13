import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'button.dart';

class  HomePage extends StatelessWidget {
  bool count = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 150,
            alignment: Alignment.center,
            child: Text(
              "Login",
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w900,
                fontSize: 38.0,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                width: 370,
                margin: const EdgeInsets.only(bottom: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon:const  Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    label: Text(
                      "Username",
                      style: GoogleFonts.lato(
                        fontSize: 18.0,
                      ),
                    ),
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
              ),
              Container(
                width: 370,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    label: Text(
                      "Password",
                      style: GoogleFonts.lato(
                        fontSize: 18.0,
                      ),
                    ),
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Checkbox(
                value: true,
                onChanged: (value) {
                  count = true;
                },
                activeColor: Colors.amberAccent,
              ),
              const  Text(
                "Remember me",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          const Button(),
          const Text("Forgot Password ? ",
              style: TextStyle(
                fontSize: 16.0,
              )),
          const SizedBox(
            height: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Not a memeber ? ",
                  style: TextStyle(
                    fontSize: 16.0,
                  )),
              InkWell(
                child: const Text("Sign up now",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.blue,
                    )),
                onTap: () {
                 print("CLICKED");
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
