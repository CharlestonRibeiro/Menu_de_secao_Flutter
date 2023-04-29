import 'package:flutter/material.dart';

class Menu extends StatelessWidget {

  final ValueChanged<int> onMenuClick;

  const Menu({super.key, required this.onMenuClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(onPressed: () => onMenuClick(1), child: const Text('Seção 1')),
          TextButton(onPressed: () => onMenuClick(2), child: const Text('Seção 2')),
          TextButton(onPressed: () => onMenuClick(3), child: const Text('Seção 3')),
        ],
      ),
    );
  }
}
