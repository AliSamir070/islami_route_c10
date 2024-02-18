import 'package:flutter/material.dart';
import 'package:islamy_app_c10/ui/home/hadeth_model.dart';
import 'package:provider/provider.dart';

import '../../providers/setings_provider.dart';
import '../../style/app_theme.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = "HadethDetails";
  const HadethDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);

    HadethModel hadethModel = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.theme == ThemeMode.dark?"assets/images/dark_bg.png":"assets/images/bg3.png"),
              fit: BoxFit.fill
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(hadethModel.title),
        ),
        body: Column(
          children: [
            Expanded(
              child: Card(
                child: SingleChildScrollView(
                  child: Text(
                      hadethModel.content,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}