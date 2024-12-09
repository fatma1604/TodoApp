import 'package:flutter/material.dart';
import 'package:todo_app/components/title_widget.dart';
import 'package:todo_app/core/colors.dart';
import 'package:todo_app/core/images.dart';
import 'package:todo_app/core/text.dart';
import 'package:todo_app/core/text_them.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            _buildDrawerHeader(context),
            _buildDrawerItem(
              context,
              icon: Icons.home,
              title: 'Ana Sayfa',
              onTap: () {
                Navigator.pushNamed(context, '/tOMORROW');
              },
            ),
            _buildDrawerItem(
              context,
              icon: Icons.assignment_turned_in_outlined,
              title: 'Tammlanan Görevler ',
              onTap: () {
                Navigator.pushNamed(context, '/tOMORROW');
              },
            ),
            _buildDrawerItem(
              context,
              icon: Icons.timelapse_sharp,
              title: 'Alışkanlık Günlüğü',
              onTap: () {
                Navigator.pushNamed(context, '/tOMORROW');
              },
            ),
            _buildDrawerItem(
              context,
              icon: Icons.settings,
              title: 'Ayarlar',
              onTap: () {
                Navigator.pushNamed(context, '/tOMORROW');
              },
            ),
            const SizedBox(height: 246),
            _buildDrawerItem(
              context,
              icon: Icons.markunread_outlined,
              title: 'Destek Ekibi',
              onTap: () {
                Navigator.pushNamed(context, '/tOMORROW');
              },
            ),
            _buildDrawerItem(
              context,
              icon: Icons.share,
              title: 'Arkadaşların ile Paylaş',
              onTap: () {
                Navigator.pushNamed(context, '/tOMORROW');
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            TitleWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerHeader(BuildContext context) {
    return Container(
      color: Theme.of(context).brightness == Brightness.dark
          ? AppColor.drawrdark
          : AppColor.drawerliht,
      padding: const EdgeInsets.all(45),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage(AppImage.person),
          ),
          const SizedBox(width: 16),
          Text(AppText.user, style: AppTextTheme.drawer(context)),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Container(
      color: Theme.of(context).brightness == Brightness.dark
          ? const Color.fromARGB(255, 25, 61, 78)
          : const Color.fromARGB(255, 238, 45, 109),
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          title,
          style: AppTextTheme.drawer(context),
        ),
        onTap: onTap,
      ),
    );
  }
}
//assignment_turned_in_outlined
//timelapse_sharp 
//ayarlar 
//star_border_sharp
//markunread_outlined
// 
