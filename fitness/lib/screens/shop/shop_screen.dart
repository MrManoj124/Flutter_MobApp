import 'package:flutter/material.dart';
// import '../../theme/theme.dart';
// import '../../data/mock_data.dart';
// import '../../models/models.dart';
// import '../../widgets/luxury_widgets.dart';

class ShopScreen extends StatefulWidget{
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen>{
  ProductCategory _selected = ProductCategory.all;
  final List<String> _cartIds = [];

  List<Product> get _filtered => _selected == ProductCategory.all
? mockProducts
      : mockProducts.where((p) => p.category == _selected).toList();
  
  static const _categories = [
    (ProductCategory.all, 'All'),
    (ProductCategory.supplements, 'Supps'),
    (ProductCategory.gear, 'Gear'),
    (ProductCategory.apparel, 'Apparel'),
    (ProductCategory.sale, 'Sale'),
  ];

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            // ── Header ──────────────────────────────────
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

}