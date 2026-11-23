import 'package:material_ui/material_ui.dart';
import 'package:nft_marketplace/core/constants/app_colors.dart';
import 'package:nft_marketplace/features/home/views/home_view.dart';
import 'package:nft_marketplace/features/main_layout/widgets/custom_bottom_nav_bar.dart';
import 'package:nft_marketplace/features/stats/views/stats_view.dart';

class MainLayoutView extends StatefulWidget {
  const MainLayoutView({super.key});

  @override
  State<MainLayoutView> createState() => _MainLayoutViewState();
}

class _MainLayoutViewState extends State<MainLayoutView> {
  int _currentIndex = 0;
  final List<Widget> _screens = const [
    HomeView(),
    StatsView(),
    Center(
      child: Text('Search', style: TextStyle(color: Colors.white)),
    ),
    Center(
      child: Text('Profile', style: TextStyle(color: Colors.white)),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      extendBody: true,
      body: IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTabSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
