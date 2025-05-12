part of 'home_bloc.dart';

@immutable
abstract class HomeState {
  const HomeState();
}

class HomeInitial extends HomeState {
  const HomeInitial();
}

class HomeLoading extends HomeState {
  const HomeLoading();
}

class HomeLoaded extends HomeState {
  // 예시: final List<String> items;
  const HomeLoaded(); // required this.items});
}

class HomeError extends HomeState {
  final String message;
  const HomeError({required this.message});
}
