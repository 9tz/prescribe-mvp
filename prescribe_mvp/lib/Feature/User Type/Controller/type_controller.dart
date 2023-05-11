
import 'package:get/get.dart';

class TypeController extends GetxController {
  RxString curentUserType="".obs;
}

enum userType {
  Patient,
  Doctor,
  Pharmacist,
}