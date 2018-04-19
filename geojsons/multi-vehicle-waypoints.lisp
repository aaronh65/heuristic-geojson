(uiop:define-package #:mpex-psulu-test/multi-vehicle-waypoints
    (:use #:cl
          #:mpex-psulu)
  (:export #:mpex-psulu-test/multi-vehicle-waypoints
           #:mpex-psulu-test/multi-vehicle-waypoints-2))

(in-package #:mpex-psulu-test/multi-vehicle-waypoints)


(defparameter auau-environment (make-instance 'environment :environment-path (list (asdf:system-relative-pathname :mpex-psulu "./sample-environments/auau-10.geojson")
                                                                                   (asdf:system-relative-pathname :mpex-psulu "./sample-environments/auau-20.geojson")
                                                                                   (asdf:system-relative-pathname :mpex-psulu "./sample-environments/auau-30.geojson")
                                                                                   (asdf:system-relative-pathname :mpex-psulu "./sample-environments/auau-40.geojson")
                                                                                   (asdf:system-relative-pathname :mpex-psulu "./sample-environments/auau-50.geojson")
                                                                                   (asdf:system-relative-pathname :mpex-psulu "./sample-environments/auau-60.geojson")
                                                                                   (asdf:system-relative-pathname :mpex-psulu "./sample-environments/auau-70.geojson")
                                                                                   (asdf:system-relative-pathname :mpex-psulu "./sample-environments/auau-80.geojson")
                                                                                   (asdf:system-relative-pathname :mpex-psulu "./sample-environments/auau-90.geojson")
                                                                                   (asdf:system-relative-pathname :mpex-psulu "./sample-environments/auau-100.geojson"))))


(defun mpex-psulu-test/multi-vehicle-waypoints ()
  (let ((glider-1 (make-instance 'yo-glider :x-init (list (+ 20 (/ 55 60)) (- -156 (/ 50 60))) :x-covariance-init (make-array `(2 2) :initial-element 0) :min-depth -10 :obstacle-depth -30)))
    (multi-vehicle-waypoints `((,glider-1 ,(list (+ 20 (/ 55 60)) (- -156 (/ 49 60)))))
                             5
                             (* 5 900)
                             auau-environment
                             0.05
                             :coord-system :latlon
                             :export-path (asdf:system-relative-pathname :mpex-psulu "./test/multi-vehicle-waypoints.geojson"))))


(defun mpex-psulu-test/multi-vehicle-waypoints-2 ()
  (let ((glider-1 (make-instance 'yo-glider :x-init (list (+ 20 (/ 55 60)) (- -156 (/ 50 60))) :x-covariance-init (make-array `(2 2) :initial-element 0) :min-depth -10 :obstacle-depth -30))
        (glider-2 (make-instance 'yo-glider :x-init (list 20.90347956037693 -156.80974960327148) :x-covariance-init (make-array `(2 2) :initial-element 0) :min-depth -10 :obstacle-depth -30))
        (glider-3 (make-instance 'yo-glider :x-init (list 20.908530913198376 -156.8168306350708) :x-covariance-init (make-array `(2 2) :initial-element 0) :min-depth -10 :obstacle-depth -30)))
    (multi-vehicle-waypoints `((,glider-1 ,(list (+ 20 (/ 55 60)) (- -156 (/ 49 60))))
                               (,glider-2 ,(list 20.912700155617568 -156.80545806884766))
                               (,glider-3 ,(list 20.907127776700893 -156.81910514831543)))
                             5
                             (* 5 900)
                             auau-environment
                             0.05
                             :coord-system :latlon
                             :export-path (asdf:system-relative-pathname :mpex-psulu "./test/multi-vehicle-waypoints-2.geojson"))))


(defun mpex-psulu-test/multi-vehicle-waypoints-3 ()
  (let ((glider-1 (make-instance 'yo-glider :x-init (list (+ 20 (/ 55 60)) (- -156 (/ 50 60))) :x-covariance-init (make-array `(2 2) :initial-element 0) :min-depth -10 :obstacle-depth -30))
        (glider-2 (make-instance 'yo-glider :x-init (list 20.90347956037693 -156.80974960327148) :x-covariance-init (make-array `(2 2) :initial-element 0) :min-depth -10 :obstacle-depth -30))
        (glider-3 (make-instance 'yo-glider :x-init (list 20.908530913198376 -156.8168306350708) :x-covariance-init (make-array `(2 2) :initial-element 0) :min-depth -10 :obstacle-depth -30)))
    (multi-vehicle-waypoints `((,glider-1 ,(list (+ 20 (/ 55 60)) (- -156 (/ 49 60))))
                               (,glider-2 ,(list 20.912700155617568 -156.80545806884766))
                               (,glider-3 ,(list 20.907127776700893 -156.81910514831543)))
                             5
                             (* 5 900)
                             auau-environment
                             0.05
                             :coord-system :latlon
                             :export-path (asdf:system-relative-pathname :mpex-psulu "./test/multi-vehicle-waypoints-3.geojson")
                             :disturbance (make-array `(2) :initial-contents `(0.1 0)))))


(defun mpex-psulu-test/multi-vehicle-waypoints-4 ()
  (let ((glider-1 (make-instance 'thruster-glider :x-init (list (+ 20 (/ 55 60)) (- -156 (/ 50 60))) :x-covariance-init (make-array `(2 2) :initial-element 0) :obstacle-depth -30))
        (glider-2 (make-instance 'thruster-glider :x-init (list 20.90347956037693 -156.80974960327148) :x-covariance-init (make-array `(2 2) :initial-element 0) :obstacle-depth -30))
        (glider-3 (make-instance 'thruster-glider :x-init (list 20.908530913198376 -156.8168306350708) :x-covariance-init (make-array `(2 2) :initial-element 0) :obstacle-depth -30)))
    (multi-vehicle-waypoints `((,glider-1 ,(list (+ 20 (/ 55 60)) (- -156 (/ 49 60))))
                               (,glider-2 ,(list 20.912700155617568 -156.80545806884766))
                               (,glider-3 ,(list 20.907127776700893 -156.81910514831543)))
                             5
                             (* 5 900)
                             auau-environment
                             0.05
                             :coord-system :latlon
                             :export-path (asdf:system-relative-pathname :mpex-psulu "./test/multi-vehicle-waypoints-4.geojson"))))


(defun mpex-psulu-test/multi-vehicle-waypoints-5 ()
  (let ((glider-1 (make-instance 'yo-glider :x-init (list 731112.2 2317655.6) :x-covariance-init (make-array `(2 2) :initial-element 0) :obstacle-depth -50 :min-depth -10 :initial-depth -10)))
    (multi-vehicle-waypoints `((,glider-1 ,(list 732612.2 2317755.6 -40)))
                             5
                             (* 5 900)
                             auau-environment
                             0.05
                             :coord-system `(:utm 4)
                             :export-path (asdf:system-relative-pathname :mpex-psulu "./test/multi-vehicle-waypoints-5.geojson"))))


(defun mpex-psulu-test/multi-vehicle-waypoints-6 ()
  (let ((glider-1 (make-instance 'thruster-glider :x-init (list 731112.2 2317655.6) :x-covariance-init (make-array `(2 2) :initial-element 0) :obstacle-depth -40)))
    (multi-vehicle-waypoints `((,glider-1 ,(list 732612.2 2317755.6 -40)))
                             5
                             (* 5 900)
                             auau-environment
                             0.05
                             :coord-system `(:utm 4)
                             :export-path (asdf:system-relative-pathname :mpex-psulu "./test/multi-vehicle-waypoints-6.geojson"))))


(defun mpex-psulu-test/multi-vehicle-waypoints-7 ()
  (let ((glider-1 (make-instance 'yo-glider :x-init (list (+ 20 (/ 55 60)) (- -159 (/ 50 60))) :x-covariance-init (make-array `(2 2) :initial-element 0) :min-depth -10 :obstacle-depth -30)))
    (multi-vehicle-waypoints `((,glider-1 ,(list (+ 20 (/ 55 60)) (- -159 (/ 49 60)))))
                             5
                             (* 5 900)
                             auau-environment
                             0.05
                             :coord-system :latlon
                             :projected-coord-system `(:custom-transverse-mercator -159))))
