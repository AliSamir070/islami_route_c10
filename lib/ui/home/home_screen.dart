import 'package:flutter/material.dart';
import 'package:islamy_app_c10/ui/home/ahedeth_widget.dart';
import 'package:islamy_app_c10/ui/home/quran_widget.dart';
import 'package:islamy_app_c10/ui/home/radio_widget.dart';
import 'package:islamy_app_c10/ui/home/sebha_widget.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentNavIndex = 0;
  List<Widget> navWidget = [
    QuranWidget(),
    AhadethWidget(),
    SebhaWidget(),
    RadioWidget()
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bg3.png"),
            fit: BoxFit.fill
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Islamy"),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentNavIndex,
            onTap: (index){
              setState(() {
                currentNavIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage("assets/images/quran_icon.png")),
                  label: 'Quran'
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage("assets/images/ahadeth_icon.png")),
                  label: 'Ahadeth'
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: 'Sebha'
              ),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: ImageIcon(AssetImage("assets/images/radio_icon.png")),
                  label: 'Radio'
              ),
            ]
        ),
        body: navWidget[currentNavIndex],
      ),
    );
  }
}
