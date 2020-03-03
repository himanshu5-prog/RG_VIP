************************************************
Program Name/Arguments: 
a.out.mwx 
************************************************
Simulator Version: ES-INT-35.0
************************************************
Configuration Details:
Gossamer Cores per Nodelet=4
Log2 Nodelets per Node=3
Number of Nodes=1
Total nodelet count=8
Log2 Memory Size per Nodelet=33
Total Memory (in GiB)=64
Capture queue depths=true
Timing sample interval (ns)=10000
Initial thread: Send ACKs from remotes=true
Bandwidth multiplier through MigrEng=1
Core Clock=300 MHz, Pd=3.333
Memory DDR4-2133: Bandwidth = 1.886 GiB/s = 2.025 GB/s
SRIO SystemIC bandwidth=2.32 GiB/s (2.5GB/s)
************************************************
PROGRAM ENDED.
Emu system run time 0.00821 sec==8214511800 ps
System thread counts:
	active=0, created=2047, died=2047,
	max live=3 first occurred @5982735 ps with prog 0.0728% complete
	and last occurred @5982735 ps with prog 68.3% complete
Num_Core_Cycles=2464600
Num_SRIO_Cycles=5134069
Num_Mem_Cycles=2079623
************************************************
MEMORY MAP
12038,640,384,384,384,384,384,383
384,128,0,256,0,0,0,0
128,0,0,256,0,0,0,0
640,0,0,256,0,0,0,256
128,0,0,0,0,256,0,0
384,0,0,0,0,128,0,256
128,0,0,0,0,0,0,256
1151,0,0,0,0,0,0,892

************************************************
REMOTES MAP
0,0,0,0,0,0,0,129
256,0,0,0,0,0,0,0
0,128,0,0,0,0,0,0
0,128,256,0,0,0,0,0
0,0,0,128,0,0,0,0
0,0,0,0,256,0,0,0
0,0,0,0,0,128,0,0
1,0,0,128,0,128,256,0

************************************************
Module: #_created, #_spawns, #_quits, #_migrates, #_rmos_in, #_rmos_out, mem_bw, IPC
NLET[0]: 1, 2046, 2047, 2943, 257, 129, 0.0135996, 0.044813
NLET[1]: 0, 0, 0, 640, 256, 256, 0.000615496, 0.00223322
NLET[2]: 0, 0, 0, 384, 256, 128, 0.000307748, 0.00145419
NLET[3]: 0, 0, 0, 896, 256, 384, 0.000923244, 0.00301225
NLET[4]: 0, 0, 0, 384, 256, 128, 0.000307748, 0.00145419
NLET[5]: 0, 0, 0, 640, 256, 256, 0.000615496, 0.00223322
NLET[6]: 0, 0, 0, 384, 256, 128, 0.000307748, 0.00145419
NLET[7]: 0, 0, 0, 1151, 129, 513, 0.00153586, 0.00455895

Module: #_in_xacts, in_bw, #_to_nqms, #_to_sysic, p_zero, p_one, opt1, opt2, restored
ME[0].FromNQM[0]: 3329, 0.0200446, 3329, 0, 0, 0, 0, 0, 0
ME[0].FromNQM[1]: 1152, 0.00368741, 1152, 0, 0, 0, 0, 0, 0
ME[0].FromNQM[2]: 768, 0.00290838, 768, 0, 0, 0, 0, 0, 0
ME[0].FromNQM[3]: 1536, 0.00446644, 1536, 0, 0, 0, 0, 0, 0
ME[0].FromNQM[4]: 768, 0.00290838, 768, 0, 0, 0, 0, 0, 0
ME[0].FromNQM[5]: 1152, 0.00368741, 1152, 0, 0, 0, 0, 0, 0
ME[0].FromNQM[6]: 768, 0.00290838, 768, 0, 0, 0, 0, 0, 0
ME[0].FromNQM[7]: 1793, 0.00421164, 1793, 0, 0, 0, 0, 0, 0

Module: #_in_xacts, in_bw, out_bw, passers_by, passers_stored
ME[0].FromSysIC[0]: 0, 0, 0, 0, 0
ME[0].FromSysIC[1]: 0, 0, 0, 0, 0
ME[0].FromSysIC[2]: 0, 0, 0, 0, 0
ME[0].FromSysIC[3]: 0, 0, 0, 0, 0
ME[0].FromSysIC[4]: 0, 0, 0, 0, 0
ME[0].FromSysIC[5]: 0, 0, 0, 0, 0

Module: #_out_xacts, out_bw, avg_total_reqs, avg_total_reqs_exZero, avg_rio_reqs, avg_rio_reqs_exZero, avg_nqm_reqs, avg_nqm_reqs_exZero
ME[0].ToNQM[0]: 3329, 0.0126252, 0.001368, 1, 0, -nan, 0.001368, 1
ME[0].ToNQM[1]: 1152, 0.00462225, 0.000469589, 1, 0, -nan, 0.000469589, 1
ME[0].ToNQM[2]: 768, 0.00296032, 0.000312537, 1, 0, -nan, 0.000312537, 1
ME[0].ToNQM[3]: 1536, 0.00628418, 0.000627166, 1, 0, -nan, 0.000627166, 1
ME[0].ToNQM[4]: 768, 0.00296032, 0.000312537, 1, 0, -nan, 0.000312537, 1
ME[0].ToNQM[5]: 1152, 0.00462225, 0.000469589, 1, 0, -nan, 0.000469589, 1
ME[0].ToNQM[6]: 768, 0.00296032, 0.000312537, 1, 0, -nan, 0.000312537, 1
ME[0].ToNQM[7]: 1793, 0.00778788, 0.000733211, 1, 0, -nan, 0.000733211, 1

Module: #_out_xacts, out_bw, avg_total_reqs, avg_total_reqs_exZero, avg_rio_reqs, avg_rio_reqs_exZero, avg_nqm_reqs, avg_nqm_reqs_exZero
ME[0].ToSysIC[0]: 0, 0, 0, -nan, 0, -nan, 0, -nan
ME[0].ToSysIC[1]: 0, 0, 0, -nan, 0, -nan, 0, -nan
ME[0].ToSysIC[2]: 0, 0, 0, -nan, 0, -nan, 0, -nan
ME[0].ToSysIC[3]: 0, 0, 0, -nan, 0, -nan, 0, -nan
ME[0].ToSysIC[4]: 0, 0, 0, -nan, 0, -nan, 0, -nan
ME[0].ToSysIC[5]: 0, 0, 0, -nan, 0, -nan, 0, -nan


************************************************
Simulator wall clock time (seconds): 58
