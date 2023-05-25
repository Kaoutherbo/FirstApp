import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My profile page ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 72, 15, 172)),
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key,}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        centerTitle:true,
        backgroundColor: Colors.deepPurple[300],        
        title:const Text(
             'Boutheldja Kaouther' ,
              style: TextStyle(
                fontSize: 20,
                color:Colors.white,
                fontStyle: FontStyle.italic, 
              ),
            ),
         leading: IconButton(
           onPressed:(){},
          icon: const Icon(Icons.person,color:Colors.white,size:30.0),
           
         ),         
        ),
     
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,  
          children: [
           CircleAvatar(
             radius:100,
backgroundImage:NetworkImage('data:image/jpeg;base64,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'),
            ),

    SizedBox(height: 30),

            Text(
              'Boutheldja Kaouther',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                  color: Colors.deepPurple
              ),
            ),

 SizedBox(height: 10),

      Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Computer science student',
                style: TextStyle(
                  fontSize: 18,          
                                ),
                textAlign: TextAlign.center, 
              ),
            ),

SizedBox(height: 30),

            Text(
              'About me : ',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                  color: Colors.deepPurple),
            ),
    
SizedBox(height: 5),

            Text(
              " I am honing my skilsand knowledge to excel in the field of informatics and create inovative solutions through both of web and app development. .",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w200,
              ),
              textAlign: TextAlign.center,
            ),                  
          ],
        ),
      ),
    );
  }
}