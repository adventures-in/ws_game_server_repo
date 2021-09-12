// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_player_ids.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OtherPlayerIds _$$_OtherPlayerIdsFromJson(Map<String, dynamic> json) =>
    _$_OtherPlayerIds(
      type: json['type'] as String? ?? 'other_player_ids',
      ids: ISet.fromJson(json['ids'], (value) => value as String),
    );

Map<String, dynamic> _$$_OtherPlayerIdsToJson(_$_OtherPlayerIds instance) =>
    <String, dynamic>{
      'type': instance.type,
      'ids': instance.ids.toJson(
        (value) => value,
      ),
    };
