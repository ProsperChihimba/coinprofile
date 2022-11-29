import 'package:coinprofile/screens/balance/index.dart';
import 'package:coinprofile/screens/card/index.dart';
import 'package:coinprofile/screens/home/index.dart';
import 'package:coinprofile/screens/settings/index.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const BalanceScreen(),
    const CardsScreen(),
    const SettingScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.grey.shade900,
        unselectedItemColor: Colors.grey.shade500,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            label: "Home",
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: "Balances",
            activeIcon: Icon(Icons.account_balance_wallet_rounded),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_outlined),
            label: "Cards",
            activeIcon: Icon(Icons.credit_card_rounded),
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_settings_regular),
            label: "Settings",
            activeIcon: Icon(FluentSystemIcons.ic_fluent_settings_filled),
          ),
        ],
      ),
    );
  }
}
