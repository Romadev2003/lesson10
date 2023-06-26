import 'package:flutter/material.dart';
import 'package:lesson10/provider/main_provider.dart';
import 'package:lesson10/screens/forgot_password_page.dart';
import 'package:lesson10/screens/profile_page.dart';
import 'package:lesson10/screens/registr_page.dart';
import 'package:provider/provider.dart';

import '../widgets/custom_title_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController logincontroller = TextEditingController();

  TextEditingController paswordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                  height: 24,
                ),
                TitleText("Sign In"),
                const SizedBox(
                  height: 56,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: const Color(0xff272B4A),
                      borderRadius: BorderRadius.circular(25)),
                  child: TextField(
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.emailAddress,
                    controller: logincontroller,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Login",
                      hintStyle: TextStyle(
                        color: Colors.white38,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    TextButton(
                        onPressed: () { Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const ForgotPass()),
                                (route) => false);}, child: const Text("Forgot Password?"))
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                GestureDetector(
                  onTap: () {
                    bool isUser = context
                        .read<MainProvider>()
                        .isUser(paswordcontroller.text, logincontroller.text);

                    if (isUser) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const ProfilePage()));
                    } else {
                      logincontroller.text = "";
                      paswordcontroller.text = "";
                    }
                  },
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: const Color(0xff41CD7D),
                        borderRadius: BorderRadius.circular(25)),
                    alignment: Alignment.center,
                    child: const Text(
                      "Login",
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
                  "Don`t have an account?",
                  style: TextStyle(
                    color: Colors.white54,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const RegistrPage()),
                          (route) => false);
                    },
                    child: const Text(
                      "Create new one",
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
