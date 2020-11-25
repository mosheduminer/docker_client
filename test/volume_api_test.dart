import 'package:docker_client/api.dart';
import 'package:test/test.dart';


/// tests for VolumeApi
void main() {
  var instance = VolumeApi();

  group('tests for VolumeApi', () {
    // Create a volume
    //
    //Future<Volume> volumeCreate(VolumeConfig volumeConfig) async 
    test('test volumeCreate', () async {
      // TODO
    });

    // Remove a volume
    //
    // Instruct the driver to remove the volume.
    //
    //Future volumeDelete(String name, { bool force }) async 
    test('test volumeDelete', () async {
      // TODO
    });

    // Inspect a volume
    //
    //Future<Volume> volumeInspect(String name) async 
    test('test volumeInspect', () async {
      // TODO
    });

    // List volumes
    //
    //Future<VolumeListResponse> volumeList({ String filters }) async 
    test('test volumeList', () async {
      // TODO
    });

    // Delete unused volumes
    //
    //Future<VolumePruneResponse> volumePrune({ String filters }) async 
    test('test volumePrune', () async {
      // TODO
    });

  });
}
