// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:heroicons_flutter/heroicons_flutter.dart';
import 'package:heroicons_flutter/heroicons_list.dart';
import 'package:redditclone/DummyJson.dart';
import 'package:redditclone/PostWidget.dart';

class Comments extends StatelessWidget {
   Comments({super.key});


  
  @override
  Widget build(BuildContext context) {

  final commentPlaceHolder_1 = DummyComments("Helloworld404", "What's the new normal it's absolutely abnormal.", [{"name": "Bluesky1", "text" : "Her death be no pity"}, {"name": "Bluesky1", "text" : "Don't lift it, search for vaccine"}]);
  final commentPlaceHolder_2 = DummyComments("BlueSky", '''Why do i get a feeling  "New Normal will feel something Dystopian like from 1984''', [{"name": "Pascal", "text" : "hello"}, {"name": "Cobol99", "text" : "LOL"}]);
  final commentPlaceHolder_3 = DummyComments("Wild", "Woah Amazing!", [{"name": "Dartcode3", "text" : "True"} ]);
  List postComments = [];
  
  postComments.add(commentPlaceHolder_1.tojson());
  postComments.add(commentPlaceHolder_2.tojson());
  postComments.add(commentPlaceHolder_3.tojson());

  // print(postComments);
  
  
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          flexibleSpace: Container(
            margin: const EdgeInsets.only(top: 30),
            width: double.infinity,
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("lib/assets/images/profile2.png"), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.red),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "r/Coronavirus",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "by u/internetpostit",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey.shade500),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        backgroundColor: Colors.grey.shade50,
        // resizeToAvoidBottomInset: false,
        // bottomNavigationBar: const CustomBottomBar(),
        body:  Stack(children: [
          Contents(postComments: postComments,),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustomBottomBar(),
          )
        ]));
  }
}

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 70,
        decoration: const BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(width: 1.0, color: Colors.grey.shade300)),
                padding: const EdgeInsets.only(left: 5),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email or username",
                      hintStyle: TextStyle(color: Colors.grey.shade500),
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height: 50,
                  width: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Transform.rotate(
                        angle: -45 * 3 / 180,
                        child: const Icon(
                          HeroiconsOutline.paperAirplane,
                          size: 30,
                          color: Colors.white,
                        )),
                    style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        padding: const EdgeInsets.all(0.0),
                        backgroundColor: const Color(0xFFFF4500),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ))
            ],
          ),
        ));
  }
}

class Contents extends StatelessWidget {

  final postComments;
  const Contents({super.key, required this.postComments});



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: PostWidget(
              username: "r/Corronavirus",
              caption: '''Navigation the New Normal''',
              author: "u/internetpostit",
              time: "16h",
              votes: "28.2 k",
              comments: "nothing",
              video: "https://youtube.com",
              image: "",
              trending: false,
              openComment: (value) {},
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(bottom: 10, top: 10),
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width - 20,
              constraints: const BoxConstraints(minHeight: 300.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: const Row(
                            children: [
                              Text(
                                "Best Comments",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.keyboard_arrow_down_outlined)
                            ],
                          ),
                        ),
                        for(int i = 0; i < postComments.length; i++)
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              width: double.infinity,
                              constraints: BoxConstraints(minHeight: 50),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: Colors.red,
                                              image: DecorationImage(image: AssetImage("lib/assets/images/profile1.jpg"), fit: BoxFit.cover)

                                          ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                       Text(
                                       "${postComments[i]["sender"]}",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.grey),
                                      ),
                                      Container(
                                        constraints: const BoxConstraints(minHeight: 50),
                                        width:
                                            MediaQuery.of(context).size.width - 110,
                                        child:  Text(
                                          postComments[i]["message"],
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      // ,
                                    ],
                                  ),
                                ],
                              ),
                            ),
                                      SubComments(data: postComments[i]["replies"],),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 SizedBox(
                                  width: 70,
                                  child: TextButton(onPressed: (){}, child: Text("Reply", style: TextStyle(color: Color(0xFFFF4500), fontSize: 16),))),
                               ],
                             )
                          ],
                        ),

                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


class SubComments extends StatelessWidget {
  final data;
  SubComments({super.key, required this.data});



  @override
  Widget build(BuildContext context) {
    return Container(
                          margin: EdgeInsets.only(bottom: 0, top: 10),
                          width: MediaQuery.of(context).size.width / 2 + 100,
                          padding: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            border: Border(left: BorderSide(width: 2, color: Colors.grey.shade200),)
                          ),
                          constraints: BoxConstraints(minHeight: 50),
                          child:
                           Column(
                             children: [
                             for(int i =0; i < data.length; i++)
                               Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Container(
                                      width: 45,
                                      height: 45,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: Colors.red,
                                          image: DecorationImage(image: AssetImage("lib/assets/images/reddit.png"), fit: BoxFit.cover)
                                          ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                       Text(
                                        data[i]["name"],
                                      //  "${postComments[i]["sender"]}",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.grey),
                                      ),
                                      Container(
                                        constraints: const BoxConstraints(minHeight: 50),
                                        width:
                                            MediaQuery.of(context).size.width / 2 - 50,
                                        child:  Text(
                                          data[i]["text"],
                                          // postComments[i]["message"],
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                       
                                    ],
                                  )
                                ],
                          ),
                             ],
                           ),
                        );
  }
}