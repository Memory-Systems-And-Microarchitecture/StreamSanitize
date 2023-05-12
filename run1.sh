# -rw-r--r--. 1 user user  48M Apr  3 18:09 rsrch_0_new.trace
# -rw-r--r--. 1 user user 476K Apr  3 18:09 rsrch_1_new.trace
# -rw-r--r--. 1 user user 7.0M Apr  3 18:09 rsrch_2_new.trace
# -rw-r--r--. 1 user user 1.3G Apr  3 18:09 src1_0_new.trace
# -rw-r--r--. 1 user user 1.6G Apr  3 18:09 src1_1_new.trace
# -rw-r--r--. 1 user user  66M Apr  3 18:09 src1_2_new.trace
# -rw-r--r--. 1 user user  53M Apr  3 18:09 src2_0_new.trace
# -rw-r--r--. 1 user user  24M Apr  3 18:09 src2_1_new.trace
# -rw-r--r--. 1 user user  41M Apr  3 18:09 src2_2_new.trace
# -rw-r--r--. 1 user user  69M Apr  3 18:09 stg_0_new.trace
# -rw-r--r--. 1 user user  77M Apr  3 18:09 stg_1_new.trace
# -rw-r--r--. 1 user user  62M Apr  3 18:09 ts_0_new.trace
# -rw-r--r--. 1 user user  77M Apr  3 18:09 usr_0_new.trace
# -rw-r--r--. 1 user user 1.6G Apr  3 18:09 usr_1_new.trace
# -rw-r--r--. 1 user user 370M Apr  3 18:09 usr_2_new.trace
# -rw-r--r--. 1 user user  39M Apr  3 18:09 wdev_0_new.trace
# -rw-r--r--. 1 user user  36K Apr  3 18:09 wdev_1_new.trace
# -rw-r--r--. 1 user user 6.2M Apr  3 18:09 wdev_2_new.trace
# -rw-r--r--. 1 user user  23K Apr  3 18:09 wdev_3_new.trace
# -rw-r--r--. 1 user user  69M Apr  3 18:09 web_0_new.trace
# -rw-r--r--. 1 user user 5.6M Apr  3 18:09 web_1_new.trace
# -rw-r--r--. 1 user user 183M Apr  3 18:09 web_2_new.trace
# -rw-r--r--. 1 user user 1.1M Apr  3 18:09 web_3_new.trace

date > ssd_trace.log

start=`date +%s`
./ssd tracefile/msr/rsrch_0_new.trace
echo "./ssd tracefile/msr/rsrch_0_new.trace..."
end=`date +%s`
runtime=$((end-start))

echo "Total runtime: " $runtime >> ssd_trace.log


start=`date +%s`
./ssd tracefile/msr/rsrch_1_new.trace
echo "./ssd tracefile/msr/rsrch_1_new.trace..."
end=`date +%s`
runtime=$((end-start))

echo "Total runtime: " $runtime >> ssd_trace.log

start=`date +%s`
./ssd tracefile/msr/rsrch_2_new.trace
echo "./ssd tracefile/msr/rsrch_2_new.trace..."
end=`date +%s`
runtime=$((end-start))

echo "Total runtime: " $runtime >> ssd_trace.log

# start=`date +%s`
# ./ssd tracefile/msr/src1_0_new.trace
echo "# ./ssd tracefile/msr/src1_0_new.trace..."
# end=`date +%s`
# runtime=$((end-start))

# echo "Total runtime: " $runtime >> ssd_trace.log

# start=`date +%s`
# ./ssd tracefile/msr/src1_1_new.trace
echo "# ./ssd tracefile/msr/src1_1_new.trace..."
# end=`date +%s`
# runtime=$((end-start))

# echo "Total runtime: " $runtime >> ssd_trace.log

start=`date +%s`
./ssd tracefile/msr/src1_2_new.trace
echo "./ssd tracefile/msr/src1_2_new.trace..."
end=`date +%s`
runtime=$((end-start))

echo "Total runtime: " $runtime >> ssd_trace.log

start=`date +%s`
./ssd tracefile/msr/src2_0_new.trace
echo "./ssd tracefile/msr/src2_0_new.trace..."
end=`date +%s`
runtime=$((end-start))

