#import "@preview/toy-cv:0.1.0": *

#let main-color = rgb("#E40019")

#let name = "Vianney Hervy"
#let mail = "vianney.hervy@etu.inp-n7.fr"
#let github = "www.github.com/sully-vian"
#let linkedin = "www.linkedin.com/in/vianney-hervy-9b6493265/"

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
    - *Outils*: Git, MySQL, API REST, JWT, Linux, Maven, Docker
  ])
  #left-section-gap
  #left-section(title: "Langues", [
    - *Français* (Maternelle)
    - *Anglais* (Courant, C1)
    - *Allemand* (A2-B1)
  ])
  #left-section-gap
  #left-section(title: "Soft skills", [
    - *Esprit d'équipe*
      - scoutisme
      - projets scolaires
      - organisation d'événements nationaux pour jeunes adultes (#link("https://www.sessionexode.com/")[Session Exode])
    - *Esprit critique*
      - cours d'épistémologie, zététique et RSE
    - *Pédagogie*
      - scoutisme
      - tutorat
    - *Curiosité*
      - Veille technologique active (articles, vidéos)
      - Intérêt pour les projets open-source dans l'objectif d'une contribution éventuelle
  ])
  #left-section-gap
  #left-section(title: "Centres d'intérêt", [
    - projets open-source
    - GNU/Linux
    - Scoutisme (10 ans)
    - Escalade (quand j'ai le temps)
    - Vélo
  ])
]


#show: cv.with(
  title: name,
  subtitle: [
    Étudiant en Génie Logiciel - Recherche un stage full-stack\
    *Disponible dès mars 2026 - Projet de fin d'études 6 mois (Île-de-France ou télétravail)*\
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
  date: "sep 2025 - fev 2026",
  subtitle: [Konstanz Hochschule, Konstanz, Allemagne],
  [
    - Développement cloud (Google Cloud, Docker, NextJS, React)
  ],
)

#entry-gap

#cv-entry(
  title: [
    *Master d'ingénieur en systèmes logiciels*
  ],
  date: "sep 2023 - sep 2026",
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
  date: "sep 2021 - juillet 2023",
  subtitle: [Lycée Janson-De-Sailly, Paris, France],
  [
    - Préparation aux concours Centrale, Mines-ponts et CCP
  ],
)

#entry-gap

#cv-entry(
  title: [
    *Baccalauréat général*
  ],
  date: "sep 2014 - juin 2021",
  subtitle: [Le Caousou highschool, Toulouse, France],
  [
    - Diplôme avec mention, spécialités maths-physique, option grec ancien
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
    - Backend ExpressJS et Prisma (Postgres) - Frontend NextJS, React et Tailwind
    - Déploiement Google Cloud avec Docker, Cloud Run, Cloud SQL, Terraform et Firestore
  ],
)

#section-gap

#right-column-subtitle("Expériences professionnelles")

#cv-entry(
  title: [
    *Stagiaire développeur en laboratoire de recherche*
  ],
  date: "juin - juillet 2025",
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
    - Service au restaurant de la résidence
    - Livraison en chambre des repas pour les résidents les plus handicapés
  ],
)

#entry-gap

#cv-entry(
  title: [*Stagiaire en observation*, Laboratoires de recherche],
  date: "déc 2017 & juin 2019",
  subtitle: [BIPM & IRAP, Toulouse & Paris, France],
  [
    - Découverte des études menées pour améliorer les unités de mesures
    - Familiarisation avec les méthodes de développement d'une mission spatiale
  ],
)
