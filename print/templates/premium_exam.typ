// --- 프리미엄 인쇄용 수학 문제지 레이아웃 (V5.1) ---
// Typst 0.12+ 최신 표준(tiling, curve) 및 누락된 # 기호 보정 버전입니다.

#let prob_counter = counter("prob_counter")

#let premium_exam(
  title: "유형 01. 유리함수의 무한대 극한 [하]",
  doc
) = {
  // 1. 기본 페이지 설정
  set page(
    paper: "a4",
    margin: (x: 1.5cm, top: 1.5cm, bottom: 2.1cm), // 여백 소폭 조정
    footer: [
      #set text(size: 9pt, fill: gray.darken(30%))
      #v(1em)
      #line(length: 100%, stroke: 0.5pt + gray.lighten(50%))
      #grid(
        columns: (1fr, 1fr, 1fr),
        align(left + horizon)[
          #box(width: 1.2em, height: 1.2em, fill: rgb("#3b82f6"), radius: 2pt)[
            #place(center + horizon)[#text(fill: white, size: 7pt)[W]]
          ] #h(0.3em) *Math Wiki*
        ],
        align(center + horizon)[#context counter(page).display("1 / 1", both: true)],
        align(right + horizon)[Math Wiki 전문 교과서 시뮬레이션]
      )
    ]
  )

  // 2. 폰트 설정 (시스템 범용 명조체 우선)
  set text(
    font: ("NanumMyeongjo", "Nanum Myeongjo", "AppleMyungjo", "Batang", "serif"),
    size: 10.5pt,
    lang: "ko"
  )

  // 수식 설정: 모든 수학 연산자(lim, sum 등)의 극한 조건을 항상 상/하단에 강제 배치
  // Typst의 자동 인라인 최적화를 무시하고 정석 표기법을 유지합니다.
  show math.op: math.limits.with(inline: true)

  // 상단 헤더 배너
  // 함수 내에서 호출 시 # 기호 없이도 작동하지만, 안정성을 위해 명시적으로 구분
  block(width: 100%)[
    #rect(
      width: 100%,
      height: auto,
      fill: rgb("#f3f4f6"),
      stroke: none,
      inset: (top: 15pt, bottom: 15pt)
    )[
      #align(center)[
        #text(size: 20pt, weight: "bold", fill: rgb("#1e3a8a"))[#title]
      ]
    ]
    #v(-3pt)
    #line(length: 100%, stroke: 3pt + rgb("#1e3a8a"))
  ]
  
  v(1em)

  // 성명 및 점수 박스
  grid(
    columns: (1fr, 100pt),
    align(left + bottom)[
      #set text(size: 12pt)
      *성명:* #box(width: 120pt, stroke: (bottom: 0.5pt + black), inset: (bottom: 2pt))[]
    ],
    align(right)[
      #rect(
        stroke: 2pt + rgb("#b4975a"),
        inset: 8pt,
        radius: 2pt,
        fill: white
      )[
        #set align(center)
        #set text(size: 11pt, weight: "bold")
        점수: #h(2em) / 4
      ]
    ]
  )

  v(2em)

  prob_counter.update(0)
  doc
}

// 아이콘: 그래프 모양 (curve 사용)
#let icon_graph = box(
  width: 14pt, height: 14pt, 
  fill: rgb("#1e3a8a"), radius: 2pt,
  inset: 2pt
)[
  #place(center + horizon)[
    #curve(
      stroke: (paint: white, thickness: 1pt, cap: "round"),
      fill: none,
      curve.move((0pt, 8pt)),
      curve.line((3pt, 8pt)),
      curve.line((5pt, 2pt)),
      curve.line((8pt, 12pt)),
      curve.line((10pt, 6pt)),
      curve.line((12pt, 6pt))
    )
  ]
]

// 아이콘: 무한대
#let icon_infinity = box(
  width: 18pt, height: 12pt,
  fill: rgb("#1e3a8a"), radius: 1pt,
  inset: 1pt
)[
  #place(center + horizon)[
    #text(fill: white, size: 8pt, weight: "bold")[$infinity$]
  ]
]

// 모눈 패턴 (tiling 사용)
#let grid_pattern = tiling(size: (12pt, 12pt))[
  #place(line(start: (0%, 0%), end: (100%, 0%), stroke: 0.3pt + gray.lighten(70%)))
  #place(line(start: (0%, 0%), end: (0%, 100%), stroke: 0.3pt + gray.lighten(70%)))
]

// 개별 문제 구성
#let prob(num, instruction, score: 2, body) = {
  v(1.5em)
  block(width: 100%, breakable: false)[
    #grid(
      columns: (auto, 1fr, auto),
      gutter: 0.5em,
      align(left + horizon)[#text(weight: "bold", size: 12pt)[[#num.] #instruction]],
      align(left + horizon)[#h(0.5em) #icon_graph],
      align(right + horizon)[#icon_infinity]
    )
    #v(0.3em)
    #align(right)[#text(size: 9pt, fill: gray)[(#score 점)]]

    #v(1.5em)
    #align(center)[
      #set text(size: 16pt)
      #block(inset: 1em)[#body] 
    ]
    #v(1.5em)

    #line(length: 100%, stroke: 0.4pt + gray.lighten(50%))
    
    #rect(
      width: 100%, height: 80pt,
      fill: grid_pattern,
      stroke: 0.5pt + gray.lighten(50%),
      radius: 3pt
    )[
      #place(bottom + right, dx: -10pt, dy: -6pt)[
        #box(fill: white, inset: 4pt)[
          #text(size: 13pt, weight: "bold")[답:] #line(length: 5em, stroke: 0.5pt + black)
        ]
      ]
    ]
  ]
}
