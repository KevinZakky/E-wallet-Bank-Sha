import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ewallet_project_app/services/auth_services.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      // TODO: implement event handler
      if (event is AuthCheckEmail) {
        try {
          emit(AuthLoading());

          final res = await AuthServices().checkEmail(event.email);
          if (res == false) {
            emit(AuthCheckEmailSuccess());
          } else {
            emit(
              AuthFailed('Email sudah digunakan!'),
            );
          }
        } catch (e) {
          emit(AuthFailed(e.toString()));
        }
      }
    });
  }
}
