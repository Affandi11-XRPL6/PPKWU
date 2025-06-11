import 'package:flutter/material.dart';

class PoliIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  PoliIcon({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon, size: 32),
      ),
    );
  }
}
