import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:tdo/navbar.dart';
import 'package:tdo/widget/button/large_button.dart';
import 'package:tdo/shared/colors/colors.dart';
import 'package:tdo/shared/size.dart';
import 'package:tdo/shared/text_style/text_style.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isShow = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          children: [
            Text('Masuk',
                style: based.copyWith(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Sizes(context).height * 0.05,
              ),
              Image.asset(
                'assets/img/login.png',
                scale: 3,
              ),
              SizedBox(
                height: Sizes(context).height * 0.03,
              ),
              Column(
                children: [
                  SizedBox(
                    width: Sizes(context).width * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: based.copyWith(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      width: Sizes(context).width * 0.9,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(15)),
                      child: TextFormField(
                        controller: emailController,
                        cursorColor: pink,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: pink, width: 2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: 'Masukkan Email',
                          hintStyle: based.copyWith(),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          prefixIcon: Container(
                            margin: const EdgeInsets.only(left: 20, right: 20),
                            child: Icon(
                              Icons.email,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: Sizes(context).height * 0.02,
              ),
              Column(
                children: [
                  SizedBox(
                    width: Sizes(context).width * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Kata Sandi',
                          style: based.copyWith(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      width: Sizes(context).width * 0.9,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(15)),
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: _isShow,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: pink, width: 2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: 'Masukkan Kata Sandi',
                            hintStyle: based.copyWith(),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 20),
                            prefixIcon: Container(
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Icon(
                                Icons.key,
                                color: Colors.grey.shade600,
                              ),
                            ),
                            suffixIcon: Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isShow = !_isShow;
                                  });
                                },
                                icon: Icon(
                                  _isShow
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility_outlined,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            )),
                      )),
                ],
              ),
              SizedBox(
                height: Sizes(context).height * 0.05,
              ),
              InkWell(
                onTap: () async {
                  if (emailController.text.isEmpty ||
                      passwordController.text.isEmpty) {
                    AnimatedSnackBar.material(
                      'Silahkan Isi Terlebih Dahulu',
                      duration: const Duration(seconds: 4),
                      type: AnimatedSnackBarType.warning,
                    ).show(context);
                  } else {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const NavBar()));
                  }
                },
                child: const LargeButton(
                  title: 'Masuk',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Belum Punya Akun?',
                    style: based,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Daftar',
                        style: based.copyWith(color: pink),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
