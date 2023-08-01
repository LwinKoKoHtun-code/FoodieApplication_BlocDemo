import 'package:foodie_bloc_demo/model/food.dart';

class FoodGenerator {
  static List<Food> generateDummyFoods() {
    return [
      Food(
        id: "1",
        name: "Tea Leaf Salad",
        thumbnailURL:
            "https://myanmarrelo.com/wp-content/uploads/2016/05/5480244736_93c4912a45.jpg",
        price: "2000 Ks",
      ),
      Food(
        id: "2",
        name: "Shwe Yin Aye",
        thumbnailURL:
            "https://images.unsplash.com/photo-1650173042834-0a77bfd13ef3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
        price: "2500 Ks",
      ),
      Food(
        id: "3",
        name: "Mohinga",
        thumbnailURL:
            "https://www.sunsburmesekitchen.com.au/wp-content/uploads/2021/02/mohinga-edit-scaled.jpg",
        price: "1500 Ks",
      ),
      Food(
        id: "4",
        name: "Nan Gyi Thote",
        thumbnailURL:
            "https://lh5.googleusercontent.com/79V0SCPk25ZPR7_lTPSc440BAAuGP6gmub2f7rM91nGfi60z9K23Naa_r2V1jYz0u0CAY0fgSiPwXDbxCF_XFHN-zYP3foD4zkYp8WFRtPKJefFsQmHcJaxolEBs2SuUAVAyYt63",
        price: "2000 Ks",
      ),
      Food(
        id: "5",
        name: "Shan Noodles",
        thumbnailURL:
            "https://www.chefspencil.com/wp-content/uploads/Shan-Noodles-960x638.jpg",
        price: "3000 Ks",
      ),
      Food(
        id: "6",
        name: "Chicken Soup Bowl",
        thumbnailURL:
            "https://images.unsplash.com/photo-1582878826629-29b7ad1cdc43?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",
        price: "4000 Ks",
      ),
    ];
  }
}
