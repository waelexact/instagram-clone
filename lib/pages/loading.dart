import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void delai() async {
    await Future.delayed(Duration(seconds: 7), () {
      print('To appear loading page');
    });
    Navigator.pushReplacementNamed(context, '/menu');
  }
  @override
  void initState() {
    super.initState();
    delai();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(130.0, 150.0, 130.0, 10.0),
            child: Image(
              image: AssetImage('assets/logo.png'),
            ),
          ),
          Text(
              'Instgram',
            style: GoogleFonts.cookie(
              fontSize: 30.0,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 30.0),
          SpinKitRing(
              size: 50,
            color: Colors.grey,
          ),
        ],
      ),
      );
  }
}
