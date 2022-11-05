import 'package:flutter/material.dart';

import '../models/message_model.dart';

class FavoriteContacts extends StatelessWidget {
  const FavoriteContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Favorite Contacts',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,

                  ),),
                IconButton(
                  icon: const Icon(Icons.more_horiz),
                  iconSize: 30.0,
                  color: Colors.blueGrey,
                  onPressed: (){},
                ),
              ],
            ),
          ),
          Container(
            height: 120.0,
            child: ListView.builder(
                padding: const EdgeInsets.only(left:10.0),
                scrollDirection: Axis.horizontal,
                itemCount: favorites.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0), // Youtube 21.23  - https://www.youtube.com/watch?v=h-igXZCCrrc&list=PLzOt3noWLMthJKm8SJl2zmUlJiZp7fzo7
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage: AssetImage(favorites[index].imageUrl),
                        ),
                        const SizedBox(height: 6.0,),
                        Text(favorites[index].name, style: const TextStyle(
                            color:Colors.blueGrey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                        ),),
                      ],
                    ),
                  );
                }
            )
          ),
        ],
      ),
    );
  }
}
