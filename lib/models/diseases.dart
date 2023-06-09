class Disease {
  final String id;
  final String crop;
  final String title;
  final String description;
  final List<String> images;

  const Disease(
      {required this.id,
      required this.crop,
      required this.title,
      required this.description,
      required this.images});
}
