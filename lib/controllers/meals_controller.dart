import 'package:get/get.dart';

import '../models/meals_model.dart';

class MealController extends GetxController{
  List<Meals> mealsdata =[];

  @override
  void onInit(){
    super.onInit();
    ProductData();
  }

  ProductData(){


    List<Meals> items =[
      Meals(id: 1, image: 'image', mealinfo: {'dish':'Green Beans, Tomatoes, Eggs', 'cal':'135','time':'30'}, storeinfo:  {'name':'SnackMate', 'orderid':'#1234-1234-1234','orderon':'01-01-2024'}),

    ];

    mealsdata.assignAll(items);
    update();
  }
}