import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:tdo/shared/colors/colors.dart';
import 'package:tdo/shared/size.dart';
import 'package:tdo/shared/text_style/text_style.dart';
import 'package:tdo/widget/card_task/card_task.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      appBar: AppBar(
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none,
                  color: pink,
                  size: 30,
                )),
          )
        ],
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 243, 243, 243),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset(
              'assets/img/logo.png',
              scale: 2,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              'TDo',
              style: based.copyWith(
                  color: pink, fontWeight: FontWeight.bold, fontSize: 26),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding:
              EdgeInsets.symmetric(horizontal: Sizes(context).width * 0.05),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Selamat Datang! ',
                      style: based.copyWith(fontSize: 20, color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Alwi',
                            style: based.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: LinearPercentIndicator(
                  width: Sizes(context).width * 0.9,
                  animation: true,
                  lineHeight: 40.0,
                  animationDuration: 2000,
                  percent: 0.33,
                  center: Text(
                    "33%",
                    style: based.copyWith(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  barRadius: const Radius.circular(15),
                  progressColor: pink,
                  backgroundColor: pink.withOpacity(0.5),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Tugas ',
                      style: based.copyWith(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text: '(9)',
                            style: based.copyWith(
                                fontSize: 16, color: Colors.grey)),
                      ],
                    ),
                  ),
                  Text(
                    'Selengkapnya',
                    style: based.copyWith(
                        color: pink, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CardTask(
                image: const DecorationImage(
                    image: AssetImage(
                      'assets/img/book.png',
                    ),
                    scale: 18),
                color: Colors.lightGreen.withOpacity(0.5),
                title: 'Membaca Buku',
                desc: '60 Menit',
              ),
              const SizedBox(
                height: 10,
              ),
              CardTask(
                image: const DecorationImage(
                    image: AssetImage(
                      'assets/img/piano.png',
                    ),
                    scale: 7.5),
                color: Colors.purpleAccent.withOpacity(0.5),
                title: 'Mendengar Musik',
                desc: '45 Menit',
              ),
              const SizedBox(
                height: 10,
              ),
              CardTask(
                image: const DecorationImage(
                    image: AssetImage(
                      'assets/img/food.png',
                    ),
                    scale: 16),
                color: Colors.orangeAccent.withOpacity(0.5),
                title: 'Makan Malam',
                desc: '30 Menit',
              ),
              const SizedBox(
                height: 10,
              ),
              CardTask(
                image: const DecorationImage(
                    image: AssetImage(
                      'assets/img/computer.png',
                    ),
                    scale: 11),
                color: Colors.blueAccent.withOpacity(0.5),
                title: 'Coding',
                desc: '2 Jam',
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
