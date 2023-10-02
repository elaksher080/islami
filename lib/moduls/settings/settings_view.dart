import 'package:flutter/material.dart';
import 'package:islami/moduls/settings/widget/language_bottom_sheet_widget.dart';
import 'package:islami/moduls/settings/widget/setting_item.dart';
import 'package:islami/moduls/settings/widget/theme_mood_bottom_sheet.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SettingItem(
            settingOptionTitle: "Language",
            selectedOption: "English",
            onOptionToped: () {
              showLanguageBottomSheet(context);
            },
          ),
          /////////////////////////////////////////////////////////////////////////////////
          SizedBox(height: 50),

          SettingItem(
            settingOptionTitle: "Theme Mood",
            selectedOption: "Dark",
            onOptionToped: () {
              showThemeBottomSheet(context);
            },
          ),
          ///////////////////////////////////////////////////////
        ],
      ),
    );
  }

  void showLanguageBottomSheet(context) {
    showModalBottomSheet(
        context: context, builder: (context) => LanguageBottomSheet());
  }

  void showThemeBottomSheet(context) {
    showModalBottomSheet(
        context: context, builder: (context) => ThemeMoodBottom());
  }
}