echo "Total runtime: " $runtime >> ssd_trace.log

start=`date +%s`
./ssd tracefile/msr/src2_1_new.trace
echo "./ssd tracefile/msr/src2_1_new.trace..."
end=`date +%s`
runtime=$((end-start))

echo "Total runtime: " $runtime >> ssd_trace.log

start=`date +%s`
./ssd tracefile/msr/src2_2_new.trace
echo "./ssd tracefile/msr/src2_2_new.trace..."
end=`date +%s`
runtime=$((end-start))

echo "Total runtime: " $runtime >> ssd_trace.log

start=`date +%s`
./ssd tracefile/msr/stg_0_new.trace
echo "./ssd tracefile/msr/stg_0_new.trace..."
end=`date +%s`
runtime=$((end-start))

echo "Total runtime: " $runtime >> ssd_trace.log

start=`date +%s`
./ssd tracefile/msr/stg_1_new.trace
echo "./ssd tracefile/msr/stg_1_new.trace..."
end=`date +%s`
runtime=$((end-start))

echo "Total runtime: " $runtime >> ssd_trace.log

start=`date +%s`
./ssd tracefile/msr/ts_0_new.trace
echo "./ssd tracefile/msr/ts_0_new.trace..."
end=`date +%s`
runtime=$((end-start))

echo "Total runtime: " $runtime >> ssd_trace.log

start=`date +%s`
./ssd tracefile/msr/usr_0_new.trace
echo "./ssd tracefile/msr/usr_0_new.trace..."
end=`date +%s`
runtime=$((end-start))

echo "Total runtime: " $runtime >> ssd_trace.log

# start=`date +%s`
# ./ssd tracefile/msr/usr_1_new.trace
echo "# ./ssd tracefile/msr/usr_1_new.trace..."
# end=`date +%s`
# runtime=$((end-start))

# echo "Total runtime: " $runtime >> ssd_trace.log

# start=`date +%s`
# ./ssd tracefile/msr/usr_2_new.trace
echo "# ./ssd tracefile/msr/usr_2_new.trace..."
# end=`date +%s`
# runtime=$((end-start))

# echo "Total runtime: " $runtime >> ssd_trace.log

start=`date +%s`
./ssd tracefile/msr/wdev_0_new.trace
echo "./ssd tracefile/msr/wdev_0_new.trace..."
end=`date +%s`
runtime=$((end-start))

echo "Total runtime: " $runtime >> ssd_trace.log

start=`date +%s`
./ssd tracefile/msr/wdev_1_new.trace
echo "./ssd tracefile/msr/wdev_1_new.trace..."
end=`date +%s`
runtime=$((end-start))

echo "Total runtime: " $runtime >> ssd_trace.log

start=`date +%s`
./ssd tracefile/msr/wdev_2_new.trace
echo "./ssd tracefile/msr/wdev_2_new.trace..."
end=`date +%s`
runtime=$((end-start))

echo "Total runtime: " $runtime >> ssd_trace.log

start=`date +%s`
./ssd tracefile/msr/wdev_3_new.trace
echo "./ssd tracefile/msr/wdev_3_new.trace..."
end=`date +%s`
runtime=$((end-start))

echo "Total runtime: " $runtime >> ssd_trace.log

start=`date +%s`
./ssd tracefile/msr/web_0_new.trace
echo "./ssd tracefile/msr/web_0_new.trace..."
end=`date +%s`
runtime=$((end-start))

echo "Total runtime: " $runtime >> ssd_trace.log

start=`date +%s`
./ssd tracefile/msr/web_1_new.trace
echo "./ssd tracefile/msr/web_1_new.trace..."
end=`date +%s`
runtime=$((end-start))

echo "Total runtime: " $runtime >> ssd_trace.log

# start=`date +%s`
# ./ssd tracefile/msr/web_2_new.trace
echo "# ./ssd tracefile/msr/web_2_new.trace..."
# end=`date +%s`
# runtime=$((end-start))

# echo "Total runtime: " $runtime >> ssd_trace.log

start=`date +%s`
./ssd tracefile/msr/web_3_new.trace
echo "./ssd tracefile/msr/web_3_new.trace..."
end=`date +%s`
runtime=$((end-start))

echo "Total runtime: " $runtime >> ssd_trace.log

