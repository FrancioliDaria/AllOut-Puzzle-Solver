;;; Domain file: all-out.pddl
(define (domain all-out)
  (:predicates
   (light-on ?x)
   (neighbor ?x ?y)
  )
  (:action toggle
    :parameters (?x)
    :precondition (light-on ?x)
    :effect (and
      (not (light-on ?x))
      (forall (?y) (when (neighbor ?x ?y) (not (light-on ?y))))
    )
  )
)