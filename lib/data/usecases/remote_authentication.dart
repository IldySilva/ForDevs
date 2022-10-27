import '../../domain/usecases/usescases.dart';
import '../https/http_client.dart';

class RemoteAuthentication {
  final HttpClient httpClient;
  final String url;
  RemoteAuthentication({required this.httpClient, required this.url});

  Future<void> ?auth(AuthenticationParams params) async {
    final body = RemoteAuthParams.fromEntity(params).toMap();
   return  await httpClient.request(url: url, method: 'post', body: body);
  }
}

class RemoteAuthParams {
  final String email;
  final String password;

  RemoteAuthParams({required this.email, required this.password});

  factory RemoteAuthParams.fromEntity(AuthenticationParams params) {
    return RemoteAuthParams(email: params.email, password: params.password);
  }

  Map<String, dynamic> toMap() {
    return {'email': email, 'password': password};
  }
}
