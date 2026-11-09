import 'package:flutter/material.dart';

class Acoes extends StatelessWidget {
  const Acoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildActionButton(Icons.location_on_outlined, 'Quero Ir'),
          _buildActionButton(Icons.verified_outlined, 'Já Fui'),
          _buildActionButton(Icons.share, 'Compartilhar'),
          _buildActionButton(Icons.star, 'Avaliações', isRating: true),
        ],
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label,
      {bool isRating = false}) {
    return InkWell(
      onTap: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isRating)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.star, color: Colors.blue, size: 18),
                Icon(Icons.star, color: Colors.blue, size: 18),
                Icon(Icons.star, color: Colors.blue, size: 18),
              ],
            )
          else
            Icon(icon, color: Colors.blue, size: 22),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
