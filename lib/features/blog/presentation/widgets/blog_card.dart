import 'package:flash_blog/core/utils/calculate_reading_time.dart';
import 'package:flash_blog/features/blog/domain/entities/blog.dart';
import 'package:flutter/material.dart';

class BlogCard extends StatefulWidget {
  final Blog blog;
  final Color color;
  final VoidCallback onTap;
  final VoidCallback onTapDeleteIcon;

  const BlogCard({
    super.key,
    required this.blog,
    required this.color,
    required this.onTap,
    required this.onTapDeleteIcon,
  });

  @override
  State<BlogCard> createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
  bool _showDelete = false;

  void _handleLongPress() {
    setState(() {
      _showDelete = true;
    });

    // Optionally auto-hide after a few seconds
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        setState(() => _showDelete = false);
      }
    });
  }

  @override
  Widget build(final BuildContext context) => GestureDetector(
    onTap: widget.onTap,
    onLongPress: _handleLongPress,
    child: Container(
      height: 200,
      margin: const EdgeInsets.all(16).copyWith(bottom: 4),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Column(
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
                      widget.blog.topics
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
                    widget.blog.title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text('${calculateReadingTime(widget.blog.content)} min'),
            ],
          ),
          if (_showDelete)
            Positioned(
              top: 12,
              right: 20,
              child: GestureDetector(
                onTap: widget.onTapDeleteIcon,
                child: const CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.red,
                  child: Icon(
                    Icons.delete,
                    size: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
        ],
      ),
    ),
  );
}
