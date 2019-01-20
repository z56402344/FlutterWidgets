
class ProductItem {
  final String name;
  final String tag;
  var asset;
  final int stock;
  final double price;

  ProductItem({
    this.name,
    this.tag,
    this.asset,
    this.stock,
    this.price,
  });
}
 var headNames = ["基础控件","复杂控件","自定义控件","Animation"];

final List<ProductItem> products = [
  ProductItem(
      name: 'Bueno Chocolate',
      tag: '1',
      asset: 'images/food01.jpeg',
      stock: 1,
      price: 71.0),
  ProductItem(
      name: 'Chocolate with berries',
      tag: '2',
      asset: 'images/food02.jpeg',
      stock: 1,
      price: 71.0),
  ProductItem(
      name: 'Trumoo Candies',
      tag: '3',
      asset: 'images/food03.jpeg',
      stock: 1,
      price: 71.0),
  ProductItem(
      name: 'Choco-coko',
      tag: '4',
      asset: 'images/food04.jpeg',
      stock: 1,
      price: 71.0),
  ProductItem(
      name: 'Chocolate tree',
      tag: '5',
      asset: 'images/food05.jpeg',
      stock: 1,
      price: 71.0),
  ProductItem(
      name: 'Chocolate',
      tag: '6',
      asset: 'images/food06.jpeg',
      stock: 1,
      price: 71.0),
];


