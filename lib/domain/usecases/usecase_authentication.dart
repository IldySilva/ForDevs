import 'package:fordevs/domain/entities/entity_account.dart';

abstract class Authentication {
  Future<AccountEntity> auth({AuthenticationParams params});

}
class AuthenticationParams{
  final String email;
  final String  password;

  AuthenticationParams({required this.email, required this.password});

  Map<String, dynamic> toMap() {
    return {

      'email':email,
      'password': password
    };
  }
}