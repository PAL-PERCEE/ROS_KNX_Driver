while :
do
newdetection=`./grouplisten ip:192.168.0.12 2/1/2 |awk '{print $4}'`
if [ "$newdetection" != "$detection" ]; then
echo $newdetection;
rostopic pub -1 /knx_volet_chambre std_msgs/Int32 $newdetection;
detection=$newdetection
fi
done
