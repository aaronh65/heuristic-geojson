(uiop:define-package #:mpex-psulu-test/mpc-waypoint
    (:use #:cl
          #:mpex-psulu)
  (:export #:mpex-psulu-test/mpc-waypoint))

(in-package #:mpex-psulu-test/mpc-waypoint)


(defun mpex-psulu-test/mpc-waypoint ()
  (let ((quadcopter (make-instance 'quadcopter :x-init (list 0 0) :x-covariance-init (make-array `(2 2) :initial-element 0))))
    (mpc-waypoint quadcopter
                  `(2 2)
                  6
                  6
                  (asdf:system-relative-pathname :mpex-psulu "./sample-environments/empty.geojson")
                  1)))


(defun mpex-psulu-test/mpc-waypoint-2 ()
  (let ((quadcopter (make-instance 'quadcopter :x-init (list 0 0) :x-covariance-init (make-array `(2 2) :initial-element 0))))
    (mpc-waypoint quadcopter
                  `(-20 20)
                  6
                  6
                  (asdf:system-relative-pathname :mpex-psulu "./sample-environments/empty.geojson")
                  1)))
