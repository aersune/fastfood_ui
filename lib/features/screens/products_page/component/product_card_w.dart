import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:products_ui/common/styles/colors.dart';
import 'package:products_ui/common/styles/responsive.dart';
import 'package:products_ui/common/styles/text_style.dart';
import 'package:products_ui/features/models/product_model.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context),
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding(context)),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height(context) * .16,
            width: width(context) * .32,
            child: CachedNetworkImage(
              imageUrl: product.image,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              placeholder: (context, url) => Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          // 20.getW(context),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                product.title,
                style: AppStyle.light.copyWith(fontSize: text24(context)),
              ),
              5.getH(context),
              SizedBox(
                width: width(context) * .5,
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  "Shortbread, chocolate turtle cookies, and red velvet.",
                  style: AppStyle.normal,
                ),
              ),
              SizedBox(
                width: width(context) * .5,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$\$ • Chinese",
                      style: AppStyle.normal.copyWith(fontSize: text14(context)),
                    ),
                    Text(
                      'AUD ${product.price}',
                      style: AppStyle.normal.copyWith(color: AppColors.primary, fontSize: text16(context)),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
