import 'package:injectable/injectable.dart';
import 'package:tfg_v2/di/dependency_injection.dart';
import 'package:tfg_v2/domain/repository/auth/auth_repository.dart';
import 'package:tfg_v2/ui/navigation/navigator.dart';

@Injectable()
class LoginUseCase {
  final AuthRepository _authRepository;

  LoginUseCase(this._authRepository);

  TfgNavigator get navigator => getIt<TfgNavigator>();

  Future<void> call() async {
    // todo connect with Auth0 and try login. If correct, save user
    // todo determine return type

    navigator.replaceToHome();
  }
}