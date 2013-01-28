while :
do
newdetection=`./grouplisten ip:192.168.0.12 0/1/1 |awk '{print $4}'`
if [ "$newdetection" != "$detection" ]; then
echo $newdetection;
rostopic pub -1 /knx_test std_msgs/Int32 $newdetection;
detection=$newdetection
fi
done
