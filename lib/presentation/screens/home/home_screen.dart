import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/menu/menu_items.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: _HomeContent(),
      ),
    );
  }
}

class _HomeContent extends StatelessWidget {
  const _HomeContent();

  @override
  Widget build(BuildContext context) {
    const menuItems = <MenuItems>[
      MenuItems(
          title: 'Counter',
          subTitle: 'Counter page implemented with BLoC',
          link: '/counter-bloc',
          icon: Icons.add)
    ];

    return ListView.builder(
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        final menuItem = menuItems[index];
        return _CustomMenuItem(
          menuItem: menuItem,
        );
      },
    );
  }
}

class _CustomMenuItem extends StatelessWidget {
  const _CustomMenuItem({
    required this.menuItem,
  });

  final MenuItems menuItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(menuItem.icon, color: Colors.pinkAccent),
      trailing:
          const Icon(Icons.arrow_forward_ios_rounded, color: Colors.pinkAccent),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: () {
        context.push(menuItem.link);
      },
    );
  }
}
