import 'package:flutter/material.dart';
import 'package:animox/page/_favoriler.dart';
import 'package:animox/page/_hesabim.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  final PageController _pageControl = PageController();
  final List<Widget> _sayfalar = [
    const Favoriler(),
    const Hesabim(),
  ];

  void _onPageChanged(int indexOfPages) {}
  void _onItemTapped(int selectedIndex) {
    _pageControl.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Homepage')),
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
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          )
        ],
      ),
    );
  }
}
