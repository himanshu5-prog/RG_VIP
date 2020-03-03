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
Emu system run time 0.0111 sec==11118554700 ps
System thread counts:
	active=0, created=2047, died=2047,
	max live=3 first occurred @7502583 ps with prog 0.0675% complete
	and last occurred @7502583 ps with prog 55.8% complete
Num_Core_Cycles=3335900
Num_SRIO_Cycles=6949096
Num_Mem_Cycles=2814823
************************************************
MEMORY MAP
14908,514,511,513,511,512,511,514
513,1275,0,2,0,0,0,0
510,0,1273,2,0,0,0,0
514,1,1,1277,0,0,0,2
510,0,0,0,1273,2,0,0
512,0,0,0,1,1275,0,2
510,0,0,0,0,0,1273,2
518,0,0,1,0,1,1,1277

************************************************
REMOTES MAP
0,0,0,0,0,0,0,2
2,0,0,0,0,0,0,0
0,1,0,0,0,0,0,0
0,1,2,0,0,0,0,0
0,0,0,1,0,0,0,0
0,0,0,0,2,0,0,0
0,0,0,0,0,1,0,0
3,0,0,1,0,1,2,0

************************************************
Module: #_created, #_spawns, #_quits, #_migrates, #_rmos_in, #_rmos_out, mem_bw, IPC
NLET[0]: 0, 2046, 2047, 3586, 5, 2, 0.0112966, 0.0464501
NLET[1]: 0, 0, 0, 515, 2, 2, 0.000727577, 0.00303127
NLET[2]: 0, 0, 0, 512, 2, 1, 0.00072509, 0.00302287
NLET[3]: 0, 0, 0, 518, 2, 3, 0.000730064, 0.00303966
NLET[4]: 0, 0, 0, 512, 2, 1, 0.00072509, 0.00302287
NLET[5]: 0, 0, 0, 515, 2, 2, 0.000727577, 0.00303127
NLET[6]: 0, 0, 0, 512, 2, 1, 0.00072509, 0.00302287
NLET[7]: 1, 0, 0, 521, 2, 7, 0.000731485, 0.00304446

Module: #_in_xacts, in_bw, #_to_nqms, #_to_sysic, p_zero, p_one, opt1, opt2, restored
ME[0].FromNQM[0]: 3593, 0.0204278, 3593, 0, 0, 0, 0, 0, 0
ME[0].FromNQM[1]: 519, 0.00201385, 519, 0, 0, 0, 0, 0, 0
ME[0].FromNQM[2]: 515, 0.00200396, 515, 0, 0, 0, 0, 0, 0
ME[0].FromNQM[3]: 523, 0.00202374, 523, 0, 0, 0, 0, 0, 0
ME[0].FromNQM[4]: 515, 0.00200396, 515, 0, 0, 0, 0, 0, 0
ME[0].FromNQM[5]: 519, 0.00201385, 519, 0, 0, 0, 0, 0, 0
ME[0].FromNQM[6]: 515, 0.00200396, 515, 0, 0, 0, 0, 0, 0
ME[0].FromNQM[7]: 530, 0.00203753, 530, 0, 0, 0, 0, 0, 0

Module: #_in_xacts, in_bw, out_bw, passers_by, passers_stored
ME[0].FromSysIC[0]: 0, 0, 0, 0, 0
ME[0].FromSysIC[1]: 0, 0, 0, 0, 0
ME[0].FromSysIC[2]: 0, 0, 0, 0, 0
ME[0].FromSysIC[3]: 0, 0, 0, 0, 0
ME[0].FromSysIC[4]: 0, 0, 0, 0, 0
ME[0].FromSysIC[5]: 0, 0, 0, 0, 0

Module: #_out_xacts, out_bw, avg_total_reqs, avg_total_reqs_exZero, avg_rio_reqs, avg_rio_reqs_exZero, avg_nqm_reqs, avg_nqm_reqs_exZero
ME[0].ToNQM[0]: 3594, 0.0139893, 0.00109266, 1, 0, -nan, 0.00109266, 1
ME[0].ToNQM[1]: 519, 0.00293474, 0.000156038, 1, 0, -nan, 0.000156038, 1
ME[0].ToNQM[2]: 515, 0.00291825, 0.000154833, 1, 0, -nan, 0.000154833, 1
ME[0].ToNQM[3]: 523, 0.00295123, 0.000157243, 1, 0, -nan, 0.000157243, 1
ME[0].ToNQM[4]: 515, 0.00291825, 0.000154833, 1, 0, -nan, 0.000154833, 1
ME[0].ToNQM[5]: 519, 0.00293474, 0.000156038, 1, 0, -nan, 0.000156038, 1
ME[0].ToNQM[6]: 515, 0.00291825, 0.000154833, 1, 0, -nan, 0.000154833, 1
ME[0].ToNQM[7]: 529, 0.00296382, 0.000159049, 1, 0, -nan, 0.000159049, 1

Module: #_out_xacts, out_bw, avg_total_reqs, avg_total_reqs_exZero, avg_rio_reqs, avg_rio_reqs_exZero, avg_nqm_reqs, avg_nqm_reqs_exZero
ME[0].ToSysIC[0]: 0, 0, 0, -nan, 0, -nan, 0, -nan
ME[0].ToSysIC[1]: 0, 0, 0, -nan, 0, -nan, 0, -nan
ME[0].ToSysIC[2]: 0, 0, 0, -nan, 0, -nan, 0, -nan
ME[0].ToSysIC[3]: 0, 0, 0, -nan, 0, -nan, 0, -nan
ME[0].ToSysIC[4]: 0, 0, 0, -nan, 0, -nan, 0, -nan
ME[0].ToSysIC[5]: 0, 0, 0, -nan, 0, -nan, 0, -nan


************************************************
Simulator wall clock time (seconds): 81
