import 'package:faker/faker.dart';
import 'package:fordevs/data/https/http_client.dart';
import 'package:fordevs/data/usecases/remote_authentication.dart';
import 'package:fordevs/domain/usecases/usecase_authentication.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';




class HttpClientSpy extends Mock implements HttpClient {}

void main() {
  test("Should Call httpClient with correct URL", () async {
    final httpClient = HttpClientSpy();
    final url = faker.internet.httpUrl();
    final sut = RemoteAuthentication(httpClient: httpClient, url: url);

    await sut. auth( AuthenticationParams(email: "email", password: "secret"));


  });
}
