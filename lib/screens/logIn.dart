import 'package:rent_car/screens/carOverview.dart';
import 'package:rent_car/screens/homePage.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/home.png"), fit: BoxFit.cover)),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Spacer(),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    fixedSize:
                        Size.fromWidth(MediaQuery.of(context).size.width * 1),
                  ),
                  onPressed: () {},
                  icon: Image(
                    image: AssetImage("images/google.png"),
                    height: 25,
                  ),
                  label: Text("S'inscrire avec Google",
                      style: TextStyle(color: Colors.black)),
                ),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    fixedSize:
                        Size.fromWidth(MediaQuery.of(context).size.width * 1),
                  ),
                  onPressed: () {},
                  child: Text(
                    "S'inscrire avec un Email",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                      (route) => false,
                    );
                  },
                  child: Text(
                    "Vous Avez déja un compte ? Se Connecter",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
