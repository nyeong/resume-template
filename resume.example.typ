#import "template.typ": *

#show: resume.with(
  title: "resume",
  author: (
    name: "안수빈",
    role: "어쩌구 엔지니어",
    introduction: [
      여기에 간단한 자기소개를 입력합니다.
    ],
    info: [
      me\@annyeong.me | 010-0000-0000 | #link("https://github.com/nyeong")[github.com/nyeong]
    ]
  ),
)

== 프로젝트

#section_item(
  title: [프로젝트 *하나*],
  date: [2022.],
  role: [#lorem(1)],
  tags: [#lorem(20)]
)[
  이곳에 프로젝트 설명을 입력합니다.

  - #lorem(10)
  - #lorem(8)
  - #lorem(3)
]

#section_item(
  title: [프로젝트 *하나*],
  date: [2022.],
  role: "백엔드",
  tags: [#lorem(10)]
)[
  이곳에 프로젝트 설명을 입력합니다.

  - #lorem(10)
  - #lorem(10)
  - #lorem(10)
  - #lorem(10)
]

#section_item(
  title: [프로젝트 *하나*],
  date: [2022.],
  role: "백엔드",
  tags: [#lorem(10)]
)[
  이곳에 프로젝트 설명을 입력합니다.

  - #lorem(10)
  - #lorem(10)
  - #lorem(10)
  - #lorem(10)
]

#pagebreak()

== 업무 경력

- #text_with_side(side: "2022. 07. ~ 2022. 12.")[*이력1* 포지션]
- #text_with_side(side: "2020. 06. ~ 2022. 06.")[*이력2* 포지션]

== 그 외 경력

- #text_with_side(side: "2022.")[#sym.circle#sym.circle 기여]
- #text_with_side(side: "2019. 08.")[#sym.circle#sym.circle 자격증 취득]

== 수상

- #text_with_side(side: "2021.")[#sym.circle #sym.circle 우승]
- #text_with_side(side: "2021.")[#sym.circle #sym.circle 수상]

== 학력

- #text_with_side(side: "2016. 02. ~ 2020. 02.")[
  #sym.circle#sym.circle 학교 #sym.circle#sym.circle 학 (학사)
]

== 자기소개

#lorem(30)

#thanks[감사합니다]
