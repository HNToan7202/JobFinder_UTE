import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/models/common_response.dart';
import '../../../../../../di.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
}
