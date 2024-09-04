import 'package:flutter/material.dart';

class DashBoardcard extends StatelessWidget {
  const DashBoardcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.pink.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.timelapse, color: Colors.black),
            ),
            const SizedBox(height:12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildSingleSection('Sales', '12345678'),
                _buildSingleSection('Volume', '12345678'),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSingleSection(String title, String number) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(number),
      ],
    );
  }
}
