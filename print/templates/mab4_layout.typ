// --- MAB4 프리미엄 디자인 레이아웃 (V1.0) ---
#let prob_counter = counter("prob_counter")

#let mab4_layout(
  title: "유형 01. 유리함수의 무한대 극한 [하]",
  doc
) = {
  // 1. 기본 페이지 설정 및 외곽 테두리
  set page(
    paper: "a4",
    margin: (x: 1.5cm, top: 1cm, bottom: 0.5cm),
    background: place(center + horizon)[
      // 전체 마젠타 테두리
      #rect(
        width: 210mm - 4mm,
        height: 297mm - 4mm,
        stroke: 2.5pt + rgb("#e91e63")
      )
      // 중앙 구분선 (여백 고려하여 배치)
      #place(center + top, dy: 5.5cm)[
        #line(start: (0pt, 0pt), end: (0pt, 21.5cm), stroke: 0.3pt + gray.lighten(40%))
      ]
    ],
    footer: [
      // 하단 마젠타 고정 바
      #place(bottom + center, dy: 0.3cm)[
        #rect(width: 210mm - 8mm, height: 1.2cm, fill: rgb("#e91e63"), stroke: none)
      ]
    ]
  )

  // 2. 폰트 설정
  set text(
    font: ("NanumMyeongjo", "Batang", "AppleMyungjo", "serif"),
    size: 10.5pt,
    lang: "ko"
  )

  show math.op: math.limits.with(inline: true)

  // 3. 특수 헤더 디자인 (MAB4 스타일)
  block(width: 100%, inset: (top: 10pt, left: 10pt, right: 10pt))[
    #grid(
      columns: (1fr, auto),
      gutter: 1em,
      // 왼쪽 로고 및 슬로건 영역
      stack(dir: ttb, spacing: 5pt)[
        #grid(
          columns: (auto, 1fr),
          // MAB4 검은색 곡선 박스
          polygon(
            fill: black,
            (0pt, 0pt), (120pt, 0pt), (140pt, 35pt), (0pt, 35pt)
          ),
          align(left + horizon)[
             #move(dx: -130pt, dy: -5pt)[
               #text(fill: white, size: 24pt, weight: "bold")[MAB4]
               #h(5pt)
               #text(fill: white, size: 8pt, weight: "light")[편집이 정교하고 통일된]
             ]
          ]
        )
        #v(-25pt)
        #text(size: 14pt, weight: "bold", fill: rgb("#1a1a1a"))[수학 조판과 일러스트를]
        #text(size: 14pt, weight: "bold", fill: rgb("#e91e63"))[만나 보세요!]
      ],
      // 우측 QR/심볼 영역 (이미지 플레이스홀더)
      align(right + horizon)[
        #rect(width: 50pt, height: 50pt, stroke: 1pt + gray, radius: 5pt, fill: white)[
          #place(center + horizon)[#text(size: 6pt, fill: gray)[QR CODE]]
        ]
      ]
    )
    
    // 헤더 하단 슬로건 라인
    #v(5pt)
    #rect(width: 100%, height: 1.5pt, fill: black, stroke: none)
    #v(-6pt)
    #align(right)[
      #box(fill: white, inset: (x: 5pt))[
        #text(size: 8.5pt, weight: "bold", fill: rgb("#e91e63"))[MAB4는 편집부터 다릅니다.]
      ]
    ]
  ]

  v(1em)
  
  prob_counter.update(0)
  columns(2, gutter: 3em)[#doc]
}

// MAB4 전용 문제 구성 함수
#let prob(num, score: 2, body) = {
  prob_counter.step()
  v(1em)
  block(width: 100%, breakable: false)[
    #stack(dir: ttb, spacing: 0.8em)[
      // 문제 번호 (크고 굵게)
      #text(weight: "bold", size: 14pt)[#num]
      
      // 문제 본문
      #body
      
      // 우측 하단 점수
      #align(right)[#text(size: 8pt, fill: gray)[(#score 점)]]
      
      // 하단 구분선
      #line(length: 100%, stroke: 0.2pt + gray)
    ]
  ]
}
