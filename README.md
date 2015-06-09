All tests done on a 2015 Retina MacBook Pro with a SSD.

Ruby 2.2.2
===
```
[ruby-2.2.2] ~/Sites/pstore_test ruby test.rb
Calculating -------------------------------------
         PStore save     3.794k i/100ms
        PStore fetch     3.944k i/100ms
-------------------------------------------------
         PStore save     41.438k (± 2.7%) i/s -    208.670k
        PStore fetch     40.110k (± 3.7%) i/s -    201.144k
```

JRuby 1.7.20
===
```
[jruby-1.7.20] ~/Sites/pstore_test ruby test.rb
Calculating -------------------------------------
         PStore save     3.251k i/100ms
        PStore fetch     3.170k i/100ms
-------------------------------------------------
         PStore save     35.006k (±12.1%) i/s -    172.303k
        PStore fetch     34.401k (±12.1%) i/s -    171.180k
```
Same, with -Xcompile.invokedynamic=true
===
```
Calculating -------------------------------------
         PStore save     3.394k i/100ms
        PStore fetch     3.437k i/100ms
-------------------------------------------------
         PStore save     38.361k (±13.6%) i/s -    190.064k
        PStore fetch     38.433k (±12.8%) i/s -    189.035k
```

JRuby 9000 (b96813f)
===
```
[jruby-head] ~/Sites/pstore_test ruby test.rb
Calculating -------------------------------------
         PStore save     3.808k i/100ms
        PStore fetch     3.944k i/100ms
-------------------------------------------------
         PStore save     43.008k (±10.2%) i/s -    213.248k
        PStore fetch     42.980k (±10.6%) i/s -    212.976k
```
Same, with -Xcompile.invokedynamic=true
===
```
[jruby-head] ~/Sites/pstore_test <master> ✗ JRUBY_OPTS="-Xcompile.invokedynamic=true" ruby test.rb
Calculating -------------------------------------
         PStore save     4.131k i/100ms
        PStore fetch     4.162k i/100ms
-------------------------------------------------
         PStore save     48.116k (±11.7%) i/s -    239.598k
        PStore fetch     49.933k (±12.2%) i/s -    245.558k
```
