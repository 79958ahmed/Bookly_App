import 'package:clean_architecture/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class CustomBookDetailAppBar extends StatelessWidget {
  const CustomBookDetailAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
      [
        IconButton(
          onPressed: ()
          {
            GoRouter.of(context).push(AppRouter.kHomeView);
          },
          icon: const Icon(Icons.close),
        ),
        // const Spacer(),
        IconButton(
          onPressed: (){},
          icon: const Icon(Icons.shopping_cart_outlined),
        ),
      ],
    );
  }
}
