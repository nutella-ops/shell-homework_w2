#!/usr/bin/bash
#!/usr/bin/scrot 

#make AllRecords dir
mkdir AllRecords

#recursively copy files from origin to AllRecords
cp -r /root/Downloads/UCLArepo/W02-CommandLine/Homework/resources/Chal-2_VIP/OrderRecords AllRecords

#create VIPCustomerOrders direcotry in side AllRecords directory
mkdir AllRecords/VIPCustomerOrders

#find all Michael Davis and Michael Campbell orders
#with line numbers and file names
for name in Davis Campbell; do grep -r -n Michael,$name > michael_"$name"_orders.output;done



