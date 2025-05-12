import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeInitial()) {
    on<LoadHomeDataEvent>(_onLoadHomeData);
  }

  Future<void> _onLoadHomeData(
    LoadHomeDataEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeLoading());
    try {
      // 예시: 데이터 로딩 로직 (API 호출 등)
      // await Future.delayed(const Duration(seconds: 1));
      // final List<String> items = List.generate(10, (index) => 'Item ${index + 1}');
      emit(const HomeLoaded()); // emit(HomeLoaded(items: items));
    } catch (error) {
      emit(HomeError(message: error.toString()));
    }
  }
}
