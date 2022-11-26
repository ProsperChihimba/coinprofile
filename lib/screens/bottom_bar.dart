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
    const Text("Home"),
    const Text("Balances"),
    const Text("Cards"),
    const Text("Settings"),
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
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            label: "Home",
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_rounded),
            label: "Balances",
            activeIcon: Icon(Icons.account_balance_wallet_rounded),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_rounded),
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
