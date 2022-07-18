import 'package:equatable/equatable.dart';

import '../../model/user_model.dart';
import '../../repository/user_repository.dart';
import '../bloc_export.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _userRepository;

  UserBloc(this._userRepository) : super(UserLoadingState()) {
    on<UserLoadEvent>(_loadUserData);
  }

  Future<void> _loadUserData(UserEvent event, Emitter<UserState> emit) async {
    emit(UserLoadingState());
   try {
     final UserModel user = await _userRepository.getUser();
     emit(UserLoadedState(user));
   } catch (e) {
     emit(UserErrorState());
   }
  }
}
