import 'package:flutter/material.dart';
import 'package:tdo/screen/login/login.dart';
import 'package:tdo/screen/onBoarding/on_boarding_item.dart';
import 'package:tdo/widget/button/large_button.dart';
import 'package:tdo/shared/colors/colors.dart';

import '../../shared/size.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int _currentPage = 0;
  _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();

    List<Widget> pages = [
      OnBoardingItem(
          image: Image.asset(
            'assets/img/1.png',
            scale: 5.5,
          ),
          title: 'Akhiri Manajemen Waktu \nYang Buruk',
          desc:
              "Lorem Ipsum is simply dummy text of the \nprinting and typesetting industry."),
      OnBoardingItem(
          image: Image.asset(
            'assets/img/2.png',
            scale: 1.2,
          ),
          title: 'Mengatur Waktu Anda \n Dengan Mudah',
          desc:
              "Lorem Ipsum is simply dummy text of the \nprinting and typesetting industry."),
      OnBoardingItem(
          image: Image.asset(
            'assets/img/3.png',
            scale: 2.5,
          ),
          title: 'Bekerja Teratur Dan Efisien',
          desc:
              "Lorem Ipsum is simply dummy text of the \nprinting and typesetting industry."),
    ];

    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: controller,
            itemCount: pages.length,
            onPageChanged: _onChanged,
            itemBuilder: (context, int index) {
              return pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(pages.length, (int index) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    height: 12,
                    width: (index == _currentPage)
                        ? Sizes(context).width * 0.15
                        : Sizes(context).width * 0.08,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: (index == _currentPage)
                            ? pink
                            : pink.withOpacity(0.5)),
                  );
                }),
              ),
              SizedBox(
                height: Sizes(context).height * 0.04,
              ),
              GestureDetector(
                onTap: () {
                  _currentPage == (pages.length - 1)
                      ? Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Login()))
                      : controller.nextPage(
                          duration: const Duration(milliseconds: 800),
                          curve: Curves.easeOutQuint);
                },
                child: LargeButton(
                  title: _currentPage == (pages.length - 1)
                      ? 'Masuk'
                      : 'Selanjutnya',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
