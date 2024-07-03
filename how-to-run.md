
### ss1

```bash
# driver
sudo insmod coyote_drv.ko ip_addr_q0="0B01D4D1" mac_addr_q0="000A35029DE5" 

# sw
DEVICE_1_IP_ADDRESS_0="11.1.212.209" ./main -r 1000 -b 8 -l 0 -n 256 -x 8192 -w true -t 192.168.3.103
```

### ss3

```bash
# driver
sudo insmod coyote_drv.ko ip_addr_q0="0B01D4D2" mac_addr_q0="000A35029DE6" 

# sw
DEVICE_1_IP_ADDRESS_0="11.1.212.210" ./main -r 1000 -b 8 -l 0 -n 256 -x 8192 -w true 
```


### Result 20240324 223300

```
-- RDMA BENCHMARK
-----------------------------------------------
    4096 [bytes], thoughput:  2215.76 [MB/s], latency: 7179.38 [ns]
    8192 [bytes], thoughput:  3914.89 [MB/s], latency: 7885.75 [ns]
   16384 [bytes], thoughput:  5157.43 [MB/s], latency: 9188.31 [ns]
   32768 [bytes], thoughput:  6281.55 [MB/s], latency: 11234.31 [ns]
   65536 [bytes], thoughput:  6898.04 [MB/s], latency: 15825.69 [ns]
  131072 [bytes], thoughput:  7199.12 [MB/s], latency: 24590.19 [ns]
  262144 [bytes], thoughput:  7334.48 [MB/s], latency: 41925.50 [ns]
  524288 [bytes], thoughput:  7410.16 [MB/s], latency: 76844.56 [ns]
 1048576 [bytes], thoughput:  7452.54 [MB/s], latency: 146673.31 [ns]
 2097152 [bytes], thoughput:  7470.38 [MB/s], latency: 286616.19 [ns]
 4194304 [bytes], thoughput:  7478.59 [MB/s], latency: 566675.38 [ns]
 8388608 [bytes], thoughput:  3651.64 [MB/s], latency: 1126492.62 [ns]
16777216 [bytes], thoughput:  1736.75 [MB/s], latency: 2247002.94 [ns]
33554432 [bytes], thoughput:   778.65 [MB/s], latency: 4487306.06 [ns]
```

