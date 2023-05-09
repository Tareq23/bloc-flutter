


class ProductDataModel{
  final int id;
  final String name;
  final String description;
  final dynamic price;
  final String imageUrl;
  final String category;
  final int quantity;

  ProductDataModel( {required this.category, required this.quantity,required this.id, required this.name,
                    required this.description, required this.price, required this.imageUrl});



}