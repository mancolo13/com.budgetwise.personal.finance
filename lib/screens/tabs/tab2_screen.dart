import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Category Budgets'), actions: [IconButton(icon: const Icon(Icons.pie_chart, color: AppTheme.primary), onPressed: () => RoutingService.openPartnerLink())]),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          for (final c in [
            {'cat': 'Housing', 'val': '\$1,200 / \$1,200 (100%)', 'pct': 1.0, 'col': Colors.redAccent},
            {'cat': 'Food & Dining', 'val': '\$450 / \$600 (75%)', 'pct': 0.75, 'col': AppTheme.primary},
            {'cat': 'Transport', 'val': '\$180 / \$250 (72%)', 'pct': 0.72, 'col': Colors.cyan},
            {'cat': 'Entertainment', 'val': '\$120 / \$200 (60%)', 'pct': 0.60, 'col': Colors.amber},
          ]) ...[
            Container(
              margin: const EdgeInsets.only(bottom: 12), padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(16)),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Text(c['cat'] as String, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  Text(c['val'] as String, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                ]),
                const SizedBox(height: 8),
                LinearProgressIndicator(value: c['pct'] as double, color: c['col'] as Color, backgroundColor: Colors.white10, minHeight: 8, borderRadius: BorderRadius.circular(4)),
              ]),
            ),
          ],
        ],
      ),
    );
  }
}
