abstract class LanguageStyleEvent{}

class LoadLanguageStyle extends LanguageStyleEvent{}
class AddLanguageStyle extends LanguageStyleEvent{
  final String language;
  AddLanguageStyle(this.language);
}