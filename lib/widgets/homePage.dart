import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_ver_flutter/widgets/feed.dart';
import 'package:instagram_ver_flutter/widgets/demo.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _pages = [
    Feed(),
    Demo(),
    Feed(),
    Demo(),
    Feed(),
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFEEEEEE),
        brightness: Brightness.light,
        centerTitle: true,
        title: Text(
          'Instagram',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Feather.camera,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Feather.tv,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesome.send_o,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue,
        currentIndex: currentPage,
        onTap: (i){
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Foundation.home),label: 'ホーム',),
          BottomNavigationBarItem(icon: Icon(Feather.search),label: '検索'),
          BottomNavigationBarItem(icon: Icon(Entypo.video),label: 'Movie'),
          BottomNavigationBarItem(icon: Icon(Foundation.shopping_bag),label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Entypo.user),label: 'MyPage'),
        ],
      ),
    );
  }
}