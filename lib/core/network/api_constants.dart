class ApiConstants {
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String api = '5ed1a9a53046346a20f2591dbd595a3f';
  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';
  static String imageUrl(String path){
    return '$baseImageUrl$path';
  }
}
