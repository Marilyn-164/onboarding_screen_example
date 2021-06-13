import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_screen_example/page/home_page.dart';
import 'package:onboarding_screen_example/widget/button_widget.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
           
            
            PageViewModel(
              title: 'Let us get started',
              body: 'Never a better time than now to start thinking about how to build a good business connection.',
              footer: ButtonWidget(
                text: 'Next',
                onClicked: () => goToHome(context),
              ),
              image: buildImage('assets/1.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Set up your business account',
              body: 'Create an account to manage your business',
              footer: ButtonWidget(
                text: 'Next',
                onClicked: () => goToHome(context),
              ),
              image: buildImage('assets/2.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Engage with your customer',
              body: 'Organise the tasks and keep you work life healthy',
              footer: ButtonWidget(
                text: 'Get Started',
                onClicked: () => goToHome(context),
              ),
              image: buildImage('assets/3.png'),
              decoration: getPageDecoration(),
            ),
          
           
          ],
          done: Text('', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () => goToHome(context),
          
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Theme.of(context).primaryColor,
          skipFlex: 0,
          nextFlex: 0,
          // isProgressTap: false,
          // isProgress: false,
          // showNextButton: false,
          // freeze: true,
          // animationDuration: 1000,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomePage()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFE9591C),
        activeColor: Color(0xFFE9591C),
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
