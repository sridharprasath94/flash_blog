import 'package:flash_blog/core/theme/app_palette.dart';
import 'package:flash_blog/core/utils/calculate_reading_time.dart';
import 'package:flash_blog/core/utils/format_date.dart';
import 'package:flash_blog/features/blog/domain/entities/blog.dart';
import 'package:flutter/material.dart';

class BlogViewerView extends StatelessWidget {
  final Blog blog;

  const BlogViewerView({super.key, required this.blog});

  @override
  Widget build(final BuildContext context) => Scaffold(
    appBar: AppBar(),
    body: Scrollbar(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                blog.title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'By ${blog.posterName}',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                '${formatDateBydMMMYYYY(blog.updatedAt)} . ${calculateReadingTime(blog.content)} min',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppPalette.greyColor,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(blog.imageUrl),
              ),
              const SizedBox(height: 20),
              Text(
                blog.content,
                style: const TextStyle(fontSize: 16, height: 2),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
