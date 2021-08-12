import 'package:flutter/material.dart';
import 'package:animox/page/_favoriler.dart';
import 'package:animox/page/_hesabim.dart';

class Anasayfa extends StatefulWidget {
  Anasayfa({Key? key}) : super(key: key);

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  PageController _pageControl = PageController();
  List<Widget> _sayfalar = [
    Favoriler(),
    Hesabim(),
  ];

  void _onPageChanged(int indexOfPages) {}
  void _onItemTapped(int selectedIndex) {
    _pageControl.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageControl,
        children: _sayfalar,
        onPageChanged: _onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Anasayfa',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoriler',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Hesabım',
          )
        ],
      ),
    );
  }
}
