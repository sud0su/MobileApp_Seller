import 'package:seller_app/common/path.dart';

class OnboardingModel {
  final imageAsset;
  final title;
  final description;

  OnboardingModel(this.imageAsset, this.title, this.description);
}

List<OnboardingModel> onboardingPages = [
  OnboardingModel('${FilePath.onBoarding}order.png', 'One', 'description'),
  OnboardingModel('${FilePath.onBoarding}cook.png', 'Two', 'description'),
  OnboardingModel('${FilePath.onBoarding}deliver.png', 'Three', 'description'),
];
