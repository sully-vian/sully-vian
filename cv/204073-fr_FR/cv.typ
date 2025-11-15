#import "@preview/toy-cv:0.1.0": *

#let main-color = rgb("#E40019")

#let name = "Vianney Hervy"
#let mail = "vianney.hervy@etu.inp-n7.fr"
#let github = "https://github.com/sully-vian"
#let linkedin = "https://linkedin.com/in/vianney-hervy-9b6493265/"

#let entry-gap = v(1fr / 2)
#let section-gap = v(1fr / 2)
#let left-section-gap = v(1fr / 2)

#let left-content = [
  #contact-section(main-color: main-color, i18n: "fr", contact-entries: (
    (
      logo-name: "envelope",
      logo-link: "mailto:" + mail,
      logo-text: mail,
    ),
    (
      logo-name: "github",
      logo-link: github,
      logo-text: github,
      logo-font: "Font Awesome 7 Brands",
    ),
    (
      logo-name: "location-dot",
      logo-text: "Konstanz, Allemagne (Erasmus)",
    ),
    (
      logo-name: "phone",
      logo-link: "tel:+33 7 69 88 85 92",
      logo-text: "+33 7 69 88 85 92",
    ),
    (
      logo-name: "linkedin",
      logo-link: linkedin,
      logo-text: linkedin,
      logo-font: "Font Awesome 7 Brands",
    ),
  ))
  #left-section-gap
  #left-section(title: "Hard Skills", [
    - *Langages*: Java (11/17), JavaScript, TypeScript, SQL
    - *Frameworks*: Spring Boot, JPA, Node.js, Express.js
    - *Outils*: Git, MySQL, APIs REST, JWT, Linux, Maven, Docker
  ])
  #left-section-gap
  #left-section(title: "Langues", [
    - *Français* (Maternelle)
    - *Anglais* (C1)
      - Expat. 2 ans (USA) & cours
    - *Allemand* (B1)
      - Semestre Erasmus & cours
  ])
  #left-section-gap
  #left-section(title: "Soft skills", [
    - *Esprit d'équipe*
      - Scoutisme
      - Projets scolaires
      - Événementiel national (#link("https://www.sessionexode.com/")[Session Exode])
    - *Esprit critique*
      - Cours d'épistémologie, zététique et RSE
    - *Pédagogie*
      - Scoutisme
      - Tutorat
    - *Curiosité*
      - Veille technologique active
      - Suivi de projets open-source
  ])
  #left-section-gap
  #left-section(title: "Centres d'intérêt", [
    - Projets open-source
    - GNU/Linux, scripting, automatisation
    - Scoutisme (10 ans)
    - Escalade (quand j'ai le temps)
    - Vélo
  ])
]


#show: cv.with(
  title: name,
  subtitle: [
    Étudiant en Génie Logiciel à l'ENSEEIHT - Recherche un stage full-stack\
    *Disponible dès mars 2026 - Projet de fin d'études 6 mois (Île-de-France)*\
  ],
  avatar: image("../assets/penguin-square.jpg"),
  avatar-size: 2.2cm,
  left-content: left-content,
)


#right-column-subtitle("Formation")
#cv-entry(
  title: [
    *Semestre d'échange Erasmus*
  ],
  date: "sept. 2025 - févr. 2026",
  subtitle: [Konstanz Hochschule, Konstanz, Allemagne],
  [
    - Développement cloud (Google Cloud, Docker, Next.js, React)
  ],
)

#entry-gap

#cv-entry(
  title: [
    *Master d'ingénieur en systèmes logiciels*
  ],
  date: "sept. 2023 - sept. 2026",
  subtitle: [ENSEEIHT, Toulouse, France],
  [
    - Développement Java (web et application)
    - Informatique théorique: vérification statique, programmation fonctionnelle
  ],
)

#entry-gap

#cv-entry(
  title: [
    *Classe Préparatoire*, MPSI - MP option info
  ],
  date: "sept. 2021 - juil. 2023",
  subtitle: [Lycée Janson-De-Sailly, Paris, France],
  [],
)

#entry-gap

#cv-entry(
  title: [
    *Baccalauréat général*
  ],
  date: "sept. 2014 - juin 2021",
  subtitle: [Lycée Le Caousou, Toulouse, France],
  [
    - Bac mention Bien, spécialités maths-physique-anglais, option grec ancien
  ],
)

#section-gap

#right-column-subtitle("Projets")

#cv-entry(
  title: [
    #link("https://github.com/sully-vian/hagymont")[*HaGymont - Application Web Full-Stack*]
  ],
  date: "2025",
  subtitle: [ENSEEIHT, Projet de groupe d'application web],
  [
    - Backend: Spring Boot, authentification JWT, persistance JPA (MySQL)
    - Frontend: React
    - Utilisation de l'API de Gemini pour un chatbot intégré
  ],
)

#entry-gap

#cv-entry(
  title: [
    *Schwarzwald - Application Web Full-Stack*
  ],
  date: "2025 - 2026",
  subtitle: [Hochschule Konstanz, Projet de groupe de Développement Cloud],
  [
    - Backend Express.js et Prisma (Postgres) - Frontend Next.js, React et Tailwind
    - Déploiement Google Cloud avec Docker, Cloud Run, Cloud SQL, Terraform et Firestore
  ],
)

#section-gap

#right-column-subtitle("Expériences professionnelles")

#cv-entry(
  title: [
    *Stagiaire développeur en laboratoire de recherche*
  ],
  date: "juin - juil. 2025",
  subtitle: [IRIT, Toulouse, France],
  [
    - Conception et développement d'un processeur d'annotations Java supportant la programmation par contrat
    - Insertion d'assertions dans l'AST JavaC à la compilation
  ],
)

#entry-gap

#cv-entry(
  title: [
    *Stagiaire développeur web (WordPress)*
  ],
  date: "juin 2024",
  subtitle: [Les Maths En Scène, Toulouse, France],
  [
    - Refonte du site de l'association en repensant le design et l'architecture
  ],
)

#entry-gap

#cv-entry(
  title: [
    *Professeur particulier en maths et physique*, Freelance
  ],
  date: "2022 - présent",
  subtitle: [Toulouse & Paris, France],
  [
    - Aide à la préparation au concours d'entrée de l'École de Santé des Armées
    - Tutorat bénévole hebdomadaire dans un lycée parisien
  ],
)

#entry-gap

#cv-entry(
  title: [*Serveur*],
  date: "2023",
  subtitle: [Les jardins d'Arcadie, Résidence pour séniors, Toulouse, France],
  [
    - Service au restaurant et en chambre pour les résidents handicapés
  ],
)

#entry-gap

#cv-entry(
  title: [*Stagiaire en observation*, Laboratoires de recherche],
  date: "déc. 2017 & juin 2019",
  subtitle: [BIPM & IRAP, Toulouse & Paris, France],
  [],
)
