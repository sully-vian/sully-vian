#import "@preview/toy-cv:0.1.0": *

// Load the YAML data
#let data = yaml("base-en.yml")

#let main-color = rgb("#E40019")

// Extract basic personal info
#let name = data.personal_info.name
#let mail = data.personal_info.email
#let github = data.personal_info.github
#let linkedin = data.personal_info.linkedin
#let location = data.personal_info.location
#let phone = data.personal_info.phone

#let entry-gap = v(1fr / 2)
#let section-gap = v(1fr / 2)
#let left-section-gap = v(1fr / 2)

#let left-content = [
  #contact-section(main-color: main-color, i18n: "en", contact-entries: (
    (
      logo-name: "envelope",
      logo-link: "mailto:" + mail,
      logo-text: mail,
      logo-font: "Font Awesome 7 Free",
    ),
    (
      logo-name: "github",
      logo-link: github,
      logo-text: github,
      logo-font: "Font Awesome 7 Brands",
    ),
    (
      logo-name: "location-dot",
      logo-text: location,
      logo-font: "Font Awesome 7 Free Solid",
    ),
    (
      logo-name: "phone",
      logo-link: "tel:" + phone,
      logo-text: phone,
      logo-font: "Font Awesome 7 Free Solid",
    ),
    (
      logo-name: "linkedin",
      logo-link: linkedin,
      logo-text: linkedin,
      logo-font: "Font Awesome 7 Brands",
    ),
  ))

  #left-section-gap
  #left-section(title: "Technical skills", [
    - *Programming*: #data.skills.technical.programming.join(", ")
    - *Frameworks*: #data.skills.technical.frameworks.join(", ")
    - *Tools*: #data.skills.technical.tools.join(", ")
  ])

  #left-section-gap
  #left-section(title: "Spoken Languages", [
    #for lang in data.languages [
      - *#lang.language* (#lang.level)
        #if "details" in lang [
          - #lang.details
        ]
    ]
  ])

  #left-section-gap
  #left-section(title: "Soft skills", [
    - *Teamwork*
      #for item in data.skills.soft.teamwork [
        - #item
      ]
    - *Critical thinking*
      #for item in data.skills.soft.critical_thinking [
        - #item
      ]
    - *Pedagogy*
      #for item in data.skills.soft.pedagogy [
        - #item
      ]
  ])

  #left-section-gap
  #left-section(title: "Hobbies & Interests", [
    #for hobby in data.hobbies [
      - #hobby
    ]
  ])
]

#show: cv.with(
  title: name,
  subtitle: [
    #data.role - TODO \
    *#data.objective*\
  ],
  avatar: image("assets/penguin-square.jpg"),
  avatar-size: 2.2cm,
  left-content: left-content,
)

#right-column-subtitle("Education")
#for edu in data.education [
  #cv-entry(
    title: [*#edu.title*],
    date: edu.date,
    subtitle: [#edu.institution, #edu.location],
    [
      #for detail in edu.details [
        - #detail
      ]
    ],
  )
  #entry-gap
]

#section-gap

#right-column-subtitle("Projects")
#for proj in data.projects [
  #cv-entry(
    title: [*#proj.title*],
    date: proj.date,
    subtitle: [#proj.context],
    [
      #for detail in proj.details [
        - #detail
      ]
    ],
  )
  #entry-gap
]

#section-gap

#right-column-subtitle("Professional Experience")
#for exp in data.experience [
  #cv-entry(
    title: [*#exp.title*],
    date: exp.date,
    subtitle: [
      #if "company" in exp [#exp.company, ]
      #exp.location
    ],
    [
      #for detail in exp.details [
        - #detail
      ]
    ],
  )
  #if exp != data.experience.last() [
    #entry-gap
  ]
]
