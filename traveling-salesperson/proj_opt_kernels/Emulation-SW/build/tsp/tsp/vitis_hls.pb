
a
GRunning '/opt/Xilinx/Vitis_HLS/2020.2/bin/unwrapped/lnx64.o/vitis_hls'
*HLSZ200-10h px 

mFor user 'r10943005' on host 'HLS02' (Linux_x86_64 version 5.8.0-41-generic) on Wed Nov 03 21:04:02 CST 2021
*HLSZ200-10h px 
3
On os Ubuntu 20.04.2 LTS
*HLSZ200-10h px 

gIn directory '/mnt/HLSNAS/r10943005/traveling-salesperson/proj_opt_kernels/Emulation-SW/build/tsp/tsp'
*HLSZ200-10h px 
9
Sourcing Tcl script 'tsp.tcl'
*HLSZ200-150h px 
X
Running: %s
2001510*hls2%
open_project tsp 2default:defaultZ200-1510h px 

|Creating and opening project '/mnt/HLSNAS/r10943005/traveling-salesperson/proj_opt_kernels/Emulation-SW/build/tsp/tsp/tsp'.
*HLSZ200-10h px 
S
Running: %s
2001510*hls2 
set_top tsp 2default:defaultZ200-1510h px 
ñ
Running: %s
2001510*hls2½
¨add_files /mnt/HLSNAS/r10943005/traveling-salesperson/proj_opt_kernels/src/tsp_opt.cpp -cflags  -g -I /mnt/HLSNAS/r10943005/traveling-salesperson/proj_opt_kernels/src  2default:defaultZ200-1510h px 

qAdding design file '/mnt/HLSNAS/r10943005/traveling-salesperson/proj_opt_kernels/src/tsp_opt.cpp' to the project
*HLSZ200-10h px 
q
Running: %s
2001510*hls2>
*open_solution -flow_target vitis solution 2default:defaultZ200-1510h px 
¡
Creating and opening solution '/mnt/HLSNAS/r10943005/traveling-salesperson/proj_opt_kernels/Emulation-SW/build/tsp/tsp/tsp/solution'.
*HLSZ200-10h px 
×
Using %sflow_target '%s'
2001505*hls2
 2default:default2
vitis2default:defaultZ200-1505h pxeFor help on HLS 200-1505 see www.xilinx.com/cgi-bin/docs/rdoc?v=2020.2;t=hls+guidance;d=200-1505.html 
°
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default26
"config_interface -m_axi_latency=642default:defaultZ200-435h px 
¼
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default2B
.config_interface -m_axi_alignment_byte_size=642default:defaultZ200-435h px 
¼
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default2B
.config_interface -m_axi_max_widen_bitwidth=5122default:defaultZ200-435h px 
²
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default28
$config_interface -m_axi_offset=slave2default:defaultZ200-435h px 
®
Setting %s configuration: %s
200435*hls26
"'open_solution -flow_target vitis'2default:default24
 config_rtl -register_reset_num=32default:defaultZ200-435h px 
