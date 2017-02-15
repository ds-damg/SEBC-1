```
Realization 
- Having more memory doesn't say faster processing, we need to balance the mappers and reducers to how much memory / vcores we have

```
```
Old Run 

==> teragen_80_1_512.err <==
Mappers: 80
Reducers: 1
Memory Map: 512

Real: 112.07


==> teragen_80_1_6144.err <==
Mappers: 80
Reduers: 1
Memory Map: 6144

Real: 139.29
```


------

New Run (Optimized)

```
==> teragen_2_2_4028.err <==
Mappers: 2
Reducers: 2
Memory Map: 4028

Real: 101.06


==> teragen_2_2_6144.err <==
Mappers: 2
Reducers: 2
Memory Map: 6144

Real: 91.92


==> terasort_2_2_4028.err <==
Mappers: 2
Reducers: 2
Memory Map: 4028

Real: 141.73


==> terasort_2_2_6144.err <==
Mappers: 2
Reducers: 2
Memory Map: 6144

Real: 166.53
````

------