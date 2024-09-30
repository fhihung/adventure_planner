import 'package:adventure_planner/common/modal_sheet/show_modal_sheet.dart';
import 'package:adventure_planner/login/bloc/login_bloc.dart';
import 'package:adventure_planner/login/bloc/login_event.dart';
import 'package:adventure_planner/login/bloc/login_state.dart';
import 'package:adventure_planner/plan_generation/widget/bottom_action_bar.dart';
import 'package:adventure_planner/sign_up/pages/sign_up_page.dart';
import 'package:adventure_planner/utils/constants/common_colors.dart';
import 'package:adventure_planner/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return SheetContentScaffold(
          body: Container(
            padding: const EdgeInsets.only(
              top: AppSpaces.space7,
              left: AppSpaces.space7,
              right: AppSpaces.space7,
            ),
            width: double.infinity,
            color: CommonColors.neutrals8,
            child: Column(
              children: [
                Text(
                  'Sign in',
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
                  ],
                ),
                const SizedBox(
                  height: AppSpaces.space4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot password?',
                      style: AppTextStyle.caption2Bold.copyWith(
                        color: CommonColors.neutrals3,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          bottomBar: BottomActionBar(
            label: 'Sign in',
            secondText: 'Sign up',
            secondLabel: "Don't have an account?",
            secondOnPressed: () {
              Navigator.pop(context);
              CommonModalSheet.showModalSheet(
                context,
                isFullScreen: false,
                child: const SignUpPage(),
              );
            },
            onPressed: () {
              BlocProvider.of<LoginBloc>(context).add(
                LoginButtonPressed(
                  email: emailController.text,
                  password: passwordController.text,
                  context: context,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
