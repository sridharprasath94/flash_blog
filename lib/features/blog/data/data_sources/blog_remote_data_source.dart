import 'dart:io';

import 'package:flash_blog/core/error/exceptions.dart';
import 'package:flash_blog/features/blog/data/models/blog_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class BlogRemoteDataSource {
  Future<BlogModel> uploadBlog(final BlogModel blog);

  Future<String> uploadBlogImage({
    required final File image,
    required final BlogModel blog,
  });

  Future<List<BlogModel>> getAllBlogs();
}

class BlogRemoteDataSourceImpl implements BlogRemoteDataSource {
  final SupabaseClient supabaseClient;

  BlogRemoteDataSourceImpl(this.supabaseClient);

  @override
  Future<BlogModel> uploadBlog(final BlogModel blog) async {
    try {
      final PostgrestList blogData =
          await supabaseClient.from('blogs').insert(blog.toJson()).select();
      return BlogModel.fromJson(blogData.first);
    } on PostgrestException catch (e) {
      throw ServerException(e.message);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<String> uploadBlogImage({
    required final File image,
    required final BlogModel blog,
  }) async {
    try {
      final StorageFileApi storageFileApi = supabaseClient.storage.from(
        'blog_images',
      );
      await storageFileApi.upload(blog.id, image);
      return storageFileApi.getPublicUrl(blog.id);
    } on StorageException catch (e) {
      debugPrint('Error uploading image: ${e.message}');
      throw ServerException(e.message);
    } catch (e) {
      debugPrint('Error uploading image: $e');
      throw ServerException(e.toString());
    }
  }

  @override
  Future<List<BlogModel>> getAllBlogs() async {
    try {
      final PostgrestList blogs = await supabaseClient
          .from('blogs')
          .select('*, profiles (username)');
      return blogs.map((final PostgrestMap blog) {
        final Map<String, dynamic> posterName = blog['profiles'];
        return BlogModel.fromJson(
          blog,
        ).copyWith(posterName: posterName['username']);
      }).toList();
    } on PostgrestException catch (e) {
      debugPrint('Error fetching blogs: ${e.message}');
      throw ServerException(e.message);
    } catch (e) {
      debugPrint('Error fetching blogs: $e');
      throw ServerException(e.toString());
    }
  }
}
