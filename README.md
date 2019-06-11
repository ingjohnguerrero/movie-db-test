# movie-db-test
Test application using movie db

---
## TODO List ## 

- [X] Consumir el API de películas y series de la siguiente pagina: link
- [X] Debe tener tres categorías de películas y/o series: Popular, Top Rated, Upcoming.
- [X] Cada película y/o series debe poder visualizar su detalle.
- [X] Debe funcionar tanto online como offline (cache). -> (Alamofire cache)
- [ ] Debe tener un buscador offline por categorías.
Valoraciones extras:
1. [ ] Visualización de los videos en el detalle de cada ítem.
2. [X] Transiciones, Animaciones, UI/UX.
3. [X] Buscador Online.
4. [X] Unit Test.
5. [ ] Implementación de RXSwift y RXCocoa.

---
Una vez acabada la prueba describa en un readme brevemente:
1. Las capas de la aplicación (por ejemplo capa de persistencia, vistas, red, negocio, etc) y
qué clases pertenecen a cual.
    * El proyecto fue estructurado utilizando arquitectura VIPER, según lo propuesto por [Damjan Vujaklija
]("https://infinum.co/the-capsized-eight/developing-ios-apps-using-viper-3-years-later") de [infinum]("https://infinum.co"), a partir del generador de templates de las capas, cumpliendo con los lineamientos de una [Arquitectura limpia - Uncle Bob]("https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html").
    * Se encuentra dividida en los siguientes modulos(VIPER):
        * MovieList: La primer sección que es cargada en la aplicación, compuesta por un collectionView para presentar las diferentes peliculas. Así como un selector con un MDCTabBar, material components de Google para iOS, permitiendo una composición de vistas más limpias.
        * MovieDetails: La vista de detalle, esta compuesta por el **backdrop image**, que es colapsable al hacer scroll cuando el overview es algo largo. El ScrollView contiene una agrupación de diferentes tipos de vistas al interior, stackViews, labels, imageView, etc...
    * Se desarrolló la lógica de la aplicación tomando en cuenta la metodología TDD.
        * Se realizaron Unit tests sobre los modelos, el API client para acceder al contenido de **The Movie DB**
    * El API usa [Alamofire 5]("https://github.com/Alamofire/Alamofire"), es accedido por el interactor de casa uno de los modulos. También cuenta con pruebas unitarias, así como la implementación de *Codable/Decodable*
    * Las imagenes son implementadas por la librería [Kingfisher]("https://github.com/onevcat/Kingfisher")
    * SwiftLint para usar los guidelines estandar para Swift

2. La responsabilidad de cada clase creada.
Responda y escriba dentro del Readme con las siguientes preguntas:
    * En qué consiste el principio de responsabilidad única? Cuál es su propósito?
    
        * El principio de responsabilidad, obecede a que una clase o función debe modificar una sola cosa y así mismo solo se debe poder modificar de una sola forma. Por lo tanto solo puede modificar hasta el dominio o scope sobre el que debería tener control el método o clase. No puede estar mezclado, con comportamientos externos a los propios para los que está desarrollada.

    * Qué características tiene, según su opinión, un “buen” código o código limpio?
        * El buen código se caracteriza por: 
            * Es eficiente, permitiendo su fácil mantenimiento.
            * Mantenible, escrito con el ideal de que se escribe para ser escrito por otras personas. 
            * Bien estructurado, en la medida que en la forma en que se comunican las diferentes partes del desarrollo, se hace más complejo o sencillo de mantener.
            * Avalado por los pares desarrolladores, al punto que estarían cómodos reutilizando partes de tu código.
            * Legible, para facilitar el entendimiento por parte de un nuevo desarrollador.
            * Estandares, manteniendo este set de reglas y guías. El código se hace mantenible y entendible para los demás desarrolladores.
            * Extensibilidad, en la medida que el código pueda se modificado facilmente y agregar nuevas funcionalidades.