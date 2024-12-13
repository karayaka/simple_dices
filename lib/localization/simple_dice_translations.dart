import 'package:get/get.dart';

class SimpleDiceTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": {
          "dice": "Dice",
          "dices": "Dices",
          "choose_number_of_dice": "Choose Number Of Dice",
          "roll": "Roll",
          "total": "Total",
        },
        "tr_TR": {
          "dice": "Zar",
          "dices": "Zarlar",
          "choose_number_of_dice": "Zar Sayısı Seç",
          "roll": "Salla",
          "total": "Toplam",
        },
        "de_DE": {
          "dice": "Dice",
          "dices": "Dices",
          "choose_number_of_dice": "Choose Number Of Dice",
          "roll": "Salla",
          "total": "Toplam",
        }
      };
}
