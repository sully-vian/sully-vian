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
  #contact-section(main-color: main-color, i18n: "en", contact-entries: (
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
      logo-text: "Konstanz, Germany",
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
  #left-section(title: "Languages", [
    French (Native)\
    English (Fluent, C1)\
    German (A2-B1)
  ])
  #left-section-gap
  #left-section(title: "Soft skills", [
    - *Teamwork*
      - school project
      - scouting
    - *Critical thinking*
      - epistemology, zetetic
    - *Pedagogy*
      - scouting
      - tutoring
  ])
  #left-section-gap
  #left-section(title: "Hobbies & Interests", [
    - Open Source Contributions
    - GNU/Linux
    - Scouting (10 years)
    - Rock climbing (when I have time)
    - Biking
  ])
]


#show: cv.with(
  title: name,
  subtitle: [
    Young graduate in Computer Science and Systems Engineering\
    *Available from March 2026 for a full-time graduation project internship*\
  ],
  avatar: image("assets/avatar.png"),
  avatar-size: 2.2cm,
  left-content: left-content,
)


#right-column-subtitle("Education")

#cv-entry(
  title: [
    *Master's Degree in CS and Software Engineering*
  ],
  date: "2023 - 2026",
  subtitle: [ENSEEIHT, Toulouse, France],
  [
    - Specialisation: Formal Methods and Software & Systems Engineering
    - Practical coursework and lab work in software development, verification and theoretical computer science
    - Team projects in software engineering, web dev and formal methods
  ],
)

#entry-gap

#cv-entry(
  title: [
    *"Preparatory class"*, Math, Physics, CS
  ],
  date: "2021 - 2023",
  subtitle: [Janson-De-Sailly highschool, Paris, France],
  [
    - Algebra, Analysis, Functional & dynamic programming, Mechanics, Thermodynamics, Chemistry, Thermochemistry
  ],
)

#entry-gap

#cv-entry(
  title: [
    *General Baccalaureate*
  ],
  date: "2014 - 2021",
  subtitle: [Le Caousou highschool, Toulouse, France],
  [
    - Baccalaureate with honors majored in math and physics,  ancient Greek option
  ],
)

#section-gap

#right-column-subtitle("Projects")

#cv-entry(
  title: [
    *Particle life simulator*
  ],
  date: "2014",
  subtitle: [ENSEEIHT, OOP class],
  [
    - Agile methods and Scrum framework
    - Java OOP, Java Swing
  ],
)

#entry-gap

#cv-entry(
  title: [
    *Cloud Hervy - Google Drive clone*
  ],
  date: "2024",
  subtitle: [Personal project],
  [
    - Discovery of the JS ecosystem: ExpressJS, TS, Node
    - Development of a REST API (server/client)
  ],
)

#section-gap

#right-column-subtitle("Professional Experience")

#cv-entry(
  title: [
    *Intern Software developer*
  ],
  date: "Jun - Jul 2025",
  subtitle: [IRIT, Toulouse, France],
  [
    - Developed a Java annotation processor that generates runtime contract checks from JML-style specifications using ANTLR and JavaC AST manipulation, delivered as a tool for student use.
  ],
)

#entry-gap

#cv-entry(
  title: [
    *Intern Web Developer (WordPress)*
  ],
  date: "Jun 2024",
  subtitle: [Les Maths En Scène, Toulouse, France],
  [
    - Redesigned the association's digital identity by revamping its website (WordPress web development).
  ],
)

#entry-gap

#cv-entry(
  title: [
    *Private Maths and Physics Tutor*, Freelance
  ],
  date: "2022 - present",
  subtitle: [Toulouse & Paris, France],
  [
    - Weekly home tutoring
    - Volunteer tutoring in a Parisian highschool
  ],
)

#entry-gap

#cv-entry(
  title: [*Waiter*],
  date: "2023",
  subtitle: [Arcadie's Gardens (senior's residence), Toulouse, France],
  [
    - Service at the residence restaurant
    - Meal delivery to apartments for the most disabled residents
  ],
)

#entry-gap

#cv-entry(
  title: [*Shadowing intern*, Public research labs],
  date: "Dec 2017 & Jun 2019",
  subtitle: [BIPM & IRAP, Toulouse & Paris, France],
  [
    - Exploration of work conducted on measurement units
    - Understanding the importance of teamwork (international, inter-laboratory)
    - Familiarization with methods for designing space missions
  ],
)
