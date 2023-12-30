import 'package:flutter/material.dart';
import 'package:islami_app/shared/components/constant.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/default_bg.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            titleAppBar,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTabIndex,
          onTap: (index) {
            setState(() {
              selectedTabIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(
                AssetImage(
                  'assets/images/icon_radio.png',
                ),
              ),
              label: 'الراديو',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(
                AssetImage('assets/images/icon_sebha.png'),
              ),
              label: 'التسبيح',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(
                AssetImage('assets/images/icon_hadeth.png'),
              ),
              label: 'الأحاديث',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(
                AssetImage('assets/images/icon_quran.png'),
              ),
              label: 'القرآن',
            ),
          ],
        ),
        body: tabsScreen[selectedTabIndex],
      ),
    );
  }
}
