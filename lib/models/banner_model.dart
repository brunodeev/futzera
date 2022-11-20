class BannerImg {
  final String name, image;

  BannerImg({
    required this.name,
    required this.image,
  });
}

List<BannerImg> banner = [
  BannerImg(
    name: 'Promo',
    image: 'assets/images/promo.jpg',
  ),
  BannerImg(
    name: 'BrasilPromo',
    image: 'assets/images/brazilpromo.jpg',
  ),
  BannerImg(
    name: 'WorldCup',
    image: 'assets/images/worldcup.jpg',
  ),
  BannerImg(
    name: 'Messi&Cris',
    image: 'assets/images/messi_and_cristiano.png',
  ),
];
