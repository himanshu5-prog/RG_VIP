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
Capture queue depths=false
Initial thread: Send ACKs from remotes=true
Bandwidth multiplier through MigrEng=1
Core Clock=300 MHz, Pd=3.333
Memory DDR4-2133: Bandwidth = 1.886 GiB/s = 2.025 GB/s
SRIO SystemIC bandwidth=2.32 GiB/s (2.5GB/s)
************************************************
PROGRAM ENDED.
Emu system run time 0.0134 sec==13418991300 ps
System thread counts:
	active=0, created=32, died=32,
	max live=17 first occurred @46575342 ps with prog 0.347% complete
	and last occurred @46575342 ps with prog 0.347% complete
Num_Core_Cycles=4026100
Num_SRIO_Cycles=8386869
Num_Mem_Cycles=3397212
************************************************
MEMORY MAP
168689,5,3,5,3,4,3,6
5,10,0,1,0,0,0,0
3,0,10,1,0,0,0,0
5,1,1,10,0,0,0,1
3,0,0,0,10,1,0,0
4,0,0,0,1,10,0,1
3,0,0,0,0,0,10,1
7,0,0,1,0,1,1,9

************************************************
REMOTES MAP
0,0,0,0,0,0,0,0
0,0,0,0,0,0,0,0
0,0,0,0,0,0,0,0
0,0,0,0,0,0,0,0
0,0,0,0,0,0,0,0
0,0,0,0,0,0,0,0
0,0,0,0,0,0,0,0
1,0,0,0,0,0,0,0

************************************************
Module: #_created, #_spawns, #_quits, #_migrates, #_rmos_in, #_rmos_out, mem_bw, IPC
NLET[0]: 0, 31, 32, 29, 1, 0, 0.0682209, 0.192821
NLET[1]: 0, 0, 0, 6, 0, 0, 5.88718e-06, 1.68898e-05
NLET[2]: 0, 0, 0, 4, 0, 0, 5.0041e-06, 1.36609e-05
NLET[3]: 0, 0, 0, 8, 0, 0, 6.77026e-06, 2.01187e-05
NLET[4]: 0, 0, 0, 4, 0, 0, 5.0041e-06, 1.36609e-05
NLET[5]: 0, 0, 0, 6, 0, 0, 5.88718e-06, 1.68898e-05
NLET[6]: 0, 0, 0, 4, 0, 0, 5.0041e-06, 1.36609e-05
NLET[7]: 1, 0, 0, 10, 0, 1, 7.06462e-06, 2.48379e-05

Module: #_in_xacts, in_bw, #_to_nqms, #_to_sysic, p_zero, p_one, opt1, opt2, restored
ME[0].FromNQM[0]: 30, 0.000141079, 30, 0, 0, 0, 0, 0, 0
ME[0].FromNQM[1]: 6, 2.8812e-05, 6, 0, 0, 0, 0, 0, 0
ME[0].FromNQM[2]: 4, 1.9622e-05, 4, 0, 0, 0, 0, 0, 0
ME[0].FromNQM[3]: 8, 3.82504e-05, 8, 0, 0, 0, 0, 0, 0
ME[0].FromNQM[4]: 4, 1.93736e-05, 4, 0, 0, 0, 0, 0, 0
ME[0].FromNQM[5]: 6, 2.90604e-05, 6, 0, 0, 0, 0, 0, 0
ME[0].FromNQM[6]: 4, 1.93736e-05, 4, 0, 0, 0, 0, 0, 0
ME[0].FromNQM[7]: 11, 4.86823e-05, 11, 0, 0, 0, 0, 0, 0

Module: #_in_xacts, in_bw, out_bw, passers_by, passers_stored
ME[0].FromSysIC[0]: 0, 0, 0, 0, 0
ME[0].FromSysIC[1]: 0, 0, 0, 0, 0
ME[0].FromSysIC[2]: 0, 0, 0, 0, 0
ME[0].FromSysIC[3]: 0, 0, 0, 0, 0
ME[0].FromSysIC[4]: 0, 0, 0, 0, 0
ME[0].FromSysIC[5]: 0, 0, 0, 0, 0

Module: #_out_xacts, out_bw, avg_total_reqs, avg_total_reqs_exZero, avg_rio_reqs, avg_rio_reqs_exZero, avg_nqm_reqs, avg_nqm_reqs_exZero
ME[0].ToNQM[0]: 31, 0.000146544, 7.70088e-06, 1, 0, -nan, 7.70088e-06, 1
ME[0].ToNQM[1]: 6, 2.8812e-05, 1.49032e-06, 1, 0, -nan, 1.49032e-06, 1
ME[0].ToNQM[2]: 4, 1.9622e-05, 9.93536e-07, 1, 0, -nan, 9.93536e-07, 1
ME[0].ToNQM[3]: 8, 3.82504e-05, 1.98711e-06, 1, 0, -nan, 1.98711e-06, 1
ME[0].ToNQM[4]: 4, 1.93736e-05, 9.93536e-07, 1, 0, -nan, 9.93536e-07, 1
ME[0].ToNQM[5]: 6, 2.90604e-05, 1.49032e-06, 1, 0, -nan, 1.49032e-06, 1
ME[0].ToNQM[6]: 4, 1.93736e-05, 9.93536e-07, 1, 0, -nan, 9.93536e-07, 1
ME[0].ToNQM[7]: 10, 4.3218e-05, 2.4839e-06, 1, 0, -nan, 2.4839e-06, 1

Module: #_out_xacts, out_bw, avg_total_reqs, avg_total_reqs_exZero, avg_rio_reqs, avg_rio_reqs_exZero, avg_nqm_reqs, avg_nqm_reqs_exZero
ME[0].ToSysIC[0]: 0, 0, 0, -nan, 0, -nan, 0, -nan
ME[0].ToSysIC[1]: 0, 0, 0, -nan, 0, -nan, 0, -nan
ME[0].ToSysIC[2]: 0, 0, 0, -nan, 0, -nan, 0, -nan
ME[0].ToSysIC[3]: 0, 0, 0, -nan, 0, -nan, 0, -nan
ME[0].ToSysIC[4]: 0, 0, 0, -nan, 0, -nan, 0, -nan
ME[0].ToSysIC[5]: 0, 0, 0, -nan, 0, -nan, 0, -nan


************************************************
Simulator wall clock time (seconds): 71
