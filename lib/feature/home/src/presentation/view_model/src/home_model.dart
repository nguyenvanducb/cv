import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeState {
  int selectedPackageIndex;


  HomeState({
    this.selectedPackageIndex = 4,
  });

  HomeState copyWith({
    int? selectedPackageIndex,
  }) {
    return HomeState(
      selectedPackageIndex: selectedPackageIndex ?? this.selectedPackageIndex,
    );
  }
}

class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier()
      : super(HomeState(
          selectedPackageIndex: 4,
        ));

  void selectedPackage(int package) {
    state = state.copyWith(
      selectedPackageIndex: package,
    );
  }
}
