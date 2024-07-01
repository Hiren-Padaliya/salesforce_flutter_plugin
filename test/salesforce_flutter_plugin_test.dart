import 'package:flutter_test/flutter_test.dart';
import 'package:salesforce_flutter_plugin/salesforce_flutter_plugin.dart';
import 'package:salesforce_flutter_plugin/salesforce_flutter_plugin_platform_interface.dart';
import 'package:salesforce_flutter_plugin/salesforce_flutter_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSalesforceFlutterPluginPlatform
    with MockPlatformInterfaceMixin
    implements SalesforceFlutterPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SalesforceFlutterPluginPlatform initialPlatform = SalesforceFlutterPluginPlatform.instance;

  test('$MethodChannelSalesforceFlutterPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSalesforceFlutterPlugin>());
  });

  test('getPlatformVersion', () async {
    SalesforceFlutterPlugin salesforceFlutterPlugin = SalesforceFlutterPlugin();
    MockSalesforceFlutterPluginPlatform fakePlatform = MockSalesforceFlutterPluginPlatform();
    SalesforceFlutterPluginPlatform.instance = fakePlatform;

    expect(await salesforceFlutterPlugin.getPlatformVersion(), '42');
  });
}
