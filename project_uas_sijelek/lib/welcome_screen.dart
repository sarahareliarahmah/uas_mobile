import 'package:flutter/material.dart';
import 'package:project_uas/login.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "images/depan.jpg",
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Your other widgets
              SizedBox(
                height: 0,
              ),
              Text(
                "Have You Read News Today?",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0),
                child: Text(
                  "Many Title, Many News. Have fun for reading",
                  style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    color: const Color.fromARGB(255, 9, 9, 9),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 0,),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Go to Read",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ], // Add this closing parenthesis
      ),
    );
  }
}