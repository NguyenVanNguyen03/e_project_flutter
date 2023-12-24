import '../model/base_model.dart';
import '../model/categories_model.dart';

List<CategoriesModel> categories = [
  CategoriesModel(
    imageUrl: "assets/images/anh10.jpg",
    title: "Kids",
  ),
  CategoriesModel(
    imageUrl: "assets/images/anh14.jpg",
    title: "Men",
  ),
  CategoriesModel(
    imageUrl: "assets/images/anh13.jpg",
    title: "Women",
  ),
  CategoriesModel(
    imageUrl: "assets/images/shoes.jpg",
    title: "Shoes",
  ),
  CategoriesModel(
    imageUrl: "assets/images/bags.jpg",
    title: "Bag",
  ),
  CategoriesModel(
    imageUrl: "assets/images/glass.jpg",
    title: "Glass",
  ),
  CategoriesModel(
    imageUrl: "assets/images/hat.jpg",
    title: "Hat",
  ),
];

List<BaseModel> mainList = [
  BaseModel(
    imageUrl: "assets/images/anh12.jpg",
    name: "Monochrome",
    price: 155.99,
    review: 3.6,
    star: 4.8,
    id: 1,
    value: 1,
  ),
  BaseModel(
    imageUrl: "assets/images/anh11.jpg",
    name: "Dark-wear",
    price: 143.99,
    review: 5.6,
    star: 5.0,
    id: 2,
    value: 1,
  ),
  BaseModel(
    imageUrl: "assets/images/anh10.jpg",
    name: "Deep Green Jacket",
    price: 212.99,
    review: 2.6,
    star: 3.7,
    id: 3,
    value: 1,
  ),
  BaseModel(
    imageUrl: "assets/images/anh9.jpg",
    name: "Gothic",
    price: 432.99,
    review: 1.4,
    star: 2.4,
    id: 4,
    value: 1,
  ),
  BaseModel(
    imageUrl: "assets/images/anh8.jpg",
    name: "Harajuku",
    price: 112.99,
    review: 4.2,
    star: 1.8,
    id: 5,
    value: 1,
  ),
  BaseModel(
    imageUrl: "assets/images/anh7.jpg",
    name: "Pullover Sleeveless",
    price: 320.99,
    review: 2.1,
    star: 3.1,
    id: 6,
    value: 1,
  ),
  BaseModel(
    imageUrl: "assets/images/anh6.jpg",
    name: "Streetwear",
    price: 113.99,
    review: 3.1,
    star: 4.8,
    id: 7,
    value: 1,
  ),
  BaseModel(
    imageUrl: "assets/images/anh5.jpg",
    name: "Bohemian",
    price: 178.99,
    review: 2.6,
    star: 4.8,
    id: 8,
    value: 1,
  ),
];

List<BaseModel> itemsOnCart = [];
List<BaseModel> itemsOnSearch = [];
