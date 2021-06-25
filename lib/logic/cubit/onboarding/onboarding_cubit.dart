import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial(count: 0));

  void forward() => emit(OnboardingNext(count: state.count + 1));

  void slide(int value) {
    return emit(OnboardingInitial(count: value));
  }
}
