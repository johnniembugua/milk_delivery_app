import 'package:get/get.dart';
import 'package:milk_delivery/Models/product_model.dart';

class ProductController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 5));
    var response = [
      Product(
        'assets/images/milk5.png',
        'Amul-Full cream',
        1,
        70.0,
        4,
      ),
      Product(
        'assets/images/milk5.png',
        'Rogaz-Toned milk',
        2,
        120,
        4,
      ),
      Product(
        'assets/images/milk5.png',
        'Johns cream',
        1,
        80.0,
        1,
      ),
      Product(
        'assets/images/milk5.png',
        'Maureen',
        1,
        64.0,
        3,
      ),
      Product(
        'assets/images/milk5.png',
        'Sharon',
        4,
        90.0,
        5,
      ),
      Product(
        'assets/images/milk5.png',
        'Mburu charles',
        5,
        70.0,
        4,
      ),
      Product(
        'assets/images/milk5.png',
        'Amul-Full cream',
        4,
        200.0,
        4,
      ),
    ];
    products.value = response;
  }
}
