// lib/app/controllers/motorcycle_input_controller.dart

import 'package:get/get.dart';

class MotorcycleInputController extends GetxController {
  var merk = ''.obs;
  var motorName = ''.obs;
  var type = ''.obs;
  var plate = ''.obs;
  var isRecommendation = 'Yes'.obs; // Default value
  var pricePerDay = 150000.obs; // Default value

  void clear() {
    merk.value = '';
    motorName.value = '';
    type.value = '';
    plate.value = '';
    isRecommendation.value = 'Yes';
    pricePerDay.value = 150000;
  }
}