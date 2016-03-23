#!/usr/bin/env python
import rospy
from std_msgs.msg import String,UInt16,Float64
from vn_100.msg import ins_data
from dynamic_reconfigure.server import Server
from vn_100.cfg import depthparamsConfig
import datetime,time
kp_depth,ki_depth,kd_depth,setpoint,ckpoint,presenttime,pasttime,error,integral,derivative,depthhelpval=0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00
frontpitchpub=rospy.Publisher("frontpitchspeed",UInt16,queue_size=1)
backpitchpub=rospy.Publisher("backpitchspeed",UInt16,queue_size=1)
def pidcallback(msg):
	global ckpoint,presenttime,setpoint,pasttime,error,integral,derivative,frontpitchpub,backpitchpub
	ckpoint=msg.data
	presenttime=float(time.time())
	if pasttime == 0.00:
		pasttime=presenttime
	error=ckpoint-setpoint
	errorcomp=kp_depth*error
	timediff=presenttime-pasttime
	integral=integral+(error*timediff)
	integralcomp=ki_depth*integral
	derivative=0
	if timediff!=0 :
		derivative=error/timediff
	derivativecomp=kd_depth*derivative
	totalerror=errorcomp+integralcomp+derivativecomp
	if error<0 :
		totalerror=totalerror-errorcomp
	finalvalue=1000+depthhelpval+totalerror
	finalvalue1=1000+totalerror
	frontpitchpub.publish(finalvalue)
	backpitchpub.publish(finalvalue1)
	pasttime=presenttime
def helpcallback(msg):
	global depthhelpval
	depthhelpval=msg.data
def callback(config,level):
	global kp_depth,ki_depth,kd_depth,setpoint,integral
	if config.bool_param == True :
		kp_depth=config.kp_depth
		ki_depth=config.ki_depth
		kd_depth=config.kd_depth
		setpoint=config.setpoint
		integral=0
	return config
depthdatasub=rospy.Subscriber("/depth_value",Float64,pidcallback)
depthhelpsub=rospy.Subscriber("depthhelp",UInt16,helpcallback)
if __name__ == "__main__":
	rospy.init_node("depth_pid",anonymous=True)
	srv=Server(depthparamsConfig,callback)
	rospy.spin()