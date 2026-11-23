import 'package:flutter/widgets.dart';
import 'package:nft_marketplace/core/models/nft_model.dart';
import 'package:nft_marketplace/features/home/widgets/nft_card.dart';

class NftListView extends StatelessWidget {
  final List<NftModel> items;
  const new({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) =>
            NftCard(model: items[index]),
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(width: 10),
        itemCount: items.length,
      ),
    );
  }
}
