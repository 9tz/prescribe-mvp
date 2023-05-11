import 'package:flutter/material.dart';
import 'package:prescribe_mvp/Feature/Register/Widgets/account_information.dart';
import 'package:prescribe_mvp/Feature/Register/Widgets/allergies.dart';
import 'package:prescribe_mvp/Feature/Register/Widgets/medical_history.dart';
import 'package:prescribe_mvp/Feature/Register/Widgets/personal_information.dart';
import 'package:prescribe_mvp/Feature/Register/Widgets/personalise_profile.dart';
import 'package:prescribe_mvp/Feature/Register/Widgets/verification.dart';
import 'package:prescribe_mvp/Util/app_strings.dart';

class Current {
  static String barTitle(int index) {
    String titles="";
    switch (index) {
      case 0:
        titles=AppStrings.signUp;
        break;
      case 1:
        titles=AppStrings.signUp;
        break;
      case 2:
        titles=AppStrings.verification;
        break;
      case 3:
        titles=AppStrings.medicalHistory;
        break;
      case 4:
        titles=AppStrings.generalPatientInfo;
        break;
      case 5:
        titles=AppStrings.allergies;
        break;
    }
    return titles;
  }

  static String screenHeading(int index) {
    String titles="";
    switch (index) {
      case 0:
        titles=AppStrings.accountInformation;
        break;
      case 1:
        titles=AppStrings.personalInformation;
        break;
      case 2:
        titles=AppStrings.verification;
        break;
      case 3:
        titles=AppStrings.medicalHistory;
        break;
      case 4:
        titles=AppStrings.personaliseYourProfile;
        break;
      case 5:
        titles=AppStrings.doHaveAnyAllergies;
        break;
    }
    return titles;
  }

  static String subHeading(int index) {
    String titles="";
    switch (index) {
      case 0:
        titles=AppStrings.pleaseInputInformation;
        break;
      case 1:
        titles=AppStrings.pleaseInputInformation;
        break;
      case 2:
        titles=AppStrings.enterCodeThatHave;
        break;
      case 3:
        titles=AppStrings.helpDoctorPrescribe;
        break;
      case 4:
        titles=AppStrings.providingInformationWill;
        break;
      case 5:
        titles=AppStrings.thisSomeShortDescription;
        break;
    }
    return titles;
  }

  static String buttonTitle(int index) {
    String titles="";
    switch (index) {
      case 0:
        titles=AppStrings.continueButton;
        break;
      case 1:
        titles=AppStrings.continueButton;
        break;
      case 2:
        titles=AppStrings.verifyAccount;
        break;
      case 3:
        titles=AppStrings.letGetStarted;
        break;
      case 4:
        titles=AppStrings.complete;
        break;
      case 5:
        titles=AppStrings.complete;
        break;
    }
    return titles;
  }

  static Widget body(int index) {
    Widget body=Container();
    switch (index) {
      case 0:
        body=AccountInformation();
        break;
      case 1:
        body=PersonalInformation();
        break;
      case 2:
        body=Verification();
        break;
      case 3:
        body=MedicalHistory();
        break;
      case 4:
        body=PersonalizeProfile();
        break;
      case 5:
        body=Allergies();
        break;
    }
    return body;
  }

  static List<MedicalTypeModel> medicalType= [
    MedicalTypeModel(title: AppStrings.generalPatientInfo, status: AppStrings.incomplete),
    MedicalTypeModel(title: AppStrings.allergiesAndReactions, status: AppStrings.incomplete),
    MedicalTypeModel(title: AppStrings.medicalConditions, status: AppStrings.complete),
    MedicalTypeModel(title: AppStrings.medication, status: AppStrings.complete),
  ];
}

class MedicalTypeModel {
  final String title;
  final String status;

  MedicalTypeModel({required this.title, required this.status});
}