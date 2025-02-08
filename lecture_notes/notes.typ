#import "lib.typ": *

#show: template.with(
  title: [ A Lecture Notes Example ],
  short_title: "Lecture Notes Example",
  description: [
    A simple example of a lecture notes document using the `jsk-lecnotes` template.
  ],
  date: datetime(year: 2024, month: 12, day: 25),
  authors: (
    (
      name: "Shinkai Kung",
      link: "",
    ),
  ),

  // lof: true,
  // lot: true,
  // lol: true,
  bibliography_file: "refs.bib",
  paper_size: "a4",
  // landscape: true,
  cols: 1,
  text_font: "STIX Two Text",
  code_font: "Cascadia Mono",
  accent: "#1A41AC", // blue
  h1-prefix: "Lecture",
  colortab: true,
)

#include "content/1_.typ"
