import 'package:flutter/material.dart';
import 'package:islamy_app_c10/ui/home/tabs/language_sheet.dart';
import 'package:islamy_app_c10/ui/home/tabs/theme_sheet.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Language",style: TextStyle(fontSize: 20),),
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
                child: Text("English",style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).primaryColor
                ))),
          ),
          SizedBox(height: 20,),
          Text("Theme",style: TextStyle(fontSize: 20),),
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
                child: Text("Light",style: Theme.of(context).textTheme.bodyMedium?.copyWith(
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
