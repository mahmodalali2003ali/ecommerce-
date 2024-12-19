import 'package:ecommere/core/color_app.dart';
import 'package:ecommere/views/auth/ui/widgets/custom_row_with_arrow.dart';
import 'package:ecommere/views/auth/ui/widgets/custom_text_buttom.dart';
import 'package:ecommere/views/auth/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    bool isSecured = true;
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [

          Column(
            children: [
                const SizedBox(
                      height: 20,
                    ),
              const Center(
                child: Text(
                  "Welcome To Our Market",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Card(
                margin: const EdgeInsets.all(24),
                color: AppColors.kWhiteColor,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const CustomTextFormField(labelText: 'Email'),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextFormField(
                        isSecured: isSecured,
                        labelText: 'Passowrd',
                        suffIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.visibility_off),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomTextButton(
                        onTap: () {},
                        text: "Forgot Password?",
                        fontSize: 22,
                        colorText: AppColors.kPrimaryColor,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                          CustomRowWithArrowBtn(
                        text: 'Login',
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomRowWithArrowBtn(
                        text: 'Login With Google',
                        onTap: () {
                          
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "Already have an account? ",
                            style: TextStyle(
                                fontSize: 18,
                                color: AppColors.kBlackColor,
                                fontWeight: FontWeight.bold),
                          ),
                          CustomTextButton(
                              onTap: () {},
                              text: "Sign Up ",
                              fontSize: 20,
                              colorText: AppColors.kPrimaryColor),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
