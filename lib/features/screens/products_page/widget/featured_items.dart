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
      height: height(context) * .35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text(
            "Featured Items",
            style: AppStyle.h1.copyWith(fontWeight: FontWeight.w300),
          ),
          Expanded(
            child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                      width: 10,
                    ),
                padding: EdgeInsets.zero,
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
                        style: AppStyle.light.copyWith(fontSize: 18),
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
    );
  }
}
