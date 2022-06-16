class Work {
  final String companyName;
  final String lenghtOfWork;
  final String location;
  final String? url;
  final String? info;
  Work({
    required this.companyName,
    required this.lenghtOfWork,
    required this.location,
    this.url,
    this.info,
  });
}
