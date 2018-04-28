# CustomXP-LootRates
Custom XP/Loot Rates for TrinityCore 3.3.5


### Update (28-April-2018)  
When helping someone with this, I found out I missed some code in Player.h file.  
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
