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
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 130.0,
                  right: 130.0,
                  top: 10.0,
                  bottom: 10.0,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Назад',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 260.0,
                right: 260.0,
                top: 30.0,
                bottom: 10.0,
              ),
              child: Column(
                children: [
                  const Text(
                    'Логин',
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.black),
                        hintText: "Электронная почта*"),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black),
                      hintText: "Пароль*",
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'Забыли пароль?',
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 25,
                        width: 180,
                        color: Colors.black,
                        child: const Center(
                          child: Text(
                            'Войти',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'VK.png',
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Text(
                            'Войти с помощью ВК',
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
