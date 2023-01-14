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
    image:
        'https://d3a0dcqzwu0eh0.cloudfront.net/images/350_cmtqohluafea4mjjx7ld.jpg',
  ),
  BannerImg(
    name: 'BrasilPromo',
    image:
        'https://assets-mantosdofutebol.sfo2.digitaloceanspaces.com/wp-content/uploads/2021/06/Dia-dos-Namorados-FutFanatics.jpg',
  ),
  BannerImg(
    name: 'WorldCup',
    image:
        'https://images.mantosdofutebol.com.br/wp-content/uploads/2021/06/Dicas-de-camisas-de-futebol-para-o-casal-neste-Dia-dos-Namorados.jpg',
  ),
];
