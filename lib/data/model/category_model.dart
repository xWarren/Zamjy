import 'package:zamjy_samgyup/core/resources/assets.dart';
import 'package:zamjy_samgyup/data/model/all_items_model.dart';

class CategoryModel {
  final String image;
  final String title;
  final List<AllItemsModel> allItems;

  const CategoryModel(
      {required this.image, required this.title, required this.allItems});
}

List<CategoryModel> category = [
  CategoryModel(
      image: Assets.soloMeals,
      title: "Solo Meals",
      allItems: List.generate(1, (index) {
        return const AllItemsModel(
          description: "Solo Meals",
          price: 200.0,
          ratings: 3.0,
        );
      })),
  CategoryModel(
      image: Assets.drinks,
      title: "Drinks",
      allItems: List.generate(1, (index) {
        return const AllItemsModel(
          description: "Drinks",
          price: 150.0,
          ratings: 4.5,
        );
      })),
  CategoryModel(
      image: Assets.liquor,
      title: "Liquor",
      allItems: List.generate(1, (index) {
        return const AllItemsModel(
          description: "Liquor",
          price: 250.0,
          ratings: 5.0,
        );
      })),
  CategoryModel(
      image: Assets.toShare,
      title: "To Share",
      allItems: List.generate(1, (index) {
        return const AllItemsModel(
          description: "To Share",
          price: 120.0,
          ratings: 5.0,
        );
      })),
];
