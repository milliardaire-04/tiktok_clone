import 'package:flutter/material.dart';
import 'package:tiktok_clone/contants.dart';
import 'package:tiktok_clone/views/widgets/text_input_field.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "TikTok Clone",
              style: TextStyle(
                  fontSize: 35,
                  color: buttonColor,
                  fontWeight: FontWeight.w900),
            ),
            const Text(
              "Register",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 25,
            ),
            Stack(
              children: [
                const CircleAvatar(
                  radius: 64,
                  backgroundImage: NetworkImage(
                      "https://www.pngitem.com/pimgs/m/150-1503945_transparent-user-png-default-user-image-png-png.png"),
                  backgroundColor: Colors.blue,
                ),
                Positioned(
                    left: 80,
                    bottom: -10,
                    child: IconButton(
                        onPressed: () => authController.pickImage(),
                        icon: const Icon(Icons.add_a_photo))),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _usernameController,
                labelText: "Username",
                icon: Icons.person,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _emailController,
                labelText: "Email",
                icon: Icons.email,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _passwordController,
                labelText: "Password",
                icon: Icons.lock,
                isObsecure: true,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 50,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: const BorderRadius.all(Radius.circular(5)),
              ),
              child: InkWell(
                onTap: () {
                  authController.registerUser(
                    _usernameController.text,
                    _emailController.text,
                    _passwordController.text,
                    authController.profilePhoto,
                  );
                },
                child: const Center(
                    child: Text(
                  "Register",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                )),
              ),
            ),
            const SizedBox(
              height: 35.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account? ",
                  style: TextStyle(fontSize: 20),
                ),
                InkWell(
                  onTap: (() {}),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20, color: buttonColor),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
