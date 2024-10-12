import 'package:clean_architecture/Feature/home/presentation/views/widgets/custom_botton.dart';
import 'package:flutter/material.dart';
class BookAction extends StatelessWidget {
  const BookAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
       const [
     Expanded(child: CustomBotton(
       text:'19.99 €',
       backgroundColor: Colors.white,
       textColor: Colors.black,
       borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomLeft: Radius.circular(12)),
     ),
     ),
         Expanded(
           child: CustomBotton(
             text:'Free Preview' ,
           fontSize: 16,
           backgroundColor: Color(0xffEf8262),
           textColor: Colors.white,
           borderRadius: BorderRadius.only(topRight: Radius.circular(12),bottomRight: Radius.circular(12)),
         ),
         ),
      ],
    );
  }
}
