#!/usr/bin/bash
#!/usr/bin/scrot 

#make AllRecords dir
mkdir AllRecords

#recursively copy files from origin to AllRecords
cp -r /root/Downloads/UCLArepo/W02-CommandLine/Homework/resources/Chal-2_VIP/OrderRecords/* AllRecords

#create VIPCustomerOrders direcotry in side AllRecords directory
mkdir AllRecords/VIPCustomerOrders

#find all Michael Davis and Michael Campbell orders
#with line numbers and file names
for customer in davis campbell; do grep -r -n -i michael,$customer >> AllRecords/VIPCustomerOrders/michael_"$customer"_orders.output;done

#create VIPCustomerDetails.md and write how many orders by each customer into file
for customer in Campbell Davis; do echo "$customer" >> AllRecords/VIPCustomerDetails.md; grep $customer AllRecords/VIPCustomerOrders/*|wc -l >> AllRecords/VIPCustomerDetails.md;done
