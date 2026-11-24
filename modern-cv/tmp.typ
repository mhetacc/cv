#import "@preview/modern-cv:0.10.0": *

#let venetian = rgb("#A42A04")

#show: resume.with(
  author: (
    firstname: "Marco",
    lastname: "Bellò",
    email: "marco.bello.vi@gmail.com",
    phone: "+39 3497617003",
    github: "mhetacc",
    positions: (), // the template requires this key, even if empty
    // Telegram has no dedicated field, so it goes in as a custom entry
    custom: (
      (text: "t.me/mhetac", icon: "telegram", link: "https://t.me/mhetac"),
    ),
  ),
  profile-picture: none,
  date: datetime.today().display(),
  paper-size: "a4",
  language: "en",
  accent-color: venetian,
  colored-headers: true,
)

// Section headings: colour both the title and the rule with venetian red.
// Placed after the template's show rule, so it overrides the template's own.
#show heading.where(level: 1): it => block(sticky: true)[
  #set text(size: 16pt, weight: "regular")
  #set align(left)
  #set block(above: 1em)
  #strong[#text(fill: venetian)[#it.body]]
  #box(width: 1fr, line(length: 100%, stroke: 0.8pt + venetian))
]

= Education

#resume-entry(
  title: "University of Padua",
  location: "Padua, Italy",
  date: "2026",
  description: "Master in Computer Science",
)

#resume-entry(
  title: "University of Helsinki",
  location: "Helsinki, Finland",
  date: "2025",
  description: "Erasmus Exchange",
)

#resume-entry(
  title: "University of Padua",
  location: "Padua, Italy",
  date: "2023",
  description: "Bachelor in Computer Science (91/110)",
)

= Projects

#resume-entry(
  title: "Regression and Classification Tasks in R",
  date: "2026",
  description: "Small-scale projects",
)
#resume-item[
  Small-scale projects for both regression and classification tasks in R.
  - #link("https://github.com/mhetacc/UNIPD_DataMiningClassificationRegression")[Repository: #raw("mhetacc/UNIPD_DataMiningClassificationRegression")]
  - #link("https://github.com/mhetacc/UNIPD_DataMiningClassificationRegression/blob/0f0573f87e24efd75f3ae55be952e75852f156de/report/report.pdf")[PDF Report: #raw("mhetacc/UNIPD_DataMiningClassificationRegression/report.pdf")]
]

#resume-entry(
  title: "Pygame Showcase of Raft Consensus Algorithm",
  date: "2025",
  description: "Raftian",
)
#resume-item[
  Bare-bones Travian clone made in Pygame that showcases some of the Raft consensus algorithm's base functionality. The project leverages multithreading and remote procedure calls to achieve the desired results.
  - #link("https://github.com/mhetacc/Raftian")[Repository: #raw("mhetacc/Raftian")]
  - #link("https://github.com/mhetacc/Raftian/blob/62ea393921eda52a92554dd10b958c9e5a53520d/docs/report/report.pdf")[PDF Report: #raw("mhetacc/Raftian/.../report.pdf")]
]

#resume-entry(
  title: "Interactive Data Visualizer",
  date: "2025",
  description: "Europe's political leaning by state, 2009–2024",
)
#resume-item[
  Visualize Europe's political leaning by state from 2009 to 2024. All data were taken from Eurostat official databases. The visualization, made with Plotly, consists of a map of Europe where each state is coloured based on its election results, and a line chart which shows three metrics: net earnings, immigration and poverty risk.
  - #link("https://github.com/mhetacc/HLSK_InteractiveVisualizer")[Repository: #raw("mhetacc/HLSK_InteractiveVisualizer")]
]

#resume-entry(
  title: "Social Network Analysis on TikTok",
  date: "2024",
  description: "Echo chambers in the US political landscape",
)
#resume-item[
  The goal was to measure the presence of echo chambers in the US political landscape. Ten politically relevant TikTok accounts have been selected, respectively five left-leaning and five right-leaning. Then, data from said accounts were collected to measure their activity and perform a social network analysis on their followers.
  - #link("https://github.com/mhetacc/TikTok_SocialNetworkAnalysis")[Repository: #raw("mhetacc/TikTok_SocialNetworkAnalysis")]
  - #link("https://github.com/mhetacc/TikTok_SocialNetworkAnalysis/blob/8dda0499f91e5cfa76714df77f055aa0956abfd0/Report_BelloMorini.pdf")[PDF Report: #raw("mhetacc/TikTok_SocialNetworkAnalysis/report.pdf")]
]

= Experience

#resume-entry(
  title: "Private Tutoring",
  date: "2016 – Current",
)
#resume-item[
  - I have been tutoring students aged eight to twenty-five for ten years, mainly in computer science.
]

#resume-entry(
  title: "Janitor in preschool",
  location: "Vicenza",
  date: "Summer 2023",
)

#resume-entry(
  title: "Software Engineering Internship - Bachelor Thesis",
  date: "2022",
  description: [Datasoil s.r.l.],
  title-link: "https://datasoil.it/en/",
)
#resume-item[
  - Implemented Augmented Reality features for a cross-platform mobile application developed in Flutter.
  - #link("https://github.com/mhetacc/tesi_triennale/blob/33390b38d2449843fecf2dcca12c471b4326e752/pdf/Tesi.pdf")[PDF Thesis (Italian): #raw("mhetacc/.../Tesi.pdf")]
]

#resume-entry(
  title: "Food Delivery",
  location: "Vicenza",
  date: "2017 – 2018",
  description: "Cosatiporto",
)

= Skills

#resume-skill-item(
  "Languages",
  (strong("Italian") + " (native)", strong("English") + " (C1 – TOEFL 108/120)"),
)

#resume-skill-item(
  "CS Skills",
  (
    "Python", "R", "C++", "Dart", "Java", "SQL", "HTML",
    "LaTeX", "Git", "QML", "GDScript",
  ),
)
#resume-item[
  - I'm comfortable with any desktop operating system. My current setup runs Fedora Workstation 43.
]

#resume-skill-item(
  "Driving licenses",
  ("A", "B"),
)