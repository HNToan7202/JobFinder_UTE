enum DescriptionJobStatus {
  DESCIPTION,
  REQUIREMENT,
  ABOUT,
  REVIEWS;

  String get displayValue {
    switch (this) {
      case DescriptionJobStatus.DESCIPTION:
        return 'Description';
      case DescriptionJobStatus.REQUIREMENT:
        return 'Requirement';
      case DescriptionJobStatus.ABOUT:
        return 'About';
      case DescriptionJobStatus.REVIEWS:
        return 'Reviews';

      default:
        return '';
    }
  }
}
