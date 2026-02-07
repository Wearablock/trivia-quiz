import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../l10n/generated/app_localizations.dart';
import 'widgets/overall_stats_card.dart';
import 'widgets/category_stats_list.dart';

class StatsScreen extends ConsumerWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.stats),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          OverallStatsCard(),
          SizedBox(height: 24),
          CategoryStatsList(),
        ],
      ),
    );
  }
}
