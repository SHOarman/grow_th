import 'package:flutter/material.dart';

class InsightCard extends StatelessWidget {
  final String
  iconPath; // For now assuming asset path or we can use IconData if needed
  final String title;
  final String description;
  final Color? iconColor;

  const InsightCard({
    super.key,
    required this.iconPath,
    required this.title,
    required this.description,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170, // Slightly wider
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1D3D), // Deep blue/purple background
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withValues(alpha: 0.1)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon Placeholder
          Container(
            height: 48,
            width: 48,
            decoration: const BoxDecoration(),
            child: Image.asset(
              iconPath,
              fit: BoxFit.contain,
              errorBuilder: (c, e, s) =>
              const Icon(Icons.insights, color: Colors.amber, size: 36),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.6),
              fontSize: 11,
              height: 1.4,
            ),
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
