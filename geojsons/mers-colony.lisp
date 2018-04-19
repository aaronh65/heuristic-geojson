(uiop:define-package #:mpex-psulu-test/mers-colony
    (:use #:cl
          #:mpex-psulu)
  (:export #:mpex-psulu-test/mers-colony))

(in-package #:mpex-psulu-test/mers-colony)


(defun mpex-psulu-test/mers-colony ()
  (a->b-native (asdf:system-relative-pathname :mpex-psulu "./sample-environments/mers-colony.geojson")
               (asdf:system-relative-pathname :mpex-psulu "./sample-environments/mers-colony-state.json")
               (asdf:system-relative-pathname :mpex-psulu "./sample-environments/mers-colony-goal.json")
               (asdf:system-relative-pathname :mpex-psulu "./test/mers-colony.geojson")))


(defun mpex-psulu-test/mers-colony-within ()
  (a-within-b-native (asdf:system-relative-pathname :mpex-psulu "./sample-environments/mers-colony.geojson")
                     (asdf:system-relative-pathname :mpex-psulu "./sample-environments/mers-colony-state.json")
                     (asdf:system-relative-pathname :mpex-psulu "./sample-environments/mers-colony-goal.json")
                     (asdf:system-relative-pathname :mpex-psulu "./test/mers-colony-within.geojson")
                     0.2))