c
Running: %s
2001510*hls20
set_part xcu50-fsvh2104-2-e 2default:defaultZ200-1510h px 
H
.Setting target device to 'xcu50-fsvh2104-2-e'
*HLSZ200-10h px 
x
Running: %s
2001510*hls2E
1create_clock -period 300.000000MHz -name default 2default:defaultZ200-1510h px 
P
5Setting up clock 'default' with a period of 3.333ns.
*SYNZ201-201h px 
b
Running: %s
2001510*hls2/
config_rtl -kernel_profile 2default:defaultZ200-1510h px 
l
Running: %s
2001510*hls29
%config_dataflow -strict_mode warning 2default:defaultZ200-1510h px 
\
Running: %s
2001510*hls2)
config_debug -enable 2default:defaultZ200-1510h px 
v
Running: %s
2001510*hls2C
/config_export -disable_deadlock_detection=true 2default:defaultZ200-1510h px 
m
Running: %s
2001510*hls2:
&config_rtl -m_axi_conservative_mode=1 2default:defaultZ200-1510h px 
þ
cThe '%s' command is deprecated and will be removed in a future release. Use %s as its replacement.
200483*hls27
#config_rtl -m_axi_conservative_mode2default:default2=
)config_interface -m_axi_conservative_mode2default:defaultZ200-483h px 
f
Running: %s
2001510*hls23
config_interface -m_axi_addr64 2default:defaultZ200-1510h px 
p
Running: %s
2001510*hls2=
)config_interface -m_axi_auto_max_ports=0 2default:defaultZ200-1510h px 
t
Running: %s
2001510*hls2A
-config_export -format ip_catalog -ipname tsp 2default:defaultZ200-1510h px 
f
Running: %s
2001510*hls23
csynth_design -synthesis_check 2default:defaultZ200-1510h px 
Ç
«Finished File checks and directory preparation: CPU user time: 0.06 seconds. CPU system time: 0 seconds. Elapsed time: 0.05 seconds; current allocated memory: 205.734 MB.
*HLSZ200-111h px 

jAnalyzing design file '/mnt/HLSNAS/r10943005/traveling-salesperson/proj_opt_kernels/src/tsp_opt.cpp' ... 
*HLSZ200-10h px 
Ë
¯Finished Source Code Analysis and Preprocessing: CPU user time: 0.41 seconds. CPU system time: 0.09 seconds. Elapsed time: 1.04 seconds; current allocated memory: 206.373 MB.
*HLSZ200-111h px 
m
/Using interface defaults for '%s' flow target.
200777*hls2
Vitis2default:defaultZ200-777h px 
Ç
«Inlining function 'compute(unsigned long, unsigned short const (*) [11])' into 'tsp' (/mnt/HLSNAS/r10943005/traveling-salesperson/proj_opt_kernels/src/tsp_opt.cpp:118:36)
*HLSZ214-131h px 
Ç
«Inlining function 'compute(unsigned long, unsigned short const (*) [11])' into 'tsp' (/mnt/HLSNAS/r10943005/traveling-salesperson/proj_opt_kernels/src/tsp_opt.cpp:119:41)
*HLSZ214-131h px 
Ç
«Inlining function 'compute(unsigned long, unsigned short const (*) [11])' into 'tsp' (/mnt/HLSNAS/r10943005/traveling-salesperson/proj_opt_kernels/src/tsp_opt.cpp:120:41)
*HLSZ214-131h px 
Ç
«Inlining function 'compute(unsigned long, unsigned short const (*) [11])' into 'tsp' (/mnt/HLSNAS/r10943005/traveling-salesperson/proj_opt_kernels/src/tsp_opt.cpp:121:41)
*HLSZ214-131h px 

Inlining function 'std::initializer_list<unsigned int>::begin() const' into 'std::initializer_list<unsigned int>::end() const'
*HLSZ214-178h px 

