import 'package:flutter/material.dart';
import 'package:islamy_app_c10/providers/setings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeSheet extends StatefulWidget {
  const ThemeSheet({Key? key}) : super(key: key);

  @override
  State<ThemeSheet> createState() => _ThemeSheetState();
}

class _ThemeSheetState extends State<ThemeSheet> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          getSelectedItem(provider.theme == ThemeMode.dark
              ? AppLocalizations.of(context)!.dark
              : AppLocalizations.of(context)!.light),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () async {
              Navigator.pop(context);
               await provider.changeTheme(provider.theme == ThemeMode.dark
                  ? ThemeMode.light
                  : ThemeMode.dark);
            },
            child: getUnselectedItem(
              provider.theme == ThemeMode.dark
                  ? AppLocalizations.of(context)!.light
                  : AppLocalizations.of(context)!.dark,
            ),
          ),
        ],
      ),
    );
  }

  Widget getSelectedItem(String theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          theme,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).dividerColor,
        )
      ],
    );
  }

  Widget getUnselectedItem(String theme) {
    return Text(
      theme,
      style: Theme.of(context).textTheme.labelSmall,
    );
  }
}
