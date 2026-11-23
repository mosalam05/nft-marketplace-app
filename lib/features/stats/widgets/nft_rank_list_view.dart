import 'package:flutter/widgets.dart';
import 'package:nft_marketplace/core/models/nft_model.dart';
import 'package:nft_marketplace/features/stats/widgets/nft_rank_list_tile.dart';

class NftRankListView extends StatelessWidget {
  final List<NftModel> items;
  const new({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) =>
          NftRankListTile(nft: items[index], rank: index + 1),
    );
  }
}
