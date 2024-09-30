import 'package:adventure_planner/common/modal_sheet/show_modal_sheet.dart';
import 'package:adventure_planner/login/widgets/login_form.dart';
import 'package:adventure_planner/plan_generation/widget/shared_appbar_hero.dart';
import 'package:adventure_planner/sign_up/bloc/sign_up_bloc.dart';
import 'package:adventure_planner/sign_up/bloc/sign_up_event.dart';
import 'package:adventure_planner/sign_up/bloc/sign_up_state.dart';
import 'package:adventure_planner/utils/constants/app_spaces.dart';
import 'package:adventure_planner/utils/constants/common_colors.dart';
import 'package:adventure_planner/utils/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

import '../../plan_generation/widget/bottom_action_bar.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return SheetContentScaffold(
          appBar: SharedAppBarHero(
            appbar: AppBar(
              toolbarHeight: AppSpaces.space7,
            ),
          ),
          body: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpaces.space7,
            ),
            width: double.infinity,
            color: CommonColors.neutrals8,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Sign up',
                  style: AppTextStyle.headline4.copyWith(
                    color: CommonColors.neutrals1,
                  ),
                ),
                const SizedBox(height: AppSpaces.space8),
                Column(
                  children: [
                    Container(
                      height: AppSpaces.space10,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: CommonColors.neutrals4,
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(90),
                      ),
                      alignment: Alignment.center,
                      child: TextFormField(
                        controller: nameController,
                        textAlignVertical: TextAlignVertical.center,
                        cursorColor: CommonColors.neutrals2,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          isCollapsed: true,
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: AppSpaces.space5,
                            vertical: AppSpaces.space5,
                          ),
                          hintText: 'Full Name',
                          hintStyle: AppTextStyle.caption,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSpaces.space6,
                    ),
                    Container(
                      height: AppSpaces.space10,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: CommonColors.neutrals4,
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(90),
                      ),
                      alignment: Alignment.center,
                      child: TextFormField(
                        controller: emailController,
                        textAlignVertical: TextAlignVertical.center,
                        cursorColor: CommonColors.neutrals2,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          isCollapsed: true,
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: AppSpaces.space5,
                            vertical: AppSpaces.space5,
                          ),
                          hintText: 'Email',
                          hintStyle: AppTextStyle.caption,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSpaces.space6,
                    ),
                    Container(
                      height: AppSpaces.space10,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: CommonColors.neutrals4,
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(90),
                      ),
                      alignment: Alignment.center,
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        cursorColor: CommonColors.neutrals2,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          isCollapsed: true,
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: AppSpaces.space5,
                            vertical: AppSpaces.space5,
                          ),
                          alignLabelWithHint: true,
                          hintText: 'Password',
                          hintStyle: AppTextStyle.caption,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSpaces.space6,
                    ),
                    Container(
                      height: AppSpaces.space10,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: CommonColors.neutrals4,
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(90),
                      ),
                      alignment: Alignment.center,
                      child: TextFormField(
                        controller: confirmPasswordController,
                        textAlignVertical: TextAlignVertical.center,
                        cursorColor: CommonColors.neutrals2,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          isCollapsed: true,
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: AppSpaces.space5,
                            vertical: AppSpaces.space5,
                          ),
                          hintText: 'Confirm Password',
                          hintStyle: AppTextStyle.caption,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSpaces.space6,
                    ),
                  ],
                ),
              ],
            ),
          ),
          bottomBar: BottomActionBar(
            label: 'Sign up',
            onPressed: () {
              // Call sign up API
              BlocProvider.of<SignUpBloc>(context).add(
                SignUpSubmitted(
                  passwordConfirmation: confirmPasswordController.text,
                  name: nameController.text,
                  email: emailController.text,
                  password: passwordController.text,
                  context: context,
                ),
              );
            },
            secondLabel: 'Already have an account?',
            secondText: 'Log in',
            secondOnPressed: () {
              Navigator.pop(context);
              CommonModalSheet.show(
                context,
                isFullScreen: false,
                child: const LoginForm(),
              );
            },
          ),
        );
      },
    );
  }
}
