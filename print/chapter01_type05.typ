#import "templates/exam_layout.typ": exam_layout, prob

#show: exam_layout.with(
  title: "01. 함수의 극한과 연속 (유형 05. 무리식 극한)",
)

#prob(score: 3)[
  상수 $a$에 대하여 다음이 성립할 때, $a$의 값을 구하시오.
  $ lim_{x -> 0} frac(sqrt(1+a x)-1, x) = 2 $
]

#prob(score: 4)[
  다항함수 $f(x)$에 대하여 $f(4)=0$이고 다음이 성립할 때, $lim_{x -> 4} frac(f(x), x-4)$의 값을 구하시오.
  $ lim_{x -> 4} frac(f(x), sqrt(x)-2) = 6 $
]

#prob(score: 4)[
  두 상수 $a, b$에 대하여 다음이 성립할 때, $a+b$의 값을 구하시오.
  $ lim_{x -> 1} frac(sqrt(a x+b)-2, x-1) = 3 $
]

#v(2fr)
#align(center)[- 끝 -]
