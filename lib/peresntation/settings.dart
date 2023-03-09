import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen();

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        shadowColor: Colors.transparent,
      ),
      backgroundColor: const Color(0xffF3F5F9),
      body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          child: SettingsList(
            sections: [
              SettingsSection(
                title: Text('Common'),
                tiles: <SettingsTile>[
                  SettingsTile.navigation(
                    leading: Icon(Icons.language),
                    title: InkWell(
                        onTap: () {
                        },
                        child: Text('Language')),
                    value: Text('English'),
                  ),
                ],
              ),
              SettingsSection(
                title: Text('Security'),
                tiles: <SettingsTile>[
                  SettingsTile.navigation(
                    leading: Icon(Icons.password),
                    title: GestureDetector(child: Text('Change password')),
                    description: Text(
                      'If you forget your password or want to change it',
                    ),
                  ),
                  SettingsTile.switchTile(
                    onToggle: (_) {},
                    initialValue: true,
                    leading: Icon(Icons.fingerprint),
                    title: Text('Use fingerprint'),
                    description: Text(
                      'Allow application to access stored fingerprint IDs',
                    ),
                  ),
                ],
              ),
              SettingsSection(
                title: Text('Account'),
                tiles: <SettingsTile>[
                  SettingsTile.switchTile(
                    onToggle: (_) {},
                    initialValue: true,
                    leading: Icon(Icons.mail),
                    title: Text('Receive messages via e-mail'),
                    enabled: false,
                  ),
                ],
              ),
              SettingsSection(
                title: Text('Misc'),
                tiles: <SettingsTile>[
                  SettingsTile.navigation(
                    leading: Icon(Icons.share),
                    title: Text('Share App'),
                  ),
                  SettingsTile.navigation(
                    leading: Icon(Icons.description),
                    title: Text('Terms of Service'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ])),
    );
  }
}
