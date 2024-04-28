import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lawapp/auth/domain/interface/i_auth_facade.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final IAuthFacade _authFacade;
  AuthCubit(this._authFacade) : super(const AuthState.initial());

  Future<void> signInWithGoogle() async {
    var result = await _authFacade.signIn();

    result != null
        ? emit(AuthState.authenticated(result))
        : emit(const AuthState.unathenticated());
  }

  Future<void> getUserState() async {
    User? _res = await _authFacade.getUserState();
    if (_res != null) {
      emit(AuthState.authenticated(_res));
    } else {
      emit(const AuthState.unathenticated());
    }
  }
}
