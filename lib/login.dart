import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 56),
        child: Visibility(
          visible: false,
          child: AppBar(),
        ),
      ),

      body: Column(children: [
        SizedBox(height: 50),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Text(
                "SIGN UP",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),

        const SizedBox(height: 30),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Text(
                "Email :",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),

        const SizedBox(height: 5),

        Container(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: const TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'User Name'),
          ),
        ),

        const SizedBox(height: 15),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Text(
                "Password :",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),

        const SizedBox(height: 5),

        Container(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: const TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Password'),
          ),
        ),

        const SizedBox(height: 30),

        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.pinkAccent,
                minimumSize: const Size(370, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0))),
            onPressed: () {
            },
            child: const Text("SIGN UP",
                style: TextStyle(
                  fontSize: 15,
                )),
          ),

        const SizedBox(height: 30),

        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Expanded(
                child: Container(
                  height: 1,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(width: 5,),
              const Text(
                "OR",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 5,),
              Expanded(
                child: Container(
                  height: 1,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),

        const SizedBox(height: 30),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('images/icons8.png'))),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('images/123.png'))),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('images/321.png'))),
            ),
          ],
        ),

        const SizedBox(height: 30),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Already a User?",style: TextStyle(fontSize: 15),),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'register');
                  },
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 15,
                        color: Colors.black),
                  )),
            )
          ],
        )
      ]),
    );
  }
}
