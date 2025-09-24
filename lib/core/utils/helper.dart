extension Capitalize on String {
  String capitalizeEachWord() {
    return split(' ')
        .map(
          (e) =>
              e.trim().isNotEmpty
                  ? e[0].toUpperCase() + e.substring(1).toLowerCase()
                  : e,
        )
        .join(' ');
  }
}
