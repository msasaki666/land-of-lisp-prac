
(defparameter *nodes*
    '(
        (living-room
            (you are in the living-room. awizardissnoringloudlyonthecouch.))
        (garden
            (you are in a beautiful garden. thereisawellinfrontofyou.))
        (attic
            (you are in the attic. thereisagiantweldingtorchinthecorner.))
    )
)

(defun describe-location
    (location nodes)
    (cadr
        (assoc location nodes)
    )
)

(defparameter *edges*
    '(
        (living-room
            (garden west door)
            (attic upstairs ladder))
        (garden
            (living-room east door))
        (attic
            (living-room downstairs ladder))
    )
)

(defun describe-path
    (edge)
    `(there is a
        ,(caddr edge) going
        ,(cadr edge) from here.
    )
)

(defun describe-paths
    (location edges)
    (apply #'append
        (mapcar #'describe-path
            (cdr
                (assoc location edges)
            )
        )
    )
)
