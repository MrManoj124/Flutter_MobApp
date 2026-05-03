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
                   ScreenHeader(
                    eyebrow: 'Curated for You',
                    title: 'The Vault',
                    trailing: Stack(
                      children: [
                        AvatarRing(emoji: '🛒'),
                        if (_cartIds.isNotEmpty)
                          Positioned(
                            top: 0, right: 0,
                            child: Container(
                              width: 14, height: 14,
                              decoration: const BoxDecoration(
                                color: AppColors.gold,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text('${_cartIds.length}',
                                    style: AppTextStyles.label(
                                        size: 8, color: AppColors.black)),
                              ),
                               ),
                          ),
                      ],
                    ),
                  ),
                  GoldHairline(),
                  const SizedBox(height: 12),

                  // ── Search bar ─────────────────────────
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 10),
                    decoration: BoxDecoration(
                      color: AppColors.surface2,
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: const Color(0x12FFFFFF)),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.search,
                            color: AppColors.textMuted, size: 16),
                        const SizedBox(width: 8),
                        Text('Search products...',
                            style: AppTextStyles.body(size: 12)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),

                    // ── Filter chips ───────────────────────
                  SizedBox(
                    height: 32,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding:
                          const EdgeInsets.symmetric(horizontal: 16),
                      children: _categories.map((c) {
                        final isActive = _selected == c.$1;
                        return GestureDetector(
                          onTap: () =>
                              setState(() => _selected = c.$1),
                          child: Container(
                            margin: const EdgeInsets.only(right: 8),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 14, vertical: 5),
                                decoration: BoxDecoration(
                              color: isActive
                                  ? AppColors.goldDim
                                  : AppColors.surface2,
                              border: Border.all(
                                color: isActive
                                    ? AppColors.goldBorder
                                    : const Color(0x0FFFFFFF),
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              c.$2.toUpperCase(),
                              style: AppTextStyles.label(
                                size: 8,
                                color: isActive
                                    ? AppColors.gold
                                    : AppColors.textMuted,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                       ),
                  ),
                  const SizedBox(height: 14),
                ],
              ),
            ),

            // ── Product grid ─────────────────────────────
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, i) => _ProductCard(
                    product: _filtered[i],
                    inCart: _cartIds.contains(_filtered[i].id),
                    onAdd: () => setState(() {
                      final id = _filtered[i].id;
                      _cartIds.contains(id)
                          ? _cartIds.remove(id)
                          : _cartIds.add(id);
                    }),
                  ),
                  childCount: _filtered.length,
                ),
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.82,
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 20)),
          ],
        ),
      ),
    );
  }
}

class _ProductCard extends StatelessWidget{
  
}


                      



}