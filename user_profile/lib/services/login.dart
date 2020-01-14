import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/people/v1.dart';
import 'google_http_client.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);

Future<void> signIn() async {
  try {
    var data = await _googleSignIn.signIn();
    print(data);
//    final authHeaders = await _googleSignIn.currentUser.authHeaders;
//    final httpClient = GoogleHttpClient(authHeaders);
//    responseData = await PeopleApi(httpClient).people.connections.list(
//          'people/me',
//          personFields: 'names,addresses',
//          pageSize: 100,
//        );
//    print(response);
  } catch (error) {
    print(error);
  }
}

Future<dynamic> signOut() async {
  var data = await _googleSignIn.disconnect();
  return data;
}
