# dmclock
Code that implements the dmclock distributed quality of service
algorithm. See "mClock: Hanling Throughput Variability for Hypervisor
IO Scheduling" by Gulati, Merchant, and Varman.

When running cmake, set the build type with either:
    -DCMAKE_BUILD_TYPE=Debug
    -DCMAKE_BUILD_TYPE=Release

To turn on profiling, run cmake with:
    -DPROFILE=yes
