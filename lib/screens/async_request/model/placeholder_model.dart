class PlaceholderModel {
  final int albumId;
  final int id;
  final String url;
  final String title;
  final String thumbnailUrl;

//<editor-fold desc="Data Methods">

  const PlaceholderModel({
    required this.albumId,
    required this.id,
    required this.url,
    required this.title,
    required this.thumbnailUrl,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PlaceholderModel &&
          runtimeType == other.runtimeType &&
          albumId == other.albumId &&
          id == other.id &&
          url == other.url &&
          title == other.title &&
          thumbnailUrl == other.thumbnailUrl);

  @override
  int get hashCode =>
      albumId.hashCode ^
      id.hashCode ^
      url.hashCode ^
      title.hashCode ^
      thumbnailUrl.hashCode;

  @override
  String toString() {
    return 'PlaceholderModel{' +
        ' albumId: $albumId,' +
        ' id: $id,' +
        ' url: $url,' +
        ' title: $title,' +
        ' thumbnailUrl: $thumbnailUrl,' +
        '}';
  }

  PlaceholderModel copyWith({
    int? albumId,
    int? id,
    String? url,
    String? title,
    String? thumbnailUrl,
  }) {
    return PlaceholderModel(
      albumId: albumId ?? this.albumId,
      id: id ?? this.id,
      url: url ?? this.url,
      title: title ?? this.title,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'albumId': this.albumId,
      'id': this.id,
      'url': this.url,
      'title': this.title,
      'thumbnailUrl': this.thumbnailUrl,
    };
  }

  factory PlaceholderModel.fromMap(Map<String, dynamic> map) {
    return PlaceholderModel(
      albumId: map['albumId'] as int,
      id: map['id'] as int,
      url: map['url'] as String,
      title: map['title'] as String,
      thumbnailUrl: map['thumbnailUrl'] as String,
    );
  }

//</editor-fold>
}
