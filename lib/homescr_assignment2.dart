import 'package:flutter/material.dart';

HomeScreen() {
  const edgeInsets = EdgeInsets.all(8.0);
  const edgeInsets2 = EdgeInsets.all(8.0);
  return Scaffold(
    appBar: AppBar(
      title: Text('Intro Card'),
      backgroundColor: Colors.blue[300],
    ),

    //Created a container specified height and width
    body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 250,
        width: double.infinity,
        // color: Colors.blueGrey,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          //border: Border.all(width: 3),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Colors.black, spreadRadius: 5, blurRadius: 25),
          ],
        ),

        //Created a column as child to container to add widgets vertically
        // Whole Frame where whle card will be prepared is one column
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),

              //First row under container-> main column is for the phone number icon and phone number
              //Aligned the row to the right end of the card

              /* child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(
                      Icons.phone,
                      size: 20,
                    ),
                  ),
                  Text('+91 9819750***')
                ],
              ), */
            ),

            //First row under container->main column is for the avatar image and user details
            //Avatar image is added under newly created container in second row using Image.asset method
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('images/avatar.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                //First row -> Column under the avatar image is for the user details
                //axisAlignment is used set to start to align the text to the left side of the card
                //Three text widgets are used under second row -> column to display the user details
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 5.0, top: 5.0),
                      child: Row(
                        children: [
                          Icon(Icons.person, size: 20),
                          Text(
                            'Mufeeza Patel',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0, top: 5.0),
                      child: Row(
                        children: [
                          Icon(Icons.work, size: 20),
                          Text(
                            'Sr. VP Patel Engg',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, top: 5.0),
                      child: Row(
                        children: [
                          Icon(Icons.description, size: 20),
                          Text(
                            'Lead at Patel Engg',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),

            //Second row under container-> main column is for the horizontal line
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 2, width: 384, color: Colors.black),
                ),
              ],
            ),

            //Fourth row under container-> main column is for the website and email details
            //created two columns to display the website and email details
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.web, size: 25),
                    Text(
                      'www.pateleng.com',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.mail, size: 25),
                    Text(
                      'example@pateleng.com',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    //backgroundColor: Colors.brown,

    /* body: Center(
      child: Text(
        'Welcome to Card Connect',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    ) */
  );
}
