

import 'package:chat_ui/models/user_model.dart';

class Message {
  User sender; // of type user
  String time;
  String text; // content of the message
  bool isLiked;
  bool unread;

  Message(this.sender, this.time, this.text, this.isLiked, this.unread);
}

// You -- current user

final User currentUser = User(0, 'Current User', 'assets/images/brett.jpg');

// Users

final User brett = User(1, 'Brett', 'assets/images/brett.jpg');
final User claire = User(2, 'Claire', 'assets/images/claire.jpg',);
final User pat = User(3, 'Pat', 'assets/images/pat.jpg',);
final User tonya = User(4, 'Tonya', 'assets/images/tonya.jpg',);
final User white = User(5, 'White', 'assets/images/white.jpg',);

List<User> favorites = [brett, claire, pat, tonya, white];

// recent chat messages on the home screen
List<Message> chats = [
  Message(brett, '1:00 PM', 'Hello there!',false, true),
  Message(claire, '1:30 PM', 'How are you?', false, true),
  Message(pat, '5:00 PM', 'Nice work on the project', false, true),
  Message(tonya, '5:50 PM', 'Thanks for your help', false, true),
];
