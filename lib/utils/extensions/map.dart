extension MapExt on Map {
  dynamic getByKey(String key) {
    if (containsKey(key)) {
      return this[key]!;
    }
    return null;
  }
}
