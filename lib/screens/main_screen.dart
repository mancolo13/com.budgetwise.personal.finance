import 'package:flutter/material.dart';
import 'tabs/tab1_screen.dart';
import 'tabs/tab2_screen.dart';
import 'tabs/tab3_screen.dart';
import 'tabs/tab4_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _idx = 0;
  final _tabs = const [Tab1Screen(), Tab2Screen(), Tab3Screen(), Tab4Screen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _idx, children: _tabs),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _idx,
        onDestinationSelected: (i) => setState(() => _idx = i),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.receipt_long_outlined), selectedIcon: Icon(Icons.receipt_long), label: 'Expense'),
          NavigationDestination(icon: Icon(Icons.savings_outlined), selectedIcon: Icon(Icons.savings), label: 'Budget'),
          NavigationDestination(icon: Icon(Icons.balance_outlined), selectedIcon: Icon(Icons.balance), label: 'Cashflow'),
          NavigationDestination(icon: Icon(Icons.flag_outlined), selectedIcon: Icon(Icons.flag), label: 'Goals'),
        ],
      ),
    );
  }
}
