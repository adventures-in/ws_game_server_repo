class PresentList {
  final Iterable<String> _ids;
  PresentList(this._ids);
  Map<String, Object?> toJson() =>
      {'type': 'present_list', 'ids': _ids.toList()};
}
