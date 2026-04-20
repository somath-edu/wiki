#import "../templates/mab4_layout.typ": mab4_layout, prob

#show: mab4_layout.with(
  title: "유형 01. 유리함수의 무한대 극한 [하] - MAB4 버전",
)

#prob(1, score: 2)[
  함수 $f(x) = frac(2, 3)x - 5$, $g(x) = x + 2$이고, $f(g(a)) = -3$일 때, $a$의 값은?
  
  #v(1em)
  #h(5em) #text(size: 15.75pt)[$f(g(a)) = -3$]
]

#v(2fr)

#prob(2, score: 2)[
  점 $A(a b, a - b)$가 제2사분면 위의 점이라고 할 때, 점 $B(-2a, -a+b)$는 제 몇 사분면 위의 점인가?
]

#v(2fr)

#prob(3, score: 2)[
  $a b = z, a > 0$이고 $c d < 0, c - d < 0$가 항상 성립할 때, 좌표평면 위의 점 $P(-a, b), Q(-c, d)$의 위치를 차례로 나열하면?
]

#colbreak()

#prob(6, score: 3)[
  다음 그림은 $y = frac(a, x) (a > 0, x > 0)$의 그래프이다. 곡선 위의 두 점 $x$좌표가 각각 $3, 6$이고, $y$좌표는 그 차가 $4$라고 한다. 이때, $a$값을 구하면?
  
  #v(1.5em)
  #align(center)[
    #rect(width: 80%, height: 100pt, stroke: 0.5pt + gray, radius: 5pt)[
      #place(center + horizon)[그래프 영역 (G1)]
    ]
  ]
]

#v(1fr)

#prob(7, score: 3)[
  오른쪽 그림과 같이 두 점 $A(1, 7), B(6, 2)$이 있다. 이때, 함수 $y = a x$의 그래프가 선분 $A B$ 위의 점을 지날 때, $a$의 값의 범위를 구하여라.
]

#v(1fr)
