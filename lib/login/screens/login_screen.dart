import 'package:adventure_planner/common/modal_sheet/show_modal_sheet.dart';
import 'package:adventure_planner/login/bloc/login_bloc.dart';
import 'package:adventure_planner/login/bloc/login_state.dart';
import 'package:adventure_planner/login/widgets/login_form.dart';
import 'package:adventure_planner/resources/generated/assets.gen.dart';
import 'package:adventure_planner/utils/constants/common_colors.dart';
import 'package:adventure_planner/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      CommonModalSheet.show(
        context,
        isFullScreen: false,
        child: const LoginForm(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.images.background2.path), // Update the path to your image
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.04,
                left: MediaQuery.of(context).size.width * 0.05,
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        softWrap: true,
                        'Adventure Planner',
                        style: AppTextStyle.headline4.copyWith(
                          color: CommonColors.neutrals1,
                        ),
                      ),
                      Text(
                        'Find a great experience.',
                        style: AppTextStyle.body2.copyWith(
                          color: CommonColors.neutrals4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
