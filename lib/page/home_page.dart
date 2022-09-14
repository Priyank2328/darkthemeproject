import 'package:darkthemeproject/main.dart';
import 'package:darkthemeproject/provider/theme_provider.dart';
import 'package:darkthemeproject/widget/change_theme_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:theme_example/main.dart';
// import 'package:theme_example/page/profile_widget.dart';
// import 'package:theme_example/provider/theme_provider.dart';
// import 'package:theme_example/widget/change_theme_button_widget.dart';

import 'navigationbar_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? 'DarkTheme'
        : 'LightTheme';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(MyApp.title),
        actions: [
          ChangeThemeButtonWidget(),
        ],
      ),
      body: Center(
        child: Text(
          'Hello $text!',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
