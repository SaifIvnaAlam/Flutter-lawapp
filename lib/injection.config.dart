// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:lawapp/auth/application/cubit/auth_cubit.dart' as _i7;
import 'package:lawapp/auth/domain/interface/i_auth_facade.dart' as _i5;
import 'package:lawapp/auth/infrastructure/auth_facade.dart' as _i6;
import 'package:lawapp/core/infrastructure/firebase_injectable_module.dart'
    as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.lazySingleton<_i3.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignin);
    gh.lazySingleton<_i4.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i5.IAuthFacade>(() => _i6.AuthFacade(
          gh<_i4.FirebaseAuth>(),
          gh<_i3.GoogleSignIn>(),
        ));
    gh.factory<_i7.AuthCubit>(() => _i7.AuthCubit(gh<_i5.IAuthFacade>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i8.FirebaseInjectableModule {}
