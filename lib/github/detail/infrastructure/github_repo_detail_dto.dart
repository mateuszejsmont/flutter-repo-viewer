import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repo_viewer/github/detail/domain/github_repo_detail.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/timestamp.dart';

part 'github_repo_detail_dto.freezed.dart';
part 'github_repo_detail_dto.g.dart';

@freezed
class GithubRepoDetailDTO with _$GithubRepoDetailDTO {
  static const lastUsedFieldName = 'lastUsed';

  const GithubRepoDetailDTO._();
  const factory GithubRepoDetailDTO({
    required String fullName,
    required String html,
    required bool starred,
  }) = _GithubRepoDetailDTO;

  factory GithubRepoDetailDTO.fromDomain(GithubRepoDetail _) {
    return GithubRepoDetailDTO(
      fullName: _.fullName,
      html: _.html,
      starred: _.starred,
    );
  }

  factory GithubRepoDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$GithubRepoDetailDTOFromJson(json);

  factory GithubRepoDetailDTO.fromSembast(
    RecordSnapshot<String, Map<String, dynamic>> snapshot,
  ) {
    final copiedMap = Map<String, dynamic>.from(snapshot.value);
    copiedMap['fullName'] = snapshot.key;
    return GithubRepoDetailDTO.fromJson(copiedMap);
  }

  Map<String, dynamic> toSembast() {
    final json = toJson();
    json.remove('fullName');
    json[lastUsedFieldName] = Timestamp.now();
    return json;
  }

  GithubRepoDetail toDomain() {
    return GithubRepoDetail(
      fullName: fullName,
      html: html,
      starred: starred,
    );
  }
}
