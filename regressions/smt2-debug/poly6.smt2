
; Copyright (c) 2015 Microsoft Corporation

(declare-const x Real)

(poly/isolate-roots (+ (^ x 2.) (* (- 3.) x) 2.))

(poly/isolate-roots (+ (^ x 5.) (* (- 2.) (^ x 4.)) (^ x 3.)))

(poly/isolate-roots (+ (^ x 6.) (* (- 1.) (^ x 5.)) (* (- 16.) (^ x 4.)) (* 10. (^ x 3.)) (* 69. (^ x 2.)) (* (- 9.) x) (- 54.)))

(poly/isolate-roots (+ (- 32736.)
                       (* 30710000. x)
                       (* (- 9600000000.) (^ x 2.))
                       (* 1000000000000. (^ x 3.))))

(poly/isolate-roots (+ (- 1167.)
                       (* 1000. x)
                       (* 1167. (^ x 2.))
                       (* (- 1000.) (^ x 3.))
                       (* 2334. (^ x 5.))
                       (* (- 2000.) (^ x 6.))
                       (* (- 1167.) (^ x 10.))
                       (* 1000. (^ x 11.))))

(set-option :pp.decimal true) 

(poly/isolate-roots (+ (^ x 2.) (* (- 3.) x) 2.))

(poly/isolate-roots (+ (^ x 5.) (* (- 2.) (^ x 4.)) (^ x 3.)))

(poly/isolate-roots (+ (^ x 6.) (* (- 1.) (^ x 5.)) (* (- 16.) (^ x 4.)) (* 10. (^ x 3.)) (* 69. (^ x 2.)) (* (- 9.) x) (- 54.)))

(poly/isolate-roots (+ (- 32736.)
                       (* 30710000. x)
                       (* (- 9600000000.) (^ x 2.))
                       (* 1000000000000. (^ x 3.))))

(poly/isolate-roots (+ (- 1167.)
                       (* 1000. x)
                       (* 1167. (^ x 2.))
                       (* (- 1000.) (^ x 3.))
                       (* 2334. (^ x 5.))
                       (* (- 2000.) (^ x 6.))
                       (* (- 1167.) (^ x 10.))
                       (* 1000. (^ x 11.))))
