import 'package:flutter/material.dart';

class ChooseStore extends StatefulWidget {
  @override
  _ChooseStoreState createState() => _ChooseStoreState();
}

class _ChooseStoreState extends State<ChooseStore> {
  List<String> stores = [
    'SF flosom and 13th St',
    'San Francisco Central',
    'San Francisco CBD East',
    'San Francisco West',
    'San Francisco Stonestown',
    'Daly City Westlake',
    'Almenda',
    'Colma'
  ];
  List<String> location = [
    'San Francisco, CA',
    'San Francisco, CA',
    'San Francisco, CA',
    'San Francisco, CA',
    'San Francisco, CA',
    'Daly City, CA',
    'Almenda, CA',
    'Colma, CA'
  ];

  int selected = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20,left: 20),
                      child: Icon((Icons.arrow_back),color: Theme.of(context).primaryColor,),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 90),
                  child: Text(
                    'Choose a store',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],),

              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      hoverColor: Theme.of(context).primaryColor,
                      focusColor: Theme.of(context).primaryColor,
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(
                        Icons.send,
                        color: Theme.of(context).primaryColor,
                      )),
                ),
              ),
              Container(
                height: 700,
                child: ListView.builder(
                  itemBuilder: (context, index) => ListTile(
                    leading: IconButton(
                      onPressed: () {
                        setState(() {
                          selected = index;
                        });
                      },
                      icon: Icon(
                        selected == index
                            ? Icons.radio_button_checked
                            : Icons.radio_button_off_outlined,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    title: Text(stores[index]),
                    subtitle: Text(location[index]),
                    trailing: Icon(Icons.error),
                  ),
                  itemCount: stores.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
