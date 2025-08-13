abstract final class Routes {
  static const String personas = "/personas-list";
  static String personaDetails(String personaId) => "$personas/$personaId";
}
