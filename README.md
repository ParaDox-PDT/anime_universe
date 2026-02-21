# Anime Universe (AniVerse) 🎌

Anime Universe — anime/manga ma’lumotlarini ko‘rish, qidirish va sevimlilarga saqlash uchun Flutter ilova. Ilova ochiq **Jikan API (MyAnimeList)** orqali ma’lumotlarni oladi.

> Maqsad: toza arxitektura (Clean Architecture), barqaror state management (BLoC), tez kengayadigan modul struktura va yaxshi DX (flutter_gen, lints, tooling).

---

## ✨ Asosiy imkoniyatlar (Features)

- **Top Anime / Top Manga** (pagination)
- **Search** (debounce + pagination)
- **Details** (anime/manga tafsilotlari, characters, recommendations — bosqichma-bosqich kengaytiriladi)
- **Favorites** (local saqlash: Hive/Isar)
- **Offline-friendly**: cache + graceful error UI
- **Rate limit handling**: 429 holatida foydalanuvchiga tushunarli xabar va retry UX

---

## 🧱 Texnologiyalar

- **Flutter** (stable)
- **BLoC**: `flutter_bloc`, `equatable`
- **Networking**: `dio` (+ interceptors)
- **DI**: `get_it`
- **Router**: `go_router`
- **Local storage**: `hive` (yoki Isar)
- **Codegen**: `flutter_gen` (assets/fonts/colors)

---

## 📁 Project Structure (Clean Architecture)

> Har bir feature alohida modul: `data / domain / presentation`.

```txt
lib/
  main.dart
  bootstrap.dart
  src/
    app/
      app.dart
      app_bloc_observer.dart
      app_initializer.dart

    config/
      router/
        app_router.dart
        routes.dart
      theme/
        app_theme.dart
        colors.dart
        text_styles.dart

    core/
      constants/
        endpoints.dart
        app_constants.dart
      di/
        injector.dart
        injector_modules.dart
      errors/
        exception.dart
        failure.dart
        error_mapper.dart
      network/
        dio_client.dart
        dio_interceptors.dart
        network_info.dart
      utils/
        debounce.dart
        logger.dart
        result.dart
      widgets/
        app_scaffold.dart
        app_error_view.dart
        app_loading.dart

    features/
      anime/
        data/
          datasources/
          models/
          repositories/
        domain/
          entities/
          repositories/
          usecases/
        presentation/
          bloc/
          pages/
          widgets/
      manga/
        ...
      favorites/
        ...
