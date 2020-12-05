# CustomXP-LootRates
Custom XP/Loot Rates for TrinityCore 3.3.5  
  

### Update (28-April-2018)  
While helping someone with this, I found out I missed some important code in Player.h file.  
So, open up Player.h in Visual Studio, then press Ctrl+F and find
```c++
std::string GetCoordsMapAreaAndZoneString() const;
```

Right after that line add this
```c++
        void SetCustomXpRate(uint32 rate) { m_CustomXpRate = rate; }
        uint32 GetCustomXpRate() const { return m_CustomXpRate; }

        void SetCustomLootRate(uint32 rate) { m_CustomLootRate = rate; }
        uint32 GetCustomLootRate() const { return m_CustomLootRate; }
```

Lastly, find 
```c++
uint32 _activeCheats;
```
And right after that line add this
```c++
    uint32 m_CustomXpRate;
    uint32 m_CustomLootRate;
```

### ADDING THIS TO YOUR SERVER

First off, you need to have the source code for your server. It's good if you already know how to compile.

Download custom_xp_loot_rates.patch
On Linux, cd to your source directory, then run
```patch -ruN < custom_xp_loot_rates.patch```
It will fail to find the files in my experinces, it'll have an output that looks something like a/src/source.file not found. Just copy after the a/ and use that as the source file. Like this src/source.file.
RBAC.h fails, manually add this
```
  RBAC_PERM_COMMAND_XP_RATE								 = 1008,
	RBAC_PERM_COMMAND_LOOT_RATE			  			 = 1009,
	RBAC_PERM_COMMAND_RATE									 = 1010,
```
Right after
```
    RBAC_PERM_COMMAND_LOOKUP_QUEST_ID                        = 877,
    // 878-879 previously used, do not reuse
    RBAC_PERM_COMMAND_PDUMP_COPY                             = 880,
```
After that your source is fully patched!
Now open src/server/scripts/CMakeLists.txt
Go to the end of the file and add
```
set(scripts_STAT_SRCS
  ${scripts_STAT_SRCS}
Custom/custom_rates.cpp
)
```
Right before message("")
It should look like
```
set(scripts_STAT_SRCS
  ${scripts_STAT_SRCS}
Custom/custom_rates.cpp
)

message("")
```
Download custom_rates.cpp and place it in src/server/scripts/Custom/
Now make all the changes specified at the top (Update (28-April-2018))
You're  good to go!
