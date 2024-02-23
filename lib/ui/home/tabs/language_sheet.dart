import 'package:flutter/material.dart';
import 'package:islamy_app_c10/providers/setings_provider.dart';
import 'package:provider/provider.dart';

class LanguageSheet extends StatefulWidget {
  const LanguageSheet({Key? key}) : super(key: key);

  @override
  State<LanguageSheet> createState() => _LanguageSheetState();
}

class _LanguageSheetState extends State<LanguageSheet> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
         getSelectedItem(provider.language == "ar"?"العربية":"English"),
          SizedBox(height: 15,),
          InkWell(
              onTap: () async {
                Navigator.pop(context);
                await provider.changeLanguage(provider.language == "ar"?"en":"ar");
              },
              child: getUnselectedItem(provider.language == "ar"?"English":"العربية")),
        ],
      ),
    );
  }

  Widget getSelectedItem(String language){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(language,style: Theme.of(context).textTheme.labelLarge,),
        Icon(
          Icons.check,
          color: Theme.of(context).dividerColor,

        )
      ],
    );
  }

  Widget getUnselectedItem(String language){
    return Text(language,style: Theme.of(context).textTheme.labelSmall,);
  }
}
