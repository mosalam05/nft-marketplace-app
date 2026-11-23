class NftModel {
  final String name;
  final String? collectionTag;
  final String imagePath;
  final double? price;
  final double? percentage;
  final int likesCount;
  final bool isLiked;

  const NftModel({
    required this.name,
    this.collectionTag,
    required this.imagePath,
    this.price,
    this.percentage,
    required this.likesCount,
    this.isLiked = false,
  });
}
