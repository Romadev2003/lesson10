import 'package:flutter/material.dart';
import 'package:lesson10/provider/main_provider.dart';
import 'package:provider/provider.dart';

import '../widgets/custom_title_text.dart';
import 'home_page.dart';

class RegistrPage extends StatelessWidget {
  const RegistrPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<MainProvider>(context, listen: false);
    TextEditingController usernamecontroller = TextEditingController();
    TextEditingController paswordcontroller = TextEditingController();
    TextEditingController namecontroller = TextEditingController();
    TextEditingController surnamecontroller = TextEditingController();
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController agecontroller = TextEditingController();
    TextEditingController countrycontroller = TextEditingController();
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 32),
        color: const Color(0xff202442),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(
                  height: 12,
                ),
                TitleText("Sign Up"),
                const SizedBox(
                  height: 28,
                ),


                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: const Color(0xff272B4A),
                      borderRadius: BorderRadius.circular(25)),
                  child: TextField(
                    cursorColor: Colors.white,
                    controller: usernamecontroller,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Username",
                      hintStyle: TextStyle(
                        color: Colors.white38,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: const Color(0xff272B4A),
                      borderRadius: BorderRadius.circular(25)),
                  child: TextField(
                    obscureText: false,
                    cursorColor: Colors.white,
                    controller: paswordcontroller,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Colors.white38,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: const Color(0xff272B4A),
                      borderRadius: BorderRadius.circular(25)),
                  child: TextField(
                    cursorColor: Colors.white,
                    controller: namecontroller,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Name",
                      hintStyle: TextStyle(
                        color: Colors.white38,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: const Color(0xff272B4A),
                      borderRadius: BorderRadius.circular(25)),
                  child: TextField(
                    obscureText: false,
                    cursorColor: Colors.white,
                    controller: surnamecontroller,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Surname",
                      hintStyle: TextStyle(
                        color: Colors.white38,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: const Color(0xff272B4A),
                      borderRadius: BorderRadius.circular(25)),
                  child: TextField(
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.emailAddress,
                    controller: emailcontroller,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Emain",
                      hintStyle: TextStyle(
                        color: Colors.white38,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: const Color(0xff272B4A),
                      borderRadius: BorderRadius.circular(25)),
                  child: TextField(
                    obscureText: false,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.number,
                    controller: agecontroller,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Age",
                      hintStyle: TextStyle(
                        color: Colors.white38,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: const Color(0xff272B4A),
                      borderRadius: BorderRadius.circular(25)),
                  child: TextField(
                    obscureText: false,
                    cursorColor: Colors.white,
                    controller: countrycontroller,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Country",
                      hintStyle: TextStyle(
                        color: Colors.white38,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                GestureDetector(
                  onTap: () {
                    print("bosildi");
                    context.read<MainProvider>().addPerson(
                      username: usernamecontroller.text,
                      pasword: paswordcontroller.text,
                      name: namecontroller.text,
                      surname: surnamecontroller.text,
                      email: emailcontroller.text,
                      age: int.parse(agecontroller.text),
                      country: countrycontroller.text,);
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => const HomePage()),
                            (route) => false);
                  },
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: const Color(0xff41CD7D),
                        borderRadius: BorderRadius.circular(25)),
                    alignment: Alignment.center,
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Alredy  have an account?",
                  style: TextStyle(
                    color: Colors.white54,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (_) => const HomePage()),
                              (route) => false);
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(color: Color(0xff41CD7D)),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
