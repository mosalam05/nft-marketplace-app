import 'package:cupertino_ui/cupertino_ui.dart';
import 'package:nft_marketplace/features/stats/widgets/filter_button.dart';

class FilterRow extends StatelessWidget {
  const FilterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FilterButton(
          title: 'All Categories',
          icon: CupertinoIcons.square_grid_2x2,
          onPressed: () {},
        ),
        const SizedBox(width: 25),
        FilterButton(
          title: 'All Chains',
          icon: CupertinoIcons.link,
          onPressed: () {},
        ),
      ],
    );
  }
}
