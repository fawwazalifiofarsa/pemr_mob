import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Item;

    final String imagePath = 'images/${item.name.toLowerCase()}.jpg';
    const int stock = 42;
    const double rating = 4.5;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Item'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: 'item-img-${item.name}',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Container(
                      color: Colors.grey.shade200,
                      alignment: Alignment.center,
                      child: const Icon(Icons.image_not_supported, size: 48),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),

            Text(
              item.name,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              'Rp ${item.price}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),

            Row(
              children: [
                Chip(
                  avatar: const Icon(Icons.inventory_2, size: 18),
                  label: Text('Stok: $stock'),
                ),
                const SizedBox(width: 8),
                Row(
                  children: [
                    ..._buildStars(rating),
                    const SizedBox(width: 6),
                    Text(rating.toStringAsFixed(1)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),

            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
              softWrap: true,
            ),
            const SizedBox(height: 24),

            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart),
                    label: const Text('Tambah ke Keranjang'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildStars(double rating) {
    final full = rating.floor();
    final hasHalf = (rating - full) >= 0.5;
    final List<Widget> stars = [];

    for (int i = 0; i < full; i++) {
      stars.add(const Icon(Icons.star, size: 18));
    }
    if (hasHalf) {
      stars.add(const Icon(Icons.star_half, size: 18));
    }
    while (stars.length < 5) {
      stars.add(const Icon(Icons.star_border, size: 18));
    }
    return stars;
  }
}
