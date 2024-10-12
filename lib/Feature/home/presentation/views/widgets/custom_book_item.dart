import 'package:cached_network_image/cached_network_image.dart';
import 'package:clean_architecture/core/utils/utils.dart';
import 'package:flutter/material.dart';
class CustomBookImage extends StatelessWidget {
  const CustomBookImage ({Key? key, required this.image}) : super(key: key);

  final String image;
  @override
  Widget build(BuildContext context) {
  return SizedBox(
  //    width: 150,
  height: MediaQuery.of(context).size.height *.3,
  child: AspectRatio(
  aspectRatio: 2.6/4,
  child: ClipRRect(
    borderRadius: BorderRadius.circular(16 ),
    child: CachedNetworkImage(
imageUrl: image,
      fit: BoxFit.fill,
    ),
  ),
  ),

  );
  }
  }