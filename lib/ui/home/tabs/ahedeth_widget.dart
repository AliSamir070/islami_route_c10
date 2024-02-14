import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app_c10/ui/home/hadeth_model.dart';
import 'package:islamy_app_c10/ui/home/hadeth_title.dart';

class AhadethWidget extends StatefulWidget {

  @override
  State<AhadethWidget> createState() => _AhadethWidgetState();
}

class _AhadethWidgetState extends State<AhadethWidget> {
  @override
  Widget build(BuildContext context) {
    if(allAhadeth.isEmpty){
      loadAhadethFile();
    }
    return Column(
      children: [
        Expanded(child: Image.asset("assets/images/ahadeth_image.png")),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.symmetric(horizontal: BorderSide(
              color: Theme.of(context).dividerColor,
              width: 2
            ))
          ),
          child: Text(
            "Ahadeth",
            style:Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Expanded(
          flex: 3,
            child: allAhadeth.isEmpty
                ?Center(child: CircularProgressIndicator(),)
                :ListView.separated(
                itemBuilder: (context , index)=>HadethTitleItem(hadeth: allAhadeth[index]),
                separatorBuilder: (context,index){
                  return Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(5),
                    height: 2,
                    color: Theme.of(context).dividerColor,
                  );
                },
                itemCount: allAhadeth.length
            )
        )
      ],
    );
  }

  List<HadethModel> allAhadeth = [];

  void loadAhadethFile()async{
    String ahadethContent = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> hadethList = ahadethContent.trim().split("#");
    for(int i=0;i<hadethList.length;i++){
      List<String> oneHadeth = hadethList[i].trim().split("\n");
      String hadethTitle = oneHadeth[0];
      oneHadeth.removeAt(0);
      String hadethContent = oneHadeth.join(" ");
      allAhadeth.add(HadethModel(hadethTitle, hadethContent));
    }
    setState(() {

    });
  }
}
