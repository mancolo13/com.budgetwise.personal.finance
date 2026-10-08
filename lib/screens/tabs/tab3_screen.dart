import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cashflow Trajectory'), actions: [IconButton(icon: const Icon(Icons.compare_arrows, color: AppTheme.primary), onPressed: () => RoutingService.openPartnerLink())]),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(20)),
            child: Column(children: const [
              Text('Net Cashflow: +\$2,460.00', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.greenAccent)),
              SizedBox(height: 6),
              Text('Income: \$4,800.00 • Expenses: \$2,340.00', style: TextStyle(color: AppTheme.textSecondary, fontSize: 13)),
            ]),
          ),
        ],
      ),
    );
  }
}
