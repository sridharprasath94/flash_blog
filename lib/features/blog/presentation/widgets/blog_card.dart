import 'package:flash_blog/core/utils/calculate_reading_time.dart';
import 'package:flash_blog/features/blog/domain/entities/blog.dart';
import 'package:flutter/material.dart';

class BlogCard extends StatelessWidget {
  final Blog blog;
  final Color color;
  final VoidCallback onTap;
  final VoidCallback onLongPress;

  const BlogCard({
    super.key,
    required this.blog,
    required this.color,
    required this.onTap,
    required this.onLongPress,
  });

  @override
  Widget build(final BuildContext context) => GestureDetector(
    onTap: onTap,
    onLongPress: onLongPress,
    child: Container(
      height: 200,
      margin: const EdgeInsets.all(16).copyWith(bottom: 4),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:
                      blog.topics
                          .map(
                            (final String topic) => Padding(
                              padding: const EdgeInsets.all(5),
                              child: Chip(label: Text(topic)),
                            ),
                          )
                          .toList(),
                ),
              ),
              Text(
                blog.title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Text('${calculateReadingTime(blog.content)} min'),
        ],
      ),
    ),
  );
}
