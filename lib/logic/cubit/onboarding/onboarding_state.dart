part of 'onboarding_cubit.dart';

abstract class OnboardingState extends Equatable {
  final int count;

  const OnboardingState({required this.count});

  @override
  List<Object> get props => [count];
}

class OnboardingInitial extends OnboardingState {
  OnboardingInitial({required int count}) : super(count: count);
}

class OnboardingNext extends OnboardingState {
  OnboardingNext({required int count}) : super(count: count);
}
