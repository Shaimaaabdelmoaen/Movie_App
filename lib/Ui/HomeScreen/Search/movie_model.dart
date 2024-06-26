class MovieModel {
  String? movieTitle;
  int? movieReleaseYear; // Change the data type to int
  String? moviePosterUrl;
  double? rating;
  String? overview;

  MovieModel(this.movieTitle, String releaseDate, this.rating,this.overview, this.moviePosterUrl) {
    if (releaseDate.isNotEmpty) {
      final dateParts = releaseDate.split('-');
      if (dateParts.isNotEmpty) {
        movieReleaseYear = int.tryParse(dateParts[0]);
    }
    }
    }
}