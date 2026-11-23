import 'package:nft_marketplace/core/models/nft_model.dart';

abstract final class StatsDummyData {
  static const List<NftModel> stats = [
    NftModel(
      name: 'Azumi',
      imagePath: 'assets/images/stats/1.jpg',
      likesCount: 6820,
      price: 200055.02,
      percentage: 3.99,
    ),
    NftModel(
      name: 'Hape prime',
      imagePath: 'assets/images/stats/2.jpg',
      likesCount: 5480,
      price: 180055.45,
      percentage: 33.79,
    ),
    NftModel(
      name: 'Cryoto',
      imagePath: 'assets/images/stats/3.jpg',
      likesCount: 4459,
      price: 90055.62,
      percentage: -6.56,
    ),
    NftModel(
      name: 'Ape Club',
      imagePath: 'assets/images/stats/4.jpg',
      likesCount: 3280,
      price: 88055.12,
      percentage: 12.61,
    ),
    NftModel(
      name: 'Bat',
      imagePath: 'assets/images/stats/5.jpg',
      likesCount: 3000,
      price: 10055.06,
      percentage: 3.99,
    ),
    NftModel(
      name: 'Mutant',
      imagePath: 'assets/images/stats/6.jpg',
      likesCount: 2998,
      price: 9095.27,
      percentage: -3.99,
    ),
    NftModel(
      name: 'Metaverse',
      imagePath: 'assets/images/stats/7.jpg',
      likesCount: 14200,
      price: 10055.02,
      percentage: 45.32,
    ),
    NftModel(
      name: 'Mountain',
      imagePath: 'assets/images/stats/8.jpg',
      likesCount: 1213,
      price: 8055.73,
      percentage: -5.61,
    ),
    NftModel(
      name: 'Mutant Ape',
      imagePath: 'assets/images/stats/9.jpg',
      likesCount: 1400,
      price: 5055.73,
      percentage: 7.81,
    ),
    NftModel(
      name: 'The Sandbox',
      imagePath: 'assets/images/stats/10.jpg',
      likesCount: 1350,
      price: 1055.02,
      percentage: -1.99,
    ),
  ];
}
