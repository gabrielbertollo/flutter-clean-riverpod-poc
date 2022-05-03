import '../../domain/entities/post.dart';
import '../../domain/repositories/post_repository.dart';
import '../serializers/post_serializer.dart';

class PostRepositoryImpl implements PostRepository {
  @override
  Future<List<Post>> getPosts() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      PostSerializer().fake(),
      PostSerializer().fake(),
    ];
  }

  @override
  Future<Post> getPost(int id) async {
    await Future.delayed(const Duration(seconds: 1));
    return PostSerializer().fake();
  }

  @override
  Future<Post> createPost(Post post) async {
    await Future.delayed(const Duration(seconds: 1));
    return PostSerializer().fake();
  }

  @override
  Future<Post> updatePost(Post post) async {
    await Future.delayed(const Duration(seconds: 1));
    return PostSerializer().fake();
  }

  @override
  Future<void> deletePost(int id) async {
    await Future.delayed(const Duration(seconds: 1));
  }
}
