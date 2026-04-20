// --- 벤토 그리드 스타일 교재 표지 레이아웃 (V1.0) ---

#let bento_cover(
  year: "20XX",
  grade: "1학년 1학기",
  exam: "중간고사",
  title: "고등\n수학",
  publisher: "Math Wiki",
  doc
) = {
  set page(
    paper: "a4",
    margin: 1.5cm,
    fill: rgb("B39DDB"), // 연보라색 배경
  )
  
  set text(font: ("NanumGothic", "Batang", "AppleGothic", "sans-serif"), lang: "ko")

  // 전체 레이아웃 그리드
  grid(
    columns: (1.2fr, 0.8fr),
    rows: (120pt, 280pt, auto, auto),
    gutter: 15pt,
    
    // 1. 좌측 상단: 학기 정보 박스
    rect(width: 100%, height: 100%, fill: white, stroke: 2pt + black, inset: 15pt)[
      #set align(left + bottom)
      #text(weight: "black", size: 28pt)[#year\년] \
      #text(weight: "black", size: 28pt)[#grade] \
      #line(length: 100%, stroke: 2pt + black)
      #v(-8pt)
      #text(weight: "black", size: 28pt)[#exam]
    ],
    
    // 2. 우측 상단: 아이콘 박스 (책 & 연필)
    rect(width: 100%, height: 100%, fill: rgb("5E35B1"), stroke: 2pt + black, inset: 10pt)[
       #align(center + horizon)[
          #box(width: 50pt, height: 60pt, fill: white, stroke: 1.5pt + black, radius: 2pt)[
            #place(top + left, dx: 5pt, dy: 10pt)[#rect(width: 30pt, height: 15pt, stroke: 1pt + black)]
            #place(bottom + right, dx: -5pt, dy: -5pt)[#circle(radius: 5pt, fill: yellow, stroke: 1pt + black)]
          ]
       ]
    ],
    
    // 3. 메인 타이틀 타일 (좌측)
    rect(width: 100%, height: 100%, fill: rgb("5E35B1"), stroke: 2pt + black, inset: 20pt)[
      #align(center + horizon)[
        #set text(fill: white, weight: "black", size: 85pt, tracking: 0.1em)
        #title
      ]
    ],
    
    // 4. 출판사 및 기타 정보 (우측 중앙/하단 스택)
    stack(dir: ttb, spacing: 15pt)[
       // 출판사 박스
       rect(width: 100%, height: 120pt, fill: rgb("9575CD"), stroke: 2pt + black, inset: 15pt)[
          #align(bottom + left)[
            #text(weight: "black", size: 14pt)[#publisher] \
            #text(weight: "black", size: 14pt)[BOOKS]
          ]
       ]
       // 계산기 아이콘 박스
       rect(width: 100%, height: 1fr, fill: rgb("7E57C2"), stroke: 2pt + black, inset: 10pt)[
          #align(center + horizon)[
            #grid(
              columns: (1fr, 1fr), gutter: 8pt,
              rect(width: 25pt, height: 25pt, fill: white, stroke: 1.5pt + black)[#place(center + horizon)[+]],
              rect(width: 25pt, height: 25pt, fill: white, stroke: 1.5pt + black)[#place(center + horizon)[-]],
              rect(width: 25pt, height: 25pt, fill: white, stroke: 1.5pt + black)[#place(center + horizon)[×]],
              rect(width: 25pt, height: 25pt, fill: white, stroke: 1.5pt + black)[#place(center + horizon)[÷]],
            )
          ]
       ]
    ],
    
    // 5. 하단 장식 및 슬로건 (전체 너비 영역 활용)
    grid.cell(colspan: 2)[
       #v(10pt)
       #grid(
         columns: (120pt, 1fr),
         gutter: 20pt,
         // 캐릭터 플레이스홀더
         align(center + horizon)[
           #stack(dir: ttb, spacing: 2pt)[
             #circle(radius: 15pt, fill: white, stroke: 1.5pt + black)
             #rect(width: 30pt, height: 40pt, fill: yellow, stroke: 1.5pt + black, radius: 5pt)
           ]
         ],
         // 슬로건 박스들
         stack(dir: ttb, spacing: 15pt)[
           #rect(width: 100%, fill: rgb("FFF9C4"), stroke: 2pt + black, inset: 12pt)[
             #align(center)[#text(size: 22pt, weight: "black")[한 권으로 내신 끝!]]
           ]
           #rect(width: 100%, fill: rgb("7E57C2"), stroke: 2pt + black, inset: 15pt)[
             #align(center)[#text(size: 20pt, weight: "black", fill: black)[무조건 나오는 개념, 풀이]]
           ]
         ]
       )
    ]
  )
}
