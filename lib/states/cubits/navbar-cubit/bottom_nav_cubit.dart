import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<int> {
  BottomNavCubit() : super(0);

  int screenIndex = 0;
  onTap(int index) => emit(screenIndex = index);
}
