
# redditclone
A Flutter project.

<div style="width: 100%; height: 400px; background-position: center; background-size: cover;  object-fit: cover; background: url('/mobile-dev-eval.png') " />


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
<p class="color: aqua" >class</p> DummyComments{ <br/>
  late String sender;<br/>
  late List replies;<br/>
  late String message;<br/>
<br/>
  DummyComments(this.sender, this.message, this.replies);
<br/><br/>
  Map<String, dynamic> tojson(){<br/>
    return {<br/>
      "sender": sender,<br/>
      "replies" : replies,<br/>
      "message" : message,<br/>
    };<br/>
  }<br/>
  <br/>
}<br/>
