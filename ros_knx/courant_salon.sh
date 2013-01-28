while :
do
newdetection=`./grouplisten ip:192.168.0.12 0/2/10 |awk '{print $4}'`
if [ "$newdetection" != "$detection" ]; then
echo $newdetection;
rostopic pub -1 /knx_pcsalon std_msgs/Byte $newdetection;
detection=$newdetection
fi
done
