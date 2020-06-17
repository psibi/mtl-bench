# mtl-bench

Trying out the mtl and baseline benchmarks stated in [Alexis King's
talk](https://www.youtube.com/watch?v=0jI-AlWEwYI "Alexis King's
talk"). This is the result I get:

``` shellsession
~/g/mtl-bench (lehins-master) $ stack bench
mtl-bench> benchmarks
Running 1 benchmarks...
Benchmark mtlbench: RUNNING...
benchmarked MTL Benchmark/Single module
time                 775.4 μs   (772.2 μs .. 778.1 μs)
                     1.000 R²   (1.000 R² .. 1.000 R²)
mean                 773.8 μs   (773.0 μs .. 775.4 μs)
std dev              4.019 μs   (2.582 μs .. 6.180 μs)

benchmarked MTL Benchmark/Multi module
time                 55.74 ms   (54.66 ms .. 57.00 ms)
                     0.999 R²   (0.998 R² .. 1.000 R²)
mean                 55.30 ms   (55.02 ms .. 55.78 ms)
std dev              640.4 μs   (405.2 μs .. 1.002 ms)

benchmarked Base Benchmark/Single module
time                 519.0 μs   (508.8 μs .. 530.1 μs)
                     0.998 R²   (0.996 R² .. 1.000 R²)
mean                 526.1 μs   (520.5 μs .. 538.6 μs)
std dev              26.82 μs   (14.40 μs .. 48.37 μs)
variance introduced by outliers: 29% (moderately inflated)

benchmarked Base Benchmark/Multi module
time                 519.6 μs   (517.3 μs .. 523.4 μs)
                     1.000 R²   (0.999 R² .. 1.000 R²)
mean                 518.1 μs   (517.3 μs .. 520.3 μs)
std dev              3.832 μs   (1.797 μs .. 7.180 μs)

benchmarked Transformers Benchmark/Single module
time                 768.6 μs   (760.3 μs .. 772.8 μs)
                     0.999 R²   (0.998 R² .. 1.000 R²)
mean                 780.9 μs   (772.1 μs .. 824.3 μs)
std dev              58.23 μs   (1.016 μs .. 124.2 μs)
variance introduced by outliers: 49% (moderately inflated)

benchmarked Transformers Benchmark/Multi module
time                 755.2 μs   (732.7 μs .. 773.0 μs)
                     0.995 R²   (0.989 R² .. 1.000 R²)
mean                 819.6 μs   (781.8 μs .. 896.5 μs)
std dev              188.3 μs   (66.20 μs .. 302.5 μs)
variance introduced by outliers: 91% (severely inflated)

Benchmark mtlbench: FINISH
```

