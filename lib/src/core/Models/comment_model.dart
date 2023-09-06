class CommentModel {
  String? name;
  String? email;
  String? body;

  CommentModel(this.body, this.email, this.name);

  CommentModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    body = json['body'];
  }
}
