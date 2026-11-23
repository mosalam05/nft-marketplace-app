import 'package:material_ui/material_ui.dart';
import 'package:nft_marketplace/core/constants/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget>? actions;
  final IconThemeData? iconTheme;
  final PreferredSizeWidget? bottom;
  final Color backgroundColor;
  final bool centerTitle;

  const new({
    super.key,
    required this.title,
    this.actions,
    this.leading,
    this.iconTheme,
    this.bottom,
    this.backgroundColor = Colors.transparent,
    this.centerTitle = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: centerTitle,
      leading: leading,
      title: Text(
        title,
        style: const TextStyle(
          color: AppColors.primaryText,
          fontSize: 26,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.324,
        ),
      ),
      actions: actions,
      bottom: bottom,
      iconTheme: iconTheme,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
