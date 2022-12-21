class Pest {
  final String id;
  final String crop;
  final String title;
  final String description;
  final List<String> images;
  final List<String> symptoms;
  final List<String> identification;
  final List<String> management;

  const Pest(
      {required this.id,
      required this.crop,
      required this.title,
      required this.description,
      required this.images,
      required this.symptoms,
      required this.identification,
      required this.management});
}
