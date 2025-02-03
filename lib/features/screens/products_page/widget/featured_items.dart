import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:products_ui/features/models/product_model.dart';
import '../../../../common/styles/responsive.dart';
import '../../../../common/styles/text_style.dart';

class FeaturedItems extends StatelessWidget {

  const FeaturedItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height(context) <= 690 ? (height(context) * .43) :  (height(context) * .38),
      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.getH(context),
            Padding(
              padding:  EdgeInsets.all(kDefaultPadding(context)),
              child: Text(
                "Featured Items",
                style: AppStyle.h1.copyWith(fontWeight: FontWeight.w300),
              ),
            ),
            Expanded(
              child: ListView.separated(
                  separatorBuilder: (context, index) =>  SizedBox(
                        width: width(context) * .02,
                      ),
                  padding: EdgeInsets.only(left: 20),
                  scrollDirection: Axis.horizontal,
                  itemCount: Product.products.length,
                  itemBuilder: (context, index) {
                    Product product = Product.products[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: width(context) * .4,
                          height: height(context) * .2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: CachedNetworkImage(
                              imageUrl: product.image,
                              fit: BoxFit.cover,
                              placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                              errorWidget: (context, url, error) => Icon(Icons.error),

                            ),
                          ),
                        ),
                        Text(
                          product.title,
                          style: AppStyle.light.copyWith(fontSize: text18(context)),
                        ),
                        Text(
                          "\$\$ • Chinese",
                          style: AppStyle.normal,
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
