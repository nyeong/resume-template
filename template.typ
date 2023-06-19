#let color = (
  black: rgb("#333"),
  gray: rgb("#777"),
  primary: rgb(16,163,127),
)

#let font = (
  base: "Noto Sans CJK KR"
)

#let resume(title: "", author: (:), body) = {
  set document(author: author.name, title: title)

  set page(
    paper: "a4",
    numbering: "1 / 1",
    number-align: center,
  )

  set text(
    font: font.base,
    size: 12pt,
    lang: "ko",
    fill: color.black,
  )

  show par: set block(above: 1.2em, below: 1.2em)
  set par(
    justify: false,
    linebreaks: "simple",
    leading: 1.2em,
  )


  show strong: set text(color.primary)


  set list(
    indent: .2em,
  )


  set heading(numbering: none, outlined: false)

  show heading.where(level: 1): it => block(above: 0em, below: 1em)[
    #set text(size: 2.4em)
    #it.body
  ]


  show heading.where(level: 2): it => block(above: 2.2em, below: 1.2em)[
    #align(left)[
      #set text(size: 1.4em, weight: "regular")
      #it.body
      #box(width: 1fr, line(length: 100%))
    ]
  ]

  let role(body) = {
    set text(size: 1.4em, weight: "light")

    block(below: 1.2em)[#body]
  }

  let introduction(body) = {
    set text(size: 1.2em)

    block(above: 2em, below: 2em)[#body]
  }

  let info(body) = {
    set text(size: 0.8em)

    block()[#body]
  }

  heading(level: 1)[#author.name]
  role[#author.role]
  introduction[#author.introduction]
  info[#author.info]
  body
}


#let section_item(title: [], date: [], role: "", tags: "", body) = {
  show heading.where(level: 3): it => text(size: 1.3em, weight: "bold")[#it.body]

  let title_block = block(above: 1.5em, below: 1em)[
    #heading(level: 3)[#title] #h(1fr) #text(fill: color.gray)[#date]
  ]

  let aside = block(below: 1.2em)[
    #set text(size: 1em, fill: color.gray, weight: "thin")

    #role #sym.dot.c #tags
  ]

  block(below: 2em)[
    #title_block
    #aside
    #body
  ]
}

#let text_with_side(side: "", body) = {
  let side_item = text(fill: color.gray)[#side]
  
  body
  h(1fr)
  side_item
}


#let thanks(body) = {
  set text(fill: color.gray)
  v(1fr)
  align(center)[#body]
  v(1fr)
}