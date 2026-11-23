import 'package:cupertino_ui/cupertino_ui.dart';
import 'package:material_ui/material_ui.dart';
import 'package:nft_marketplace/core/constants/app_colors.dart';

class HexagonMintButton extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: ShapeDecoration(
        shape: StarBorder.polygon(sides: 6, pointRounding: 0.4),
        color: AppColors.mintButton,
      ),

      child: IconButton(
        onPressed: () {},
        icon: Icon(
          CupertinoIcons.plus,
          color: AppColors.primaryText,
          size: 30,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
