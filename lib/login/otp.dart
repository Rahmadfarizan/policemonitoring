import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:countdown_flutter/countdown_flutter.dart';

class KodeOTP extends StatefulWidget {
  const KodeOTP({Key key}) : super(key: key);

  @override
  _KodeOTPState createState() => _KodeOTPState();
}

class _KodeOTPState extends State<KodeOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            iconTheme: IconThemeData(color: Color(0xFF30475E)),
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              "OTP",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            )),
        body: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: SingleChildScrollView(
              child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Periksa SMS Anda",
                        style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF30475E)),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Kami telah mengirimkan kode verifikasi ke nomor 085*********. masukkan kode verifikasi tersebut",
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color(0XFFA9AEB2)),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Center(
                        child: OTPTextField(
                          length: 5,
                          width: MediaQuery.of(context).size.width - 100,
                          textFieldAlignment: MainAxisAlignment.spaceAround,
                          fieldWidth: 55,
                          fieldStyle: FieldStyle.box,
                          outlineBorderRadius: 10,
                          style: GoogleFonts.poppins(
                              fontSize: 17, color: Color(0xFF30475E)),
                          onChanged: (pin) {
                            print("Changed: " + pin);
                          },
                          onCompleted: (pin) {
                            print("Completed: " + pin);
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Kirim ulang dalam ",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12, color: Color(0XFFA9AEB2))),
                              CountdownFormatted(
                                duration: Duration(minutes: 1),
                                builder: (BuildContext ctx, String remaining) {
                                  return Text(
                                    remaining,
                                    style: GoogleFonts.poppins(
                                        fontSize: 12, color: Color(0XFFA9AEB2)),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => KodeOTP()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                      color: Color(0xFF30475E),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  height: 52,
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Masuk",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 12)),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
        ));
  }
}
