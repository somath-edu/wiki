#import "../templates/exam_layout.typ": exam_layout, prob

#show: exam_layout.with(
  chapter: "01. 함수의 극한과 연속 (유형 01. 극한값의 기본 계산 [하])",
)

#prob(score: 2)[
  다음 극한값을 구하시오.
  $ lim_{x -> 2} (3x - 1) $
]

#v(1fr) // 충분한 풀이 공간 확보
#colbreak() // 다음 단(페이지)로 이동 (한 페이지에 2문제씩 배치하기 위해 수동 조정)

#prob(score: 2)[
  다음 극한값을 구하시오.
  $ lim_{x -> 1} (x^2 + 2x + 3) $
]

#v(1fr)
#colbreak()

#prob(score: 3)[
  다음 극한값을 구하시오.
  $ lim_{x -> 3} frac(x^2 - 9, x - 3) $
]

#v(1fr)
#colbreak()

#prob(score: 3)[
  다음 극한값을 구하시오.
  $ lim_{x -> -1} frac(x + 1, x^2 - 1) $
]

#v(1fr)
#colbreak()

#prob(score: 3)[
  다음 극한값을 구하시오.
  $ lim_{x -> 0} frac(2x^2 + x, x) $
]

#v(1fr)
#colbreak()

#prob(score: 3)[
  다음 극한값을 구하시오.
  $ lim_{x -> 4} frac(sqrt(x) - 2, x - 4) $
]

#v(1fr)
#colbreak()

#prob(score: 3)[
  다음 극한값을 구하시오.
  $ lim_{x -> 1} frac(1 - x, 1 - sqrt(x)) $
]

#v(1fr)
#colbreak()

#prob(score: 4)[
  다음 극한값을 구하시오.
  $ lim_{x -> infinity} frac(3x + 1, 2x - 5) $
]

#v(1fr)
#colbreak()

#prob(score: 4)[
  다음 극한값을 구하시오.
  $ lim_{x -> infinity} frac(2x^2 - x, x^2 + 3) $
]

#v(1fr)
#colbreak()

#prob(score: 4)[
  다음 극한값을 구하시오.
  $ lim_{x -> -infinity} (sqrt(x^2 + 2x) + x) $
]

#v(1fr)
#align(center)[[ 연습 문제 세트 종료 ]]
