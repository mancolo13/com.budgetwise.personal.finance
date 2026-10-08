import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';

class Tab4Screen extends StatelessWidget {
  const Tab4Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Savings Vault Goals'), actions: [IconButton(icon: const Icon(Icons.savings, color: AppTheme.primary), onPressed: () => RoutingService.openPartnerLink())]),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          for (final g in [
            {'goal': 'Emergency Fund', 'cur': '$8,500 / $10,000 (85%)', 'pct': 0.85},
            {'goal': 'Vacation Summer Trip', 'cur': '$1,600 / $2,000 (80%)', 'pct': 0.80},
            {'goal': 'New Laptop Setup', 'cur': '$900 / $1,200 (75%)', 'pct': 0.75},
          ]) ...[
            Container(
              margin: const EdgeInsets.only(bottom: 12), padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(16)),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(g['goal'] as String, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                const SizedBox(height: 4),
                Text(g['cur'] as String, style: const TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
                const SizedBox(height: 8),
                LinearProgressIndicator(value: g['pct'] as double, color: AppTheme.primary, backgroundColor: Colors.white10, minHeight: 8, borderRadius: BorderRadius.circular(4)),
              ]),
            ),
          ],
        ],
      ),
    );
  }
}
