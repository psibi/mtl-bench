# mtl-bench

Tring out the mtl and baseline benchmarks stated in [Alexis King's
talk](https://www.youtube.com/watch?v=0jI-AlWEwYI "Alexis King's
talk"). This is the result I get:

``` shellsession
~/g/mtl-bench $ stack bench
mtl-bench> benchmarks
Running 1 benchmarks...
Benchmark mtlbench: RUNNING...
benchmarked MTL Benchmark/Single module
time                 992.6 μs   (970.5 μs .. 1.023 ms)
                     0.975 R²   (0.933 R² .. 0.994 R²)
mean                 1.162 ms   (1.105 ms .. 1.231 ms)
std dev              227.0 μs   (178.2 μs .. 257.3 μs)
variance introduced by outliers: 90% (severely inflated)

benchmarked MTL Benchmark/Multi module
time                 51.21 ms   (49.26 ms .. 53.62 ms)
                     0.993 R²   (0.983 R² .. 1.000 R²)
mean                 51.71 ms   (50.45 ms .. 54.77 ms)
std dev              3.743 ms   (1.876 ms .. 6.450 ms)
variance introduced by outliers: 27% (moderately inflated)

benchmarked Base Benchmark/Single module
time                 546.4 μs   (516.5 μs .. 608.2 μs)
                     0.910 R²   (0.789 R² .. 0.998 R²)
mean                 532.7 μs   (519.7 μs .. 585.4 μs)
std dev              71.94 μs   (15.79 μs .. 160.3 μs)
variance introduced by outliers: 76% (severely inflated)

benchmarked Base Benchmark/Multi module
time                 460.2 μs   (428.8 μs .. 490.3 μs)
                     0.890 R²   (0.787 R² .. 0.962 R²)
mean                 623.8 μs   (580.2 μs .. 693.3 μs)
std dev              193.1 μs   (151.6 μs .. 233.3 μs)
variance introduced by outliers: 95% (severely inflated)

Benchmark mtlbench: FINISH
```

