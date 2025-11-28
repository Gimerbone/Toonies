import 'package:toonies/features/movies/presentation/utils/export.dart';

class NavCubit extends Cubit<int> {
  NavCubit() : super(0);

  void updateIndex(int index) => emit(index);
}
