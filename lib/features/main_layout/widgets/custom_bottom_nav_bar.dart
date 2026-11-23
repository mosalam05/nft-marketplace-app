import 'package:cupertino_ui/cupertino_ui.dart';
import 'package:material_ui/material_ui.dart';
import 'package:nft_marketplace/features/main_layout/widgets/custom_nav_button.dart';
import 'package:nft_marketplace/features/main_layout/widgets/hexagon_mint_button.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTabSelected;
  const new({
    super.key,
    required this.currentIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(36),
        child: BackdropFilter(
          filter: .blur(sigmaX: 25, sigmaY: 25),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 17),
            width: double.infinity,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.25),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, -4.5),
                  blurRadius: 25,
                  color: const Color(0xFF292782).withValues(alpha: 0.10),
                ),
              ],
              borderRadius: BorderRadius.circular(27),
              border: BoxBorder.all(
                color: Colors.white.withValues(alpha: 0.3),
                width: 0.9,
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomNavButton(
                  icon: CupertinoIcons.home,
                  isSelected: currentIndex == 0,
                  onPressed: () => onTabSelected(0),
                ),
                CustomNavButton(
                  icon: CupertinoIcons.chart_bar_fill,
                  isSelected: currentIndex == 1,
                  onPressed: () => onTabSelected(1),
                ),

                // const SizedBox(width: 64),
                HexagonMintButton(),

                CustomNavButton(
                  icon: CupertinoIcons.search,
                  isSelected: currentIndex == 2,
                  onPressed: () => onTabSelected(2),
                ),
                CustomNavButton(
                  icon: CupertinoIcons.person,
                  isSelected: currentIndex == 3,
                  onPressed: () => onTabSelected(3),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
