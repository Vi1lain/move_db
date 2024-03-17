import 'package:flutter/material.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Новости',
      style: optionStyle,
    ),
    Text(
      'Фильмы',
      style: optionStyle,
    ),
    Text(
      'Сериалы',
      style: optionStyle,
    ),
  ];

  onSelectTab(index){
    if(_selectedTab == index) return;
setState(() {
  _selectedTab = index;
});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: _widgetOptions[_selectedTab],),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onSelectTab,
        currentIndex: _selectedTab,items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Новости"),
        BottomNavigationBarItem(icon: Icon(Icons.movie),label: "Фильмы"),
        BottomNavigationBarItem(icon: Icon(Icons.tv),label: "Сериалы"),


      ],),
        appBar: AppBar(centerTitle: true,
      title: Text("TMDB"),
    ));
  }
}
