import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/comic.dart';

part 'comics_model.freezed.dart';
part 'comics_model.g.dart';

@freezed
abstract class ComicModel with _$ComicModel{
  const ComicModel._();
  
  const factory ComicModel({
    required String title,
    required String description,
    required String latestChapter,
    required String thumbnail,
    required String param,
    required String detailUrl,
  }) = _ComicModel;

  factory ComicModel.fromJson(Map<String, dynamic> json) => _$ComicModelFromJson(json);

  Comic toEntity() {
    return Comic(
      title: title,
      description: description,
      latestChapter: latestChapter,
      thumbnail: thumbnail,
      param: param,
      detailUrl: detailUrl,
    );
  }
}