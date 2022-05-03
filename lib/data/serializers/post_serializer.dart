import '../../domain/entities/post.dart';
import 'serializer.dart';
import 'user_serializer.dart';

class PostSerializer implements Serializer<Post, Map<String, dynamic>> {
  @override
  Post from(Map<String, dynamic> json) {
    return Post(
      id: json['id'] as int,
      body: json['body'] as String,
      author: UserSerializer().from(json['author'] as Map<String, dynamic>),
      imageUrl: json['imageUrl'] as String,
      likes: json['likes'] as int,
    );
  }

  @override
  Map<String, dynamic> to(Post object) {
    return {
      'id': object.id,
      'body': object.body,
      'imageUrl': object.imageUrl,
      'likes': object.likes,
    };
  }

  @override
  Post fake() => Post(
        id: 1,
        body: 'Post 1',
        author: UserSerializer().fake(),
        imageUrl: '',
        likes: 0,
      );
}
