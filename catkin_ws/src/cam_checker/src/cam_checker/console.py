
import rospy
import mysql.connector
'''
from std_msgs.msg import String

def callback(data):
	rospy.loginfo("I heard %s", data.data)

'''


def check():
	rospy.init_node('cam_checker_console')
	r = rospy.Rate(0.5);

	cnx = mysql.connector.connect(user='root', password='test123', host='127.0.0.1', database='KICT_MP')




	while not rospy.is_shutdown():
		#rospy.loginfo("checking ...")
		my_info = query(cnx)
		is_okay(my_info)
		r.sleep()

	cnx.close()

def query(con):
	c = con.cursor()

	my_info = []
	c.execute('select entry_no, DR_CAM_DEBUG_INFO, NC_LEFT_DEBUG_INFO, NC_RIGHT_DEBUG_INFO, FH_LEFT_DEBUG_INFO, FH_RIGHT_DEBUG_INFO, FR_LEFT_DEBUG_INFO, FR_RIGHT_DEBUG_INFO, RE_LEFT_DEBUG_INFO, RE_RIGHT_DEBUG_INFO from real_time_data order by entry_no desc limit 1')

	for rows in c:
		info  = {'entry_no': rows[0], 'debug_info0': rows[1], 'debug_info1': rows[2], 'debug_info2': rows[3],
				 'debug_info3': rows[4], 'debug_info4': rows[5], 'debug_info5': rows[6], 'debug_info6': rows[7], 'debug_info7': rows[8], 'debug_info8': rows[9]}
		my_info.append(info)

	return my_info

def is_okay(my_info):

	field = []
	for count in range(9):
		field.append('debug_info'+str(count))
	#test = 'debug_info'+str(0)
	if len(my_info) == 1:
		flag = True
		for count in range(9):
			#print(my_info[0][field[count]])
			if my_info[0][field[count]] is None:
				flag = False

		if flag == False:
			print("Not Okay")
		else:
			pass
			#print("Okay")