
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