/// API Endpoints for Anime Universe (Jikan API v4)
class Endpoints {
  Endpoints._();

  static const String baseUrl = 'https://api.jikan.moe/v4/';

  // ============================================================
  // Home / Discover
  // ============================================================

  static const String topAnime = 'top/anime';
  static const String topManga = 'top/manga';
  static const String seasonNow = 'seasons/now';
  static const String upcomingSeason = 'seasons/upcoming';
  static const String randomAnimeDiscover = 'random/anime';

  // ============================================================
  // Search
  // ============================================================

  static const String searchAnime = 'anime';
  static const String searchManga = 'manga';

  // ============================================================
  // Details
  // ============================================================

  static String animeFullDetails(int id) => 'anime/$id/full';
  static String mangaFullDetails(int id) => 'manga/$id/full';
  static String animeCharacters(int id) => 'anime/$id/characters';
  static String animeRecommendations(int id) => 'anime/$id/recommendations';
  static String animeEpisodes(int id) => 'anime/$id/episodes';
  static String animePictures(int id) => 'anime/$id/pictures';

  // ============================================================
  // Schedule / Calendar
  // ============================================================

  static const String schedules = 'schedules';

  // ============================================================
  // Seasons
  // ============================================================

  static const String seasonsList = 'seasons';
  static String specificSeason(int year, String season) => 'seasons/$year/$season';

  // ============================================================
  // Genres
  // ============================================================

  static const String animeGenres = 'genres/anime';
  static const String mangaGenres = 'genres/manga';

  // ============================================================
  // Characters / People (Encyclopedia)
  // ============================================================

  static String characterFull(int id) => 'characters/$id/full';
  static String peopleFull(int id) => 'people/$id/full';
  static const String searchCharacters = 'characters';
  static const String searchPeople = 'people';

  // ============================================================
  // Watch (Episodes / Promos Feed)
  // ============================================================

  static const String latestEpisodes = 'watch/episodes';
  static const String popularPromos = 'watch/promos/popular';

  // ============================================================
  // Random
  // ============================================================

  static const String randomAnime = 'random/anime';
  static const String randomManga = 'random/manga';
  static const String randomCharacter = 'random/characters';
  static const String randomPeople = 'random/people';
  static const String randomUsers = 'random/users';
}
