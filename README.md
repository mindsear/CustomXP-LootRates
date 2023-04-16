# CustomXP-LootRates
Custom XP/Loot Rates for TrinityCore 3.3.5  
  



### ADDING THIS TO YOUR SERVER

First off, you need to have the source code for your server. It's good if you already know how to compile.

Download `custom_xp_loot_rates.patch`
On Linux, cd to your source directory, then run
```patch -ruN < custom_xp_loot_rates.patch```
It will fail to find the files in my experinces, it'll have an output that looks something like `a/src/source.file` not found. Just copy after the a/ and use that as the source file. Like this `src/source.file`.

After that your source is fully patched!

Download `custom_rates.cpp` and place it in `src/server/scripts/Custom/`

Also don't forget to run the sql queries in the `sql/` folder of this repo

You're good to go!
