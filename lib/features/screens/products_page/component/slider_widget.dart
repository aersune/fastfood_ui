import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../../common/styles/responsive.dart';
import '../../../models/product_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'build_indicator.dart';




class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key, required this.result, });

  final List<Product> result;


  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {

  var currentPage = 0;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              // height: height(context) * .3,
              child: CarouselSlider.builder(
                itemCount: widget.result.length,
                itemBuilder: (context, index, realIndx) {
                  return Center(
                      child: CachedNetworkImage(
                          imageUrl: widget.result[index].image,
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                          placeholder: (context, url) => const Center(
                                child: CircularProgressIndicator(),
                              ),
                          imageBuilder: (context, imageProvider) =>  Image(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        width: 1000,

                        ));
                },
                options: CarouselOptions(

                  onPageChanged: (index, reason) {
                     setState(() {
                       currentPage = index;

                     });
                  },

                  // height: height(context) * .3,
                  autoPlay: false,
                  viewportFraction: 1,
                  enlargeFactor: 0,
                  aspectRatio: width(context) / (height(context) * .3),
                  // aspectRatio: 19 / ,

                  enlargeCenterPage: true,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: BuildIndicator(count: 5, currentPage: currentPage,),)
          ],
        ),


      ],
    );
  }


}
