import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';

class Tab1Screen extends StatelessWidget {
  const Tab1Screen({super.key});
  @override
  Widget build(BuildContext context) {
    final exp = [
      {'name': 'Supermarket Groceries', 'cat': 'Food & Drinks', 'amt': '-\$84.50', 'icon': Icons.shopping_cart},
      {'name': 'Monthly Apartment Rent', 'cat': 'Housing', 'amt': '-\$1,200.00', 'icon': Icons.home},
      {'name': 'Gas Station & Fuel', 'cat': 'Transport', 'amt': '-\$45.00', 'icon': Icons.local_gas_station},
      {'name': 'Netflix & Spotify', 'cat': 'Subscriptions', 'amt': '-\$24.99', 'icon': Icons.tv},
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('BudgetWise • Expenses'), actions: [IconButton(icon: const Icon(Icons.add, color: AppTheme.primary), onPressed: () => RoutingService.openPartnerLink())]),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(gradient: LinearGradient(colors: [AppTheme.card, AppTheme.surface]), borderRadius: BorderRadius.circular(24), border: Border.all(color: AppTheme.primary.withValues(alpha: 0.3))),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
              Text('Total Spent This Month', style: TextStyle(color: AppTheme.textSecondary, fontSize: 13)),
              SizedBox(height: 6),
              Text('\$2,340.00', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              Text('Monthly Budget: \$3,500.00 (\$1,160.00 Remaining)', style: TextStyle(color: AppTheme.primary, fontWeight: FontWeight.bold, fontSize: 13)),
            ]),
          ),
          const SizedBox(height: 16),
          const Text('Recent Transactions', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          for (final e in exp) ...[
            Container(
              margin: const EdgeInsets.only(bottom: 12), padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(16)),
              child: Row(children: [
                CircleAvatar(backgroundColor: AppTheme.primary.withValues(alpha: 0.15), child: Icon(e['icon'] as IconData, color: AppTheme.primary)),
                const SizedBox(width: 14),
                Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(e['name'] as String, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  Text(e['cat'] as String, style: const TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
                ])),
                Text(e['amt'] as String, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.redAccent)),
              ]),
            ),
          ],
        ],
      ),
    );
  }
}
