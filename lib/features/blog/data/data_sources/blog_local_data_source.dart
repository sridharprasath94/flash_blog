import 'dart:async';

import 'package:flash_blog/features/blog/data/models/blog_model.dart';
import 'package:hive/hive.dart';

abstract interface class BlogLocalDataSource {
  void uploadLocalBlogs({required final List<BlogModel> blogs});

  List<BlogModel> loadBlogs();
}

class BlogLocalDataSourceImpl implements BlogLocalDataSource {
  final Box<dynamic> box;

  BlogLocalDataSourceImpl(this.box);

  @override
  List<BlogModel> loadBlogs() {
    final List<BlogModel> blogs = <BlogModel>[];
    for (int i = 0; i < box.length; i++) {
      final dynamic json = box.get(i.toString());
      if (json != null) {
        blogs.add(BlogModel.fromJson(Map<String, dynamic>.from(json)));
      }
    }
    return blogs;
  }

  @override
  Future<void> uploadLocalBlogs({required final List<BlogModel> blogs}) async {
    await box.clear();
    for (int i = 0; i < blogs.length; i++) {
      await box.put(i.toString(), blogs[i].toJson());
    }
  }
}