~Inlining function 'std::initializer_list<unsigned int>::size() const' into 'std::initializer_list<unsigned int>::end() const'
*HLSZ214-178h px 
ú
ÞInlining function 'bool __gnu_cxx::__ops::_Iter_less_iter::operator()<unsigned int const*, unsigned int const*>(unsigned int const*, unsigned int const*) const' into 'unsigned int const* std::__min_element<unsigned int const*, __gnu_cxx::__ops::_Iter_less_iter>(unsigned int const*, unsigned int const*, __gnu_cxx::__ops::_Iter_less_iter)' (/opt/Xilinx/Vitis_HLS/2020.2/tps/lnx64/gcc-6.2.0/lib/gcc/x86_64-pc-linux-gnu/6.2.0/../../../../include/c++/6.2.0/bits/stl_algo.h:5455:0)
*HLSZ214-178h px 
Ñ
µInlining function 'unsigned int const* std::__min_element<unsigned int const*, __gnu_cxx::__ops::_Iter_less_iter>(unsigned int const*, unsigned int const*, __gnu_cxx::__ops::_Iter_less_iter)' into 'unsigned int const* std::min_element<unsigned int const*>(unsigned int const*, unsigned int const*)' (/opt/Xilinx/Vitis_HLS/2020.2/tps/lnx64/gcc-6.2.0/lib/gcc/x86_64-pc-linux-gnu/6.2.0/../../../../include/c++/6.2.0/bits/stl_algo.h:5476:0)
*HLSZ214-178h px 
½
¡Inlining function 'std::initializer_list<unsigned int>::begin() const' into 'unsigned int std::min<unsigned int>(std::initializer_list<unsigned int>)' (/opt/Xilinx/Vitis_HLS/2020.2/tps/lnx64/gcc-6.2.0/lib/gcc/x86_64-pc-linux-gnu/6.2.0/../../../../include/c++/6.2.0/bits/stl_algo.h:3448:0)
*HLSZ214-178h px 
»
Inlining function 'std::initializer_list<unsigned int>::end() const' into 'unsigned int std::min<unsigned int>(std::initializer_list<unsigned int>)' (/opt/Xilinx/Vitis_HLS/2020.2/tps/lnx64/gcc-6.2.0/lib/gcc/x86_64-pc-linux-gnu/6.2.0/../../../../include/c++/6.2.0/bits/stl_algo.h:3448:0)
*HLSZ214-178h px 
î
ÒInlining function 'unsigned int const* std::min_element<unsigned int const*>(unsigned int const*, unsigned int const*)' into 'unsigned int std::min<unsigned int>(std::initializer_list<unsigned int>)' (/opt/Xilinx/Vitis_HLS/2020.2/tps/lnx64/gcc-6.2.0/lib/gcc/x86_64-pc-linux-gnu/6.2.0/../../../../include/c++/6.2.0/bits/stl_algo.h:3448:0)
*HLSZ214-178h px 
Æ
ªInlining function 'getDistance(int const*, unsigned short const (*) [11])' into 'tsp' (/mnt/HLSNAS/r10943005/traveling-salesperson/proj_opt_kernels/src/tsp_opt.cpp:89:0)
*HLSZ214-178h px 
ä
ÈInlining function 'unsigned int const& std::min<unsigned int>(unsigned int const&, unsigned int const&)' into 'tsp' (/mnt/HLSNAS/r10943005/traveling-salesperson/proj_opt_kernels/src/tsp_opt.cpp:89:0)
*HLSZ214-178h px 
Ø
¼Inlining function 'unsigned int std::min<unsigned int>(std::initializer_list<unsigned int>)' into 'tsp' (/mnt/HLSNAS/r10943005/traveling-salesperson/proj_opt_kernels/src/tsp_opt.cpp:89:0)
*HLSZ214-178h px 
É
­Finished Compiling Optimization and Transform: CPU user time: 1.91 seconds. CPU system time: 0.21 seconds. Elapsed time: 3.73 seconds; current allocated memory: 207.798 MB.
*HLSZ200-111h px 
¯
Finished Checking Pragmas: CPU user time: 0 seconds. CPU system time: 0 seconds. Elapsed time: 0.01 seconds; current allocated memory: 207.799 MB.
*HLSZ200-111h px 
x
SRunning only source code synthesis checks, skipping scheduling and RTL generation.
2001493*hlsZ200-1493h px 
·
Finished Command csynth_design CPU user time: 2.4 seconds. CPU system time: 0.3 seconds. Elapsed time: 4.97 seconds; current allocated memory: 207.773 MB.
*HLSZ200-111h px 
6
HLS completed successfully
*HLSZ200-150h px 
©
Total CPU user time: 3.94 seconds. Total CPU system time: 0.55 seconds. Total elapsed time: 6.72 seconds; peak allocated memory: 207.799 MB.
*HLSZ200-112h px 

Exiting %s at %s...
206*common2
	vitis_hls2default:default2,
Wed Nov  3 21:04:09 20212default:defaultZ17-206h px 


End Record