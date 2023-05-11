import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prescribe_mvp/Feature/Register/Controller/register_controller.dart';
import 'package:prescribe_mvp/Feature/Register/cureent_screen.dart';

import 'history_card.dart';

class MedicalHistory extends StatelessWidget {
   MedicalHistory({Key? key}) : super(key: key);
   RegisterController registerController=Get.find();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        itemCount: Current.medicalType.length,
        itemBuilder: (BuildContext, int index){
          return HistoryCard(
            onTap: (){
              if(index==0){
                registerController.screenIndex(4);
              }else if(index==1){
                registerController.screenIndex(5);
              }
            },
            title: Current.medicalType[index].title,
            status: Current.medicalType[index].status,);
        });

  }
}
