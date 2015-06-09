All tests done on a 2015 MacBook Pro with a SSD.

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

JRuby 9000 (b96813f)
===
```

```
