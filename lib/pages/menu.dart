import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instgram/services/data.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  List<storie> list = [
    storie('You', 'assets/images1.jpeg'),
    storie('user2', 'assets/images2.jpeg'),
    storie('user3', 'assets/images5.jpeg'),
    storie('user1', 'assets/logo.png'),
  ];


  // Cards
  Widget storieTemplate(e){
    return Card(
      color: Color(0xFF2a2a2a),
      shadowColor: Color(0xFF575757),
      margin: EdgeInsets.fromLTRB(13.0, 5.0, 5.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            CircleAvatar(
              backgroundImage: AssetImage(e.p2p),
              radius: 30.0,
            ),
            SizedBox(height: 8.0),
            Text(
              e.username,
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2a2a2a),
      appBar: AppBar(
        backgroundColor: Color(0xFF181818),
        elevation: 1.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.camera_alt_outlined),
          color: Colors.grey[600],
        ),
        title: Text(
          'Instgram',
          style: GoogleFonts.cookie(
            fontSize: 35,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.send,
              color: Colors.grey[600],
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: list.map((e)=> storieTemplate(e)).toList(),
          ),
          Divider(
            thickness: 2.5,
            height: 15.0,
            color: Color(0xFF262626),
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(15.0, 2.0, 4.0, 2.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images2.jpeg'),
                  radius: 20,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5.0, 4.0, 4.0, 5.0),
                child: Text(
                  'Jean',
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 1.0
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(250.0, 4.0, 4.0, 5.0),
                child: IconButton(
                  icon: Icon(Icons.more_horiz),
                  onPressed: (){},
                  color: Colors.grey[300],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 4.0),
            height: 320.0,
            width: 420.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images5.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                height: 40.0,
                width: 40.0,
                margin: EdgeInsets.fromLTRB(7.0, 0.0, 4.0, 0.0),
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                child: IconButton(
                  icon: Icon(Icons.waving_hand),
                  color: Colors.orange[900],
                  onPressed: (){},
                ),
              ),
              Container(
                height: 40.0,
                width: 40.0,
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 4.0, 0.0),
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                child: IconButton(
                  icon: Icon(Icons.mode_comment_outlined),
                  color: Colors.grey[600],
                  onPressed: (){},
                ),
              ),
              Container(
                height: 40.0,
                width: 40.0,
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 4.0, 0.0),
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                child: IconButton(
                  icon: Icon(Icons.send),
                  color: Colors.grey[600],
                  onPressed: (){},
                ),
              ),
              Container(
                height: 40.0,
                width: 40.0,
                margin: EdgeInsets.fromLTRB(225.0, 0.0, 4.0, 0.0),
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                child: IconButton(
                  icon: Icon(Icons.save_alt_rounded),
                  color: Colors.grey[600],
                  onPressed: (){},
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(3.0),
            child: Text(
              '1,836 likes',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 15.0,
              ),
            ),
           ),
          Container(
            color: Color(0xFF181818),
            height: 44,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 70.0,
                  margin: EdgeInsets.fromLTRB(7.0, 0.0, 4.0, 0.0),
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  child: IconButton(
                    icon: Icon(Icons.home),
                    color: Colors.orange[900],
                    onPressed: (){},
                  ),
                ),
                Container(
                  height: 40.0,
                  width: 70.0,
                  margin: EdgeInsets.fromLTRB(7.0, 0.0, 4.0, 0.0),
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  child: IconButton(
                    icon: Icon(Icons.search),
                    color: Colors.grey[600],
                    onPressed: (){},
                  ),
                ),
                Container(
                  height: 40.0,
                  width: 70.0,
                  margin: EdgeInsets.fromLTRB(7.0, 0.0, 4.0, 0.0),
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  child: IconButton(
                    icon: Icon(Icons.add_box_outlined),
                    color: Colors.grey[600],
                    onPressed: (){},
                  ),
                ),
                Container(
                  height: 40.0,
                  width: 70.0,
                  margin: EdgeInsets.fromLTRB(7.0, 0.0, 4.0, 0.0),
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  child: IconButton(
                    icon: Icon(Icons.share),
                    color: Colors.grey[600],
                    onPressed: (){},
                  ),
                ),
                Container(
                  height: 40.0,
                  width: 70.0,
                  margin: EdgeInsets.fromLTRB(7.0, 0.0, 4.0, 0.0),
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  child: IconButton(
                    icon: Icon(Icons.account_box),
                    color: Colors.grey[600],
                    onPressed: (){},
                  ),
                ),

              ],
            ),
          ),
        ],
      ),

    );
  }
}
