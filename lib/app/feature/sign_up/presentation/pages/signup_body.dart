import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:jobhub_ute/app/feature/sign_up/presentation/pages/verify_page.dart';

import '../../../../../common/btn/btn_default.dart';
import '../../../../../common/color_extension.dart';
import '../../../../../common/input/input_default.dart';
import '../../../../../common/text_theme.dart';
import '../../../../../common/utils/validator_util.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../login/presentation/page/login_page.dart';
import '../cubit/sign_up_cubit.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is VerifyAccountLoading) {
          EasyLoading.dismiss();
          Navigator.pushNamedAndRemoveUntil(
            context,
            VerifyAccountPage.routeName,
            (route) => false,
            arguments: context.read<SignUpCubit>().emailController.text,
          );
        }
        if (state is VerifyAccountError) {
          EasyLoading.dismiss();
          EasyLoading.showError(state.message);
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            child: Form(
              key: context.read<SignUpCubit>().formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 64,
                  ),
                  Image.asset(
                    Assets.images.logoFood.path,
                    width: media.width * 0.35,
                    height: media.width * 0.35,
                    fit: BoxFit.contain,
                  ),
                  Text(
                    AppLocalizations.of(context)!.signUp,
                    style: TextStyle(
                        color: AppColorScheme.primaryText,
                        fontSize: 30,
                        fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    AppLocalizations.of(context)!.detailSignUp,
                    style: TextStyle(
                        color: AppColorScheme.secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  InputDefault(
                    controller: context.read<SignUpCubit>().nameController,
                    validator: ValidatorUtils.nameValidator,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 25),
                      hintText: "Name",

                      hintStyle: TextStyle(
                          color: AppColorScheme.secondaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      //fillColor: AppColorScheme.inputBg,
                    ),
                    // controller: txtName,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InputDefault(
                    controller: context.read<SignUpCubit>().emailController,
                    validator: ValidatorUtils.emailValidator,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 25),
                      hintText: "Email",
                      hintStyle: TextStyle(
                          color: AppColorScheme.secondaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      //fillColor: AppColorScheme.inputBg,
                    ),
                    // controller: txtEmail,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InputDefault(
                    validator: ValidatorUtils.phoneValidator,
                    controller: context.read<SignUpCubit>().phoneController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 25),
                      hintText: "Mobile No",
                      hintStyle: TextStyle(
                          color: AppColorScheme.secondaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      //fillColor: AppColorScheme.inputBg,
                    ),
                    // controller: txtMobile,
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<SignUpCubit, SignUpState>(
                    builder: (context, state) {
                      return InputDefault(
                        controller:
                            context.read<SignUpCubit>().passwordController,
                        validator: ValidatorUtils.passwordValidator,
                        obscureText: !state.isPasswordVisible,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 25),
                          hintText: "Password",
                          suffixIcon: GestureDetector(
                            onTap: () {
                              context.read<SignUpCubit>().showPassword();
                            },
                            child: Image.asset(
                              !state.isPasswordVisible
                                  ? Assets.images.passwordIcons
                                      .path // Hiển thị biểu tượng cho mật khẩu hiển thị
                                  : Assets.images.hidePassword
                                      .path, // Hiển thị biểu tượng cho mật khẩu ẩn
                            ),
                          ),
                          hintStyle: TextStyle(
                              color: AppColorScheme.secondaryText,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          //fillColor: AppColorScheme.inputBg,
                        ),
                        // controller: txtPassword,
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<SignUpCubit, SignUpState>(
                    builder: (context, state) {
                      return InputDefault(
                        validator: (value) {
                          if (value !=
                              context
                                  .read<SignUpCubit>()
                                  .passwordController
                                  .text) {
                            return "Password not match";
                          }
                          return null;
                        },
                        controller: context
                            .read<SignUpCubit>()
                            .confirmPasswordController,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 25),
                          hintText: "Confirm Password",
                          suffixIcon: GestureDetector(
                            onTap: () {
                              context.read<SignUpCubit>().showConfirmPassword();
                            },
                            child: Image.asset(
                              !state.isConfirmPasswordVisible
                                  ? Assets.images.passwordIcons
                                      .path // Hiển thị biểu tượng cho mật khẩu hiển thị
                                  : Assets.images.hidePassword
                                      .path, // Hiển thị biểu tượng cho mật khẩu ẩn
                            ),
                          ),
                          hintStyle: TextStyle(
                              color: AppColorScheme.secondaryText,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          //fillColor: AppColorScheme.inputBg,
                        ),
                        // controller: txtConfirmPassword,
                        obscureText: !state.isConfirmPasswordVisible,
                      );
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  BtnDefault(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    title: AppLocalizations.of(context)!.signUp,
                    decoration: BoxDecoration(
                      color: AppColorScheme.kPrimary,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    onTap: () {
                      if (context
                          .read<SignUpCubit>()
                          .formKey
                          .currentState!
                          .validate()) {
                        EasyLoading.show(status: 'loading...');
                        context.read<SignUpCubit>().signUpAccount();
                      }
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          LoginPage.routeName, (route) => false);
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Already have an Account? ",
                            style: tStyle.PrM(
                                color: AppColorScheme.secondaryText,
                                fontWeight: FontWeight.w500)),
                        Text(AppLocalizations.of(context)!.login,
                            style: tStyle.PrM(
                                color: AppColorScheme.kPrimary,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
