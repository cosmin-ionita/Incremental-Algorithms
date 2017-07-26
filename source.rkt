#lang racket

; Exercise 8

(define read-examples (λ (filename)
                        (with-input-from-file filename
                          read)
                        ))

(define examples (read-examples "examples.scm"))


; Exercise 9

(define add-example (λ (examples_list example)
                      (append examples_list (list example)))
                      )


;(add-example examples '(sun 10 90 yes -))


; Exercise 10


(define attribute (λ (attribute examples)
                             (if (eq? attribute 'perspective)
                                 (map (λ (el) (car el)) (cdr examples))
                                 (if (equal? attribute 'temperature)
                                    (map (λ (el) (car (cdr el))) (cdr examples))
                                     (if (equal? attribute 'humidity)
                                        (map (λ (el) (car (cdr (cdr el)))) (cdr examples))
                                         (if (equal? attribute 'windy)
                                            (map (λ (el) (car (cdr (cdr (cdr el))))) (cdr examples))
                                             (if (equal? attribute 'class)
                                                (map (λ (el) (car (cdr (cdr (cdr (cdr el)))))) (cdr examples))
                                                 '()
                                             )
                                         )
                                    )
                                 )
                              ))
                          )


; Exercise 11

(define mix (λ (first_list second_list)

              (foldl (λ (el_first_list el_second_list acc)
                       (append acc (list el_first_list) (list el_second_list))
                     )
                     '()
                     first_list second_list)
              )
)

; Exercise 12

(define separate (λ (proportion list_examples)
                   (append '() (list (take list_examples (exact-floor (round (* (length list_examples) proportion)))))
                               (list (take-right list_examples (- (length list_examples) (exact-floor (round (* (length list_examples) proportion))))))
                   )
                )
)

; Exercise 13

(define folds (λ (size examples)

                
                
                )
)