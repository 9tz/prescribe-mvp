
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final email=TextEditingController();
  final password=TextEditingController();
  final firstName=TextEditingController();
  final lastName=TextEditingController();
  final number=TextEditingController();
  final dateOfBirth=TextEditingController();
  final address=TextEditingController();
  final height=TextEditingController();
  final weight=TextEditingController();
  final bloodType=TextEditingController();
  RxDouble currentProgress = 0.2.obs;
  RxInt screenIndex = 0.obs;
  RxString isAllergies="".obs;

  RxBool showPassword = false.obs;
  sufixFunction() {
    showPassword.value = !showPassword.value;
  }

  var selectedBloodType = Rxn<String>();
  List<String> bloodTypes = ["A+", "A-", "AB+"];
  setBloodType(String? value) {
    selectedBloodType.value = value;
  }


  updateScreen({bool isBack=false}) {
    if(isBack){
      if(screenIndex==0){
        Get.back();
      }
      if(screenIndex>0 && currentProgress.value>0.2){
        if(screenIndex<4){
          currentProgress(currentProgress.value-0.2);
        }
        if(screenIndex==5){
          screenIndex(screenIndex.value-2);
        }else{
          screenIndex(screenIndex.value-1);
        }

      }
    }
    else{
      if(screenIndex<4 && currentProgress.value<0.8){
        currentProgress(currentProgress.value+0.2);
        screenIndex(screenIndex.value+1);
      }
    }
  }
}
