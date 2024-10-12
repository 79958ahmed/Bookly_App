import 'package:clean_architecture/Feature/home/presentation/views/home_view.dart';
import 'package:clean_architecture/Feature/splash/presentaion/views/widgets/sliding_text.dart';
import 'package:clean_architecture/constants/constants.dart';
import 'package:clean_architecture/core/utils/app_router.dart';
import 'package:clean_architecture/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {

    super.initState();
    initSlidingAnimation();
navigateToHome();
  }



  @override
   void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children:
      [
       Image.asset(AssetsData.logo),
       const SizedBox(height: 5,),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }
  void initSlidingAnimation() {
    animationController =AnimationController(
      vsync: this,
      duration:const Duration(seconds: 5),
    );
    slidingAnimation =Tween<Offset>(begin:const Offset(0,10)  ,end:Offset.zero ,)
        .animate(animationController);

    animationController.forward();
  }


  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2),(){
    //   Get.to(()=>const HomeView(),transition: Transition.fadeIn,
    //       duration: kTransitionDuration
    //   );
      GoRouter.of(context).push(AppRouter.kHomeView);
     },
     );

  }
}
