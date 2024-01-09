import 'package:nomixe/data/domain/models/product/product_model.dart';

class SelectedProductModel {
  final Product? product;
  final bool isSelected;

  SelectedProductModel({this.product, required this.isSelected});
}
