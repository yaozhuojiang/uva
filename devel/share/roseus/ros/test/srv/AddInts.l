;; Auto-generated. Do not edit!


(when (boundp 'test::AddInts)
  (if (not (find-package "TEST"))
    (make-package "TEST"))
  (shadow 'AddInts (find-package "TEST")))
(unless (find-package "TEST::ADDINTS")
  (make-package "TEST::ADDINTS"))
(unless (find-package "TEST::ADDINTSREQUEST")
  (make-package "TEST::ADDINTSREQUEST"))
(unless (find-package "TEST::ADDINTSRESPONSE")
  (make-package "TEST::ADDINTSRESPONSE"))

(in-package "ROS")





(defclass test::AddIntsRequest
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod test::AddIntsRequest
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; int32 _num1
    4
    ;; int32 _num2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num1
       (write-long _num1 s)
     ;; int32 _num2
       (write-long _num2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num1
     (setq _num1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num2
     (setq _num2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass test::AddIntsResponse
  :super ros::object
  :slots (_sum ))

(defmethod test::AddIntsResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass test::AddInts
  :super ros::object
  :slots ())

(setf (get test::AddInts :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get test::AddInts :datatype-) "test/AddInts")
(setf (get test::AddInts :request) test::AddIntsRequest)
(setf (get test::AddInts :response) test::AddIntsResponse)

(defmethod test::AddIntsRequest
  (:response () (instance test::AddIntsResponse :init)))

(setf (get test::AddIntsRequest :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get test::AddIntsRequest :datatype-) "test/AddIntsRequest")
(setf (get test::AddIntsRequest :definition-)
      "# 客户端请求时发送的两个数字
int32 num1
int32 num2
---
# 服务器响应发送的数据
int32 sum

")

(setf (get test::AddIntsResponse :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get test::AddIntsResponse :datatype-) "test/AddIntsResponse")
(setf (get test::AddIntsResponse :definition-)
      "# 客户端请求时发送的两个数字
int32 num1
int32 num2
---
# 服务器响应发送的数据
int32 sum

")



(provide :test/AddInts "4781436a0c2affec8025955a6041e481")


