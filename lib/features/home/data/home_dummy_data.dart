import 'package:nft_marketplace/features/home/models/category_model.dart';
import 'package:nft_marketplace/core/models/nft_model.dart';

abstract final class HomeDummyData {
  static const List<CategoryModel> categories = [
    CategoryModel(
      name: 'Art',
      imagePath: 'assets/images/home/categories/art.jpg',
    ),
    CategoryModel(
      name: 'Music',
      imagePath: 'assets/images/home/categories/music.jpg',
    ),
    CategoryModel(
      name: 'Virtual Worlds',
      imagePath: 'assets/images/home/categories/virtual_worlds.jpg',
    ),
  ];

  static const List<NftModel> trendingCollections = [
    NftModel(
      name: '3D Art',
      imagePath: 'assets/images/home/trending/3d_art.jpg',
      likesCount: 500,
    ),
    NftModel(
      name: 'Portrait Art',
      imagePath: 'assets/images/home/trending/portrait_art.jpg',
      likesCount: 300,
    ),
    NftModel(
      name: 'Abstract Art',
      imagePath: 'assets/images/home/trending/abstract_art.jpg',
      likesCount: 200,
    ),
  ];

  static const List<NftModel> topSeller = [
    NftModel(
      name: 'Abstract Pink',
      collectionTag: 'abstract #2538',
      imagePath: 'assets/images/home/top_seller/abstract_pink.jpg',
      price: 0.906,
      likesCount: 5160,
    ),
    NftModel(
      name: 'Wave 1',
      collectionTag: 'wavepi #5267',
      imagePath: 'assets/images/home/top_seller/wave1.jpg',
      price: 0.26,
      likesCount: 2180,
    ),
    NftModel(
      name: 'Wave 2',
      collectionTag: 'wav2 #5672',
      imagePath: 'assets/images/home/top_seller/wave2.jpg',
      likesCount: 1860,
      price: 0.018,
    ),
  ];

  static const List<NftModel> hotNewItems = [
    NftModel(
      name: 'Ball',
      collectionTag: 'baalli #4890',
      imagePath: 'assets/images/home/hot_new_items/ball.jpg',
      price: 0.03,
      likesCount: 185,
    ),
    NftModel(
      name: 'Music',
      collectionTag: 'mali #7890',
      imagePath: 'assets/images/home/hot_new_items/music.jpg',
      likesCount: 190,
      price: 0.018,
    ),
    NftModel(
      name: 'Ring',
      collectionTag: 'Ring #7288',
      imagePath: 'assets/images/home/hot_new_items/ring.jpg',
      price: 0.106,
      likesCount: 148,
    ),
    NftModel(
      name: 'Beer',
      collectionTag: 'Beer #1238',
      imagePath: 'assets/images/home/hot_new_items/beer.jpg',
      price: 0.26,
      likesCount: 206,
    ),
  ];
}
