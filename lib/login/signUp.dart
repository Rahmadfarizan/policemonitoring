import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'detailPegawai.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  "assets/logo.png",
                  height: 169,
                  width: 37,
                ),
              ),
              Image.asset(
                "assets/police.png",
                width: MediaQuery.of(context).size.width,
              ),
              SizedBox(
                height: 30,
              ),
              Text("Police Monitoring",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 24)),
              SizedBox(
                height: 10,
              ),
              Text("Kepolisian Resort Jakarta Barat",
                  style: GoogleFonts.poppins(
                      color: Color(0xFFA9AEB2),
                      fontWeight: FontWeight.normal,
                      fontSize: 14)),
              Container(
                padding: EdgeInsets.only(left: 20, top: 80),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "NRP",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal, fontSize: 14),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Color(0XFFF5F5F5),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 52,
                  child: TextField(
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 14),
                      keyboardType: TextInputType.number,
                      maxLength: 9,
                      decoration: InputDecoration(
                          counterText: "",
                          hintText: "Masukkan NRP anda",
                          border: InputBorder.none))),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailPegawai()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF30475E),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 52,
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Selanjutnya",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 12)),
                        ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            child: Container(
                                padding: EdgeInsets.all(5),
                                color: Color(0xFF7692AE),
                                child: Icon(Icons.arrow_forward_ios,
                                    size: 13, color: Colors.white)))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
