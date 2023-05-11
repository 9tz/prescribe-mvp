import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prescribe_mvp/Feature/Login/Controller/login_controller.dart';
import 'package:prescribe_mvp/Feature/Register/View/register_screen.dart';
import 'package:prescribe_mvp/Util/app_colora.dart';
import 'package:prescribe_mvp/Util/app_padding.dart';
import 'package:prescribe_mvp/Util/app_strings.dart';
import 'package:prescribe_mvp/Util/app_styles.dart';
import 'package:prescribe_mvp/Widgets/custom_button.dart';
import 'package:prescribe_mvp/Widgets/custom_textfield.dart';
import 'package:prescribe_mvp/Widgets/googleButton.drt.dart';
import 'package:prescribe_mvp/Widgets/other_option_line.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:prescribe_mvp/reusable_widgets/reusable_widgets.dart';
// import 'package:prescribe_mvp/screens/home_screen.dart';
import 'package:prescribe_mvp/screens/reset_password.dart';
import 'package:prescribe_mvp/screens/signup_screen.dart';
import 'package:prescribe_mvp/services/firebase_services.dart';
import 'package:prescribe_mvp/Util/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

import '../../Home Screen/View/home_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  LoginController loginController = Get.put(LoginController());

  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: Container(
        padding: AppPadding.primaryPadding,
        child: Column(
          children: [
            SizedBox(
              height: 60.h,
            ),
            Text(
              AppStrings.welcomeBack,
              style: AppStyles.primeryHeading(color: AppColors.semiBlack),
            ),
            SizedBox(
                width: 268.w,
                child: Text(
                  AppStrings.soHappyToSeeYou,
                  textAlign: TextAlign.center,
                  style: AppStyles.regularTextStyle(color: AppColors.lightGrey),
                )),
            SizedBox(
              height: 40.h,
            ),
            CustomTextField(
              controller: _emailTextController,
              label: AppStrings.emailAddress,
              hint: "someone@gmail.com",
            ),
            SizedBox(
              height: 16.h,
            ),
            Obx(() => CustomTextField(
                  controller: _passwordTextController,
                  label: AppStrings.password,
                  hint: AppStrings.enterPassword,
                  obscureText: loginController.showPassword.value,
                  suffixFun: loginController.toggleShowPassword,
                )),
            // reusableTextField("Email address", Icons.person_outline, false,
            //     _emailTextController),
            // const SizedBox(
            //   height: 20,
            // ),
            // reusableTextField("Enter Password", Icons.lock_outline, true,
            //     _passwordTextController),
            SizedBox(
              height: 4.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  AppStrings.forgotPassword,
                  style: AppStyles.heading2Style(),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            // CustomButton(label: AppStrings.login, buttonFunction: ()=> Get.to(HomeScreen()),),

            // SizedBox(height: 10.h,),
            // Spacer(),

            firebaseUIButton(context, "Sign In", () {
              FirebaseAuth.instance
                  .signInWithEmailAndPassword(
                      email: _emailTextController.text,
                      password: _passwordTextController.text)
                  .then((value) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              }).onError((error, stackTrace) {
                print("Error ${error.toString()}");
                _siginErroHandler(error.toString());
              });
            }),
            // InkWell(
            //     onTap: () => Get.to(RegisterScreen()),
            //     child: Text(
            //       AppStrings.doNotHaveAccount,
            //       style: AppStyles.buttonLabelStyle(
            //           color: AppColors.blueTextColor),
            //     )),
            SizedBox(
              height: 50.h,
            ),
            OtherOptionLine(),
            googleSignInButton(context, "Sign In with Google", () async {
              // FirebaseAuth.instance
              //     .signInWithProvider(GoogleAuthProvider())
              //     .then((value) {
              //   Navigator.push(context,
              //       MaterialPageRoute(builder: (context) => HomeScreen()));
              // }).onError((error, stackTrace) {
              //   print("Error ${error.toString()}");
              //   _siginErroHandler(error.toString());
              // });
              FirebaseService service = new FirebaseService();
              try {
                await service.signInwithGoogle();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              } catch (e) {
                if (e is FirebaseAuthException) {
                  _siginErroHandler(e.message!);
                }
              }
            })
          ],
        ),
      ),
    ));
  }
}

_siginErroHandler(String error_message) {
  var pos = error_message.lastIndexOf(']') + 1;
  Fluttertoast.showToast(
      msg: error_message.toString().substring(pos),
      toastLength: Toast.LENGTH_SHORT,
      timeInSecForIosWeb: 5,
      backgroundColor: Colors.white,
      textColor: Colors.red,
      gravity: ToastGravity.TOP);
}

Container firebaseUIButton(BuildContext context, String title, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.black26;
            }
            return Color.fromARGB(255, 69, 78, 163);
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
      ),
    ),
  );
}
