while :
do
newdetection=`./grouplisten ip:192.168.0.12 0/2/3 |awk '{print $4}'`
if [ "$newdetection" != "$detection" ]; then
echo $newdetection;
rostopic pub -1 /knx_pcmicroonde std_msgs/Byte $newdetection;
detection=$newdetection
fi
done
