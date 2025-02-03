import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:products_ui/features/models/product_model.dart';
import 'package:products_ui/features/screens/products_page/component/slider_widget.dart';
import 'package:products_ui/features/screens/products_page/widget/products_body.dart';

import '../../../common/styles/colors.dart';


@RoutePage()
class ProductsPage extends StatefulWidget {
 const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final ScrollController _scrollController = ScrollController();

  bool _isAppBarCollapsed = false;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.offset >= 150.0 && !_isAppBarCollapsed) {
      setState(() {
        _isAppBarCollapsed = true;
      });
    } else if (_scrollController.offset < 150.0 && _isAppBarCollapsed) {
      setState(() {
        _isAppBarCollapsed = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      extendBody: true,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                )),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    AssetImage(
                      "assets/icons/share_icon.png",
                    ),
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ))
            ],
            backgroundColor: Colors.transparent,
            excludeHeaderSemantics: true,
            expandedHeight: size.height * .31,
            flexibleSpace: AnimatedContainer(
              duration: Duration(milliseconds: 500), // Animation duration
              color: _isAppBarCollapsed ? AppColors.primary : Colors.white,
              child: FlexibleSpaceBar(
                background: SliderWidget(
                  result: Product.products,
                ), // Carousel slider
              ),
            ),

            pinned: true, // App bar stays pinned at the top
          ),
          SliverToBoxAdapter(
            child: ProductsBody(title: 'Mayfield Bakery & Cafe', products: Product.products,)
          )
        ],
      ),
    );
  }
}
