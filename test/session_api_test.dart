import 'package:docker_client/api.dart';
import 'package:test/test.dart';


/// tests for SessionApi
void main() {
  var instance = SessionApi();

  group('tests for SessionApi', () {
    // Initialize interactive session
    //
    // Start a new interactive session with a server. Session allows server to call back to the client for advanced capabilities.  ### Hijacking  This endpoint hijacks the HTTP connection to HTTP2 transport that allows the client to expose gPRC services on that connection.  For example, the client sends this request to upgrade the connection:  ``` POST /session HTTP/1.1 Upgrade: h2c Connection: Upgrade ```  The Docker daemon responds with a `101 UPGRADED` response follow with the raw stream:  ``` HTTP/1.1 101 UPGRADED Connection: Upgrade Upgrade: h2c ``` 
    //
    //Future session() async 
    test('test session', () async {
      // TODO
    });

  });
}
