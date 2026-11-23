import 'package:material_ui/material_ui.dart';
import 'package:nft_marketplace/core/constants/app_colors.dart';
import 'package:nft_marketplace/features/home/data/home_dummy_data.dart';
import 'package:nft_marketplace/features/home/widgets/categories/categories_list_view.dart';
import 'package:nft_marketplace/core/widgets/custom_app_bar.dart';
import 'package:nft_marketplace/features/home/widgets/custom_sub_title.dart';
import 'package:nft_marketplace/features/home/widgets/nft_list_view.dart';
import 'package:nft_marketplace/features/home/widgets/trending/trending_collection_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: const CustomAppBar(title: 'NFT Marketplace'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child: CategoriesListView(categories: HomeDummyData.categories),
              ),

              CustomSubTitle(titleName: 'Trending Collections'),
              Padding(
                padding: EdgeInsets.only(top: 8, bottom: 30),
                child: TrendingCollectionListView(
                  items: HomeDummyData.trendingCollections,
                ),
              ),

              CustomSubTitle(titleName: 'Top Seller'),
              Padding(
                padding: EdgeInsets.only(top: 8, bottom: 30),
                child: NftListView(items: HomeDummyData.topSeller),
              ),

              CustomSubTitle(titleName: 'Hot New Items'),
              Padding(
                padding: EdgeInsets.only(top: 8, bottom: 100),
                child: NftListView(items: HomeDummyData.hotNewItems),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
