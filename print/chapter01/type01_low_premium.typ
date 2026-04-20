#import "../templates/premium_exam.typ": premium_exam, prob

#show: premium_exam.with(
  title: "유형 01. 유리함수의 무한대 극한 [하]",
)

#prob(1, "다음 극한값을 구하시오.", score: 2)[
  $ lim_(x -> infinity) frac(5x^2 + 1, 2x^2 - 3) $
]

#v(2fr)

#prob(2, "다음 극한값을 구하시오.", score: 2)[
  $ lim_(x -> infinity) frac(7x^2 - 5, 14x^2 + 2x) $
]

#v(1fr)

#align(center)[--- 끝 ---]
