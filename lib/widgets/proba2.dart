import 'package:flutter/material.dart';

class Proba2 extends StatelessWidget {
  const Proba2({super.key});

  @override
  Widget build(BuildContext context) {
    final yellow = const Color(0xFFFFE39B);

    return Padding(
      padding: const EdgeInsets.all(12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: _InfoCard(
                        bg: yellow,
                        icon: Icons.view_column,
                        title: "Row()",
                        text:
                            "Виджет, который размещает список дочерних виджетов горизонтально в одной строке",
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: _InfoCard(
                        bg: Colors.white,
                        icon: Icons.view_agenda,
                        title: "Column()",
                        text:
                            "Виджет, который размещает список дочерних виджетов вертикально в одном столбце",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: _InfoCard(
                        bg: Colors.white,
                        icon: Icons.text_fields,
                        title: "Text()",
                        text:
                            "Простой виджет, для отображения и форматирования текста",
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: _InfoCard(
                        bg: yellow,
                        icon: Icons.open_in_full,
                        title: "Expanded()",
                        text:
                            "Гибкий виджет, который расширяет виджет на всё пространство",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final Color bg;
  final IconData icon;
  final String title;
  final String text;

  const _InfoCard({
    required this.bg,
    required this.icon,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bg,
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // по вертикали в центре
          crossAxisAlignment: CrossAxisAlignment.start, // по горизонтали в центре
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 22),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              text,
              textAlign: TextAlign.center, // теперь текст по центру
              style: TextStyle(
                fontSize: 13.5,
                color: Colors.black.withOpacity(0.75),
                height: 1.3,
              ),
              softWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}
