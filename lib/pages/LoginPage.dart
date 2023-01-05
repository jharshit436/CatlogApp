import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            'Assets/images/LoginImage.jpg',
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "Welcome $name ",
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter UserName",
                  labelText: "Enter Username",
                ),
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Enter Password", labelText: "Enter password"),
                obscureText: true,
              ),
              const SizedBox(
                height: 40.0,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    changedButton = true;
                  });
                  Navigator.pushNamed(context, MyRoutes.homeroute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: 50,
                  width: changedButton ? 150 : 50,
                  alignment: Alignment.center,
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(8)),
                ),
              )
              // ElevatedButton(
              //   onPressed: () {
              //     // Navigator.pushNamed(context, MyRoutes.homeroute);
              //   },
              //   child: const Text("Login"),
              // )
            ]),
          )
        ]),
      ),
    );
  }
}
