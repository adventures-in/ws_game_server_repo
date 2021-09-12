import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'other_player_ids.freezed.dart';
part 'other_player_ids.g.dart';

@freezed
class OtherPlayerIds with _$OtherPlayerIds {
  factory OtherPlayerIds(
      {@Default('other_player_ids') String type,
      required ISet<String> ids}) = _OtherPlayerIds;

  factory OtherPlayerIds.fromJson(Map<String, Object?> json) =>
      _$OtherPlayerIdsFromJson(json);
}
