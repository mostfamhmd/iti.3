import 'package:flutter/material.dart';

import 'list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 int index = 0;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(
                height: 40,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    for(int i = 0; i < cate.length; i++)
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              index = i;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                                color: index == i ? Colors.blue : Colors.grey,
                                borderRadius: BorderRadius.circular(25)),
                            child: Text(
                              cate[i],
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                          ),
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: switch (index) {
                    0 => Text(" المهمة ${cate[index]}", style: TextStyle(fontSize: 25),),
                    1 => Text(" المهمة ${cate[index]}", style: TextStyle(fontSize: 25),),
                    2 => Text(" المهمة ${cate[index]}", style: TextStyle(fontSize: 25),),
                    3 => Text(" المهمة ${cate[index]}", style: TextStyle(fontSize: 25),),
                    _ => Text(" المهمة ${cate[index]}", style: TextStyle(fontSize: 25),),
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
