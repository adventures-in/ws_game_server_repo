import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'other_player_ids.freezed.dart';
part 'other_player_ids.g.dart';

@freezed
class OtherPlayerIds with _$OtherPlayerIds {
  static const String jsonType = 'other_player_ids';
  factory OtherPlayerIds(
      {@Default(OtherPlayerIds.jsonType) String type,
      required ISet<String> ids}) = _OtherPlayerIds;

  factory OtherPlayerIds.fromJson(Map<String, Object?> json) =>
      _$OtherPlayerIdsFromJson(json);
}
