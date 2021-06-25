import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seller_app/common/localizations.dart';
import 'package:seller_app/config/routes.dart';
import 'package:seller_app/data/model/onboarding_model.dart';
import 'package:seller_app/logic/cubit/onboarding/onboarding_cubit.dart';
import 'package:seller_app/screens/widgets/button_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  static Widget create(BuildContext context, dynamic args) =>
      OnBoardingScreen();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: _OnBoardingScreen(),
    );
  }
}

class _OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              pageSnapping: true,
              controller: pageController,
              onPageChanged: (index) {
                context.read<OnboardingCubit>().slide(index);
              },
              itemCount: onboardingPages.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(onboardingPages[index].imageAsset),
                      SizedBox(
                        height: 32,
                      ),
                      Text(
                        onboardingPages[index].title,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 64.0),
                        child: Text(
                          onboardingPages[index].description,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      RoudedButton(
                        width: MediaQuery.of(context).size.width * 0.4,
                        text: AppLocalizations.of(context)!.masuk,
                        press: () {
                          Navigator.pushNamed(context, NavigationKey.SignIn);
                        },
                      ),
                      RoudedButton(
                        width: MediaQuery.of(context).size.width * 0.4,
                        text: AppLocalizations.of(context)!.daftar,
                        press: () {
                          Navigator.pushNamed(context, NavigationKey.SignUp);
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildDotRow(context),
                      buildNextFlatButton(context, pageController),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  BlocBuilder buildNextFlatButton(
      BuildContext context, PageController pageController) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return TextButton(
          onPressed: state.count < 2
              ? () {
                  context.read<OnboardingCubit>().forward();
                  pageController.animateToPage(state.count + 1,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.ease);
                }
              : null,
          child: Text(
            AppLocalizations.of(context)!.selanjutnya,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: state.count < 2
                  ? Theme.of(context).primaryColor
                  : Colors.grey,
            ),
          ),
        );
      },
    );
  }

  Row buildDotRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List.generate(
        onboardingPages.length,
        (index) => BlocBuilder<OnboardingCubit, OnboardingState>(
            builder: (context, state) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 200),
            margin: EdgeInsets.only(right: 5),
            height: 8,
            width: state.count == index ? 20 : 8,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(5),
            ),
          );
        }),
      ),
    );
  }
}
