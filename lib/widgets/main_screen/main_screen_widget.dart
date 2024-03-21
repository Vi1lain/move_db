import 'package:flutter/material.dart';

import '../movie_list/movie_list_widget.dart';

class MainScreenWidget extends StatefulWidget {
   MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 0;
  static  TextStyle optionStyle =
  const TextStyle(fontSize: 30, fontWeight: FontWeight.bold);


  onSelectTab(index){
    if(_selectedTab == index) return;
setState(() {
  _selectedTab = index;
});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(body: IndexedStack(index: _selectedTab,children: [
      Text(
        'Новости',
        style: optionStyle,
      ),
      MovieListWidget(),
      Text(
        'Сериалы',
        style: optionStyle,
      ),
    ],),
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
