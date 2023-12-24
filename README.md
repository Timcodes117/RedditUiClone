# redditclone

A new Flutter project.

## About
 <p>reddit ui clone.</p>
 <b>App is api ready ✅</b>
 
 ## Using The best practicies
  - Stateless Widgets
  - StateFull Widget
  - Custom Widgets
  - Customer Bottom Navigation.
  - Routes
  - Screen Navigation

## Dummy data
class DummyComments{
  late String sender;
  late List replies;
  late String message;

  DummyComments(this.sender, this.message, this.replies);

  Map<String, dynamic> tojson(){
    return {
      "sender": sender,
      "replies" : replies,
      "message" : message,
    };
  }
  
}
