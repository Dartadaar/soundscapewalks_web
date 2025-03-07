enum Language { english, polish }

class PageLanguage {
  // Default language
  static Language current = Language.english;

  // Map for English text
  static const Map<String, String> _enText = {
    'installationName': 'SOUNDSCAPEWALKS',
    'aboutSection': 'Soundscapewalks to projekt realizowany wieloetapowo w formie instrumentalnych improwizacji wykonywanych w terenie, realizacji nagrań terenowych - soundscape’ów, nagrań improwizacji na instrumentach i obiektach w studio, a także instalacji audiowizualnych. Założeniem projektu jest głęboka eksploracja tożsamości Warszawy, zagłębienie się w materiał genetyczny miasta na różnych jego płaszczyznach (skany 3D obiektów, pomników, budynków w mieście, realizacja nagrań ambisonicznych, będących podstawą kompozycji warstwy dźwiękowej), skupienie się na pozornie niezauważalnym tle, które faktycznie determinuje przestrzeń, będącą w ciągłej koegzystencji z ludźmi na co dzień. Przetworzenie tła na poziomie dźwiękowym i wizualnym stało się podstawą dla dalszych rozważań o roli i istoty dźwięku oraz przestrzeni w mieście, a także w percepcji ludzkiej, składające się na przeobrażony krajobraz, w którym odbiorca będzie mógł niejako zanurzyć się, a przez to doświadczać miasto w nowy, nieznany dotąd sposób. Nieoczekiwaną konsekwencją projektu stała się pogłębiona wrażliwość na otoczenie i tło towarzyszące codzienności, na które zwykle nie zwraca się uwagi z uwagi na powszechność występowania.',
    'patrycjaBio': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquet, enim a pellentesque interdum, sapien massa aliquet risus, at convallis est est quis sapien. Morbi a ligula bibendum, pretium est tristique, sodales lacus. Praesent lobortis euismod nibh sed faucibus. Maecenas molestie velit vel venenatis volutpat. Etiam laoreet urna et eros tempus auctor. Sed porttitor erat nec sapien pellentesque, nec vehicula mauris luctus. Vestibulum varius justo non tempus tempor. Aliquam quis faucibus dolor. Nullam et convallis odio.',
    'wlodekBio': 'Composer, improviser, light designer, media artist. Having predominant interest in musical composition he explores akin areas, such as generative visual media art, stage theatre lighting, computer network design and phonology that converge into interrelated and interdisciplinary works. His works were performed by ensembles such as Ensemble MusikFabrik, Neue Vocalsolisten Stuttgart, the UMFC string orchestra, Chopin University Modern Ensemble and installations were present on Warsaw Autumn Festival. He is currently working on "soundscapewalks" with Patrycja Kolodziejska - an audiovisual installation intended as a deep exploration of the sonic identity of Warsaw.'
  };

  // Map for Polish text
  static const Map<String, String> _plText = {
    'installationName': 'SOUNDSCAPEWALKS',
    'aboutSection': 'Soundscapewalks to projekt realizowany wieloetapowo w formie instrumentalnych improwizacji wykonywanych w terenie, realizacji nagrań terenowych - soundscape’ów, nagrań improwizacji na instrumentach i obiektach w studio, a także instalacji audiowizualnych. Założeniem projektu jest głęboka eksploracja tożsamości Warszawy, zagłębienie się w materiał genetyczny miasta na różnych jego płaszczyznach (skany 3D obiektów, pomników, budynków w mieście, realizacja nagrań ambisonicznych, będących podstawą kompozycji warstwy dźwiękowej), skupienie się na pozornie niezauważalnym tle, które faktycznie determinuje przestrzeń, będącą w ciągłej koegzystencji z ludźmi na co dzień. Przetworzenie tła na poziomie dźwiękowym i wizualnym stało się podstawą dla dalszych rozważań o roli i istoty dźwięku oraz przestrzeni w mieście, a także w percepcji ludzkiej, składające się na przeobrażony krajobraz, w którym odbiorca będzie mógł niejako zanurzyć się, a przez to doświadczać miasto w nowy, nieznany dotąd sposób. Nieoczekiwaną konsekwencją projektu stała się pogłębiona wrażliwość na otoczenie i tło towarzyszące codzienności, na które zwykle nie zwraca się uwagi z uwagi na powszechność występowania.',
    'patrycjaBio': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquet, enim a pellentesque interdum, sapien massa aliquet risus, at convallis est est quis sapien. Morbi a ligula bibendum, pretium est tristique, sodales lacus. Praesent lobortis euismod nibh sed faucibus. Maecenas molestie velit vel venenatis volutpat. Etiam laoreet urna et eros tempus auctor. Sed porttitor erat nec sapien pellentesque, nec vehicula mauris luctus. Vestibulum varius justo non tempus tempor. Aliquam quis faucibus dolor. Nullam et convallis odio.',
    'wlodekBio' : 'Kompozytor, improviser, light designer, media artist. Having predominant interest in musical composition he explores akin areas, such as generative visual media art, stage theatre lighting, computer network design and phonology that converge into interrelated and interdisciplinary works. His works were performed by ensembles such as Ensemble MusikFabrik, Neue Vocalsolisten Stuttgart, the UMFC string orchestra, Chopin University Modern Ensemble and installations were present on Warsaw Autumn Festival. He is currently working on "soundscapewalks" with Patrycja Kolodziejska - an audiovisual installation intended as a deep exploration of the sonic identity of Warsaw.'
  };

  // Method to switch language
  static void setLanguage(Language lang) {
    current = lang;
  }

  // Method to get text based on current language
  static String text(String fieldName) {
    switch (current) {
      case Language.english:
        return _enText[fieldName] ?? '';
      case Language.polish:
        return _plText[fieldName] ?? '';
      default:
        return 'translation error';
    }
  }
}
