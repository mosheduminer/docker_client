import 'package:docker_client/api.dart';
import 'package:test/test.dart';


/// tests for PluginApi
void main() {
  var instance = PluginApi();

  group('tests for PluginApi', () {
    // Get plugin privileges
    //
    //Future<List<PluginPrivilegeItem>> getPluginPrivileges(String remote) async 
    test('test getPluginPrivileges', () async {
      // TODO
    });

    // Create a plugin
    //
    //Future pluginCreate(String name, { MultipartFile tarContext }) async 
    test('test pluginCreate', () async {
      // TODO
    });

    // Remove a plugin
    //
    //Future<Plugin> pluginDelete(String name, { bool force }) async 
    test('test pluginDelete', () async {
      // TODO
    });

    // Disable a plugin
    //
    //Future pluginDisable(String name) async 
    test('test pluginDisable', () async {
      // TODO
    });

    // Enable a plugin
    //
    //Future pluginEnable(String name, { int timeout }) async 
    test('test pluginEnable', () async {
      // TODO
    });

    // Inspect a plugin
    //
    //Future<Plugin> pluginInspect(String name) async 
    test('test pluginInspect', () async {
      // TODO
    });

    // List plugins
    //
    // Returns information about installed plugins.
    //
    //Future<List<Plugin>> pluginList({ String filters }) async 
    test('test pluginList', () async {
      // TODO
    });

    // Install a plugin
    //
    // Pulls and installs a plugin. After the plugin is installed, it can be enabled using the [`POST /plugins/{name}/enable` endpoint](#operation/PostPluginsEnable). 
    //
    //Future pluginPull(String remote, { String name, String xRegistryAuth, List<InlineObject> body }) async 
    test('test pluginPull', () async {
      // TODO
    });

    // Push a plugin
    //
    // Push a plugin to the registry. 
    //
    //Future pluginPush(String name) async 
    test('test pluginPush', () async {
      // TODO
    });

    // Configure a plugin
    //
    //Future pluginSet(String name, { List<String> body }) async 
    test('test pluginSet', () async {
      // TODO
    });

    // Upgrade a plugin
    //
    //Future pluginUpgrade(String name, String remote, { String xRegistryAuth, List<InlineObject> body }) async 
    test('test pluginUpgrade', () async {
      // TODO
    });

  });
}
