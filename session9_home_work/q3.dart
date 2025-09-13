/*
 Q3 Create a class Movie with attributes title and rating. In main(), create a list of 4 movies. Print
 only the movies with a rating above 7
*/
class Movie {
  String title;
  double rating;

  Movie(this.title, this.rating);

  void printDetails() {
    print("Movie: $title, Rating: $rating");
  }
}

void main() {
  List<Movie> movies = [
    Movie("Inception", 8.8),
    Movie("The Room", 3.7),
    Movie("Interstellar", 8.6),
    Movie("Avatar", 7.5),
  ];

  print("Movies with rating above 7:");
  for (var movie in movies) {
    if (movie.rating > 7) {
      movie.printDetails();
    }
  }
}
