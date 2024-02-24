import 'package:flutter/material.dart';
import 'package:islamy_app_c10/providers/setings_provider.dart';
import 'package:islamy_app_c10/ui/home/tabs/language_sheet.dart';
import 'package:islamy_app_c10/ui/home/tabs/theme_sheet.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class SettingsWidget extends StatefulWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.language,style: TextStyle(fontSize: 20),),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              showLanguageBottomSheet();
            },
            child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: Theme.of(context).colorScheme.primary
                    )
                ),
                child: Text(provider.language == "ar"?"العربية":"English",style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).primaryColor
                ))),
          ),
          SizedBox(height: 20,),
          Text(AppLocalizations.of(context)!.theme,style: TextStyle(fontSize: 20),),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              showThemeBottomSheet();
            },
            child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: Theme.of(context).colorScheme.primary
                    )
                ),
                child: Text(provider.theme == ThemeMode.dark
                    ?AppLocalizations.of(context)!.dark
                    :AppLocalizations.of(context)!.light,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).primaryColor
                    ))),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(context: context, builder: (context){
      return ThemeSheet();
    });
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(context: context, builder: (context){
      return LanguageSheet();
    });
  }
}
