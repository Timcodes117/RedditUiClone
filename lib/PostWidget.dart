import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:heroicons_flutter/heroicons_flutter.dart';
import 'package:heroicons_flutter/heroicons_list.dart';

class PostWidget extends StatelessWidget {
  final username, caption, author, time, votes, comments, video, image, trending;
  final Function(String value) openComment;

   PostWidget({
    super.key, 
    required  this.username,
    required  this.caption,
    required  this.author,
    required this.time,
    required this.votes,
    required this.comments,
    required  this.video,
    required  this.image,
    required this.trending,
    required this.openComment
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, top: 10),
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width - 20,
      constraints: BoxConstraints(
          minHeight: 300.0
        ),
      
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        
      ),
      child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          trending ?
          Container(
            width: MediaQuery.of(context).size.width - 20,
            height: 60,
            decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey, width: 1.0),)),
        child: Row(
          children: [
            Text("Trending", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Icon(Icons.arrow_forward_ios_rounded)
          ],
        ),
      ) : Container(),

      Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset("lib/assets/images/reddit.png", width: 30, height: 30,),
            ),
            Text(username, style: TextStyle(fontSize: 16),)

              ],
            ),

            Icon(Icons.more_vert_rounded, size: 30,)
          ],
        ),
      ),

      SizedBox(
        width: double.infinity,
        child: Text(caption, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),

      "$video".length > 2 
      ? Container(
        width: double.infinity,
        height: 200,
        margin: EdgeInsets.only(top: 10, bottom: 20),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("lib/assets/images/bg2.PNG"), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(child: Container(
          width: 50, height: 50, 
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.white),
          child: Icon(Icons.play_arrow, color: Color(0xFFFF4500), size: 40,),
        )
        ,),
      ) : Container(),

      "$image".length > 2 
      ? Container(
        width: double.infinity,
        height: 200,
          
        
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("lib/assets/images/bg2.PNG"), fit: BoxFit.cover),
        ),
        
      ) : Container(),
      Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          children: [
            Text("by $author", style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal, color: Colors.grey),),
            Padding(padding: EdgeInsets.only(left: 20, right: 20), child: Icon(Icons.circle, size: 10, color: Colors.grey,),),
            Text(time, style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal, color: Colors.grey),),
      
          ],
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_upward, size: 20, color: Color(0xFFFF4500),),
                  Text(votes, style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal, color: Colors.grey),),
                  Icon(Icons.arrow_downward, size: 20, color: Colors.grey.shade700,),
                  
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                openComment("any");
              },
              child: Container(
                width: 70,
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(HeroiconsOutline.chatBubbleLeft, color: Colors.grey.shade700,),
                    Text("3.0 k", style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal, color: Colors.grey),),
                    
                  ],
                ),
              ),
            ),
            Container(
              width: 70,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.share_outlined, size: 20, color: Colors.grey.shade700,),
                  Text("share", style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal, color: Colors.grey),),
                  
                ],
              ),
            ),
          ],
        ),
      )



        ],
      )
      ,
    );
  }
}