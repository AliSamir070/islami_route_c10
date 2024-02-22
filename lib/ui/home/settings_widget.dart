import 'package:flutter/material.dart';
import 'package:islamy_app_c10/ui/home/themesheet.dart';

import 'languagesheet.dart';

class SettingsWidget extends StatefulWidget {


  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('language',style: TextStyle(fontSize: 20, color: Theme.of(context).dividerColor)),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              language();
            },
            child: Container(
               decoration: BoxDecoration(
                 color: Colors.white,

                 borderRadius: BorderRadius.circular(20),
               ),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              width: double.infinity,
                child: Text('English',style: TextStyle(color: Theme.of(context).dividerColor,fontSize: 20),)),
          ),
          SizedBox(height: 20,),
          Text('Theme',style: TextStyle(fontSize: 20, color: Theme.of(context).dividerColor)),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              theme();
            },
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,

                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: double.infinity,
                child: Text('Light',style: TextStyle(color: Theme.of(context).dividerColor,fontSize: 20),)),
          ),

        ],
      ),
    );
  }

  void language() {
    showModalBottomSheet(context: context, builder:  (context) {
      return languageSheet();
    },);
  }

  void theme() {
    showModalBottomSheet(context: context, builder:  (context) {
      return themeSheet();
    },);
  }


}


