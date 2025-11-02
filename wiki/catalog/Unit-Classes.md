## Class Hierarchy

```mermaid
flowchart TB
    %% Base Classes
    citizen(Citizen)
    swordsman(Swordsman)
    lancer(Lancer)
    axe-fighter(Axe Fighter)

    citizen-->swordsman
    citizen-->lancer
    citizen-->axe-fighter

    %% Intermediate Classes
    myrmidon(Myrmidon)
    sword-cavalier(Sword Cavalier)
    soldier(Soldier)
    lance-cavalier(Lance Cavalier)
    warrior(Warrior)
    axe-cavalier(Axe Cavalier)
    
    swordsman-->myrmidon
    swordsman-->sword-cavalier
    lancer-->soldier
    lancer-->lance-cavalier
    axe-fighter-->warrior
    axe-fighter-->axe-cavalier
    
    %% Advanced Classes
    sword-master(Sword Master)
    duelist(Duelist)
    griffon-knight(Griffon Knight)
    sword-paladin(Sword Paladin)
    halberdier(Halberdier)
    armored-knight(Armored Knight)
    pegasus-knight(Pegasus Knight)
    lance-paladin(Lance Paladin)
    berserker(Berserker)
    gladiator(Gladiator)
    wyvern-knight(Wyvern Knight)
    axe-paladin(Axe Paladin)

    myrmidon-->sword-master
    myrmidon-->duelist
    myrmidon-->griffon-knight
    sword-cavalier-->sword-paladin
    soldier-->halberdier
    soldier-->armored-knight
    soldier-->pegasus-knight
    lance-cavalier-->lance-paladin
    warrior-->berserker
    warrior-->gladiator
    warrior-->wyvern-knight
    axe-cavalier-->axe-paladin
    
    %% Master Classes
    sword-saint(Sword Saint)
    blade-dancer(Blade Dancer)
    griffon-lord(Griffon Lord)
    astra-knight(Astra Knight)
    sentinel(Sentinel)
    armored-general(Armored General)
    pegasus-lord(Pegasus Lord)
    aegis-knight(Aegis Knight)
    warmonger(Warmonger)
    spartan(Spartan)
    wyvern-lord(Wyvern Lord)
    colossus-knight(Colossus Knight)
    
    sword-master-->sword-saint
    duelist-->blade-dancer
    griffon-knight-->griffon-lord
    sword-paladin-->astra-knight
    halberdier-->sentinel
    armored-knight-->armored-general
    pegasus-knight-->pegasus-lord
    lance-paladin-->aegis-knight
    berserker-->warmonger
    gladiator-->spartan
    wyvern-knight-->wyvern-lord
    axe-paladin-->colossus-knight
```
```mermaid
flowchart TB
	%% Base Classes
	citizen(Citizen)
	archer(Archer)
	acolyte(Acolyte)
    thief(Thief)
    martial-artist(Martial Artist)
    artillerist(Artillerist)
    
    citizen-->archer
    citizen-->thief
    citizen-->martial-artist
    citizen-->artillerist
    citizen-->acolyte
    
    %% Intermediate Classes
    sniper(Sniper)
    bow-cavalier(Bow Cavalier)
    cleric(Cleric)
	priest(Priest)
    rogue(Rogue)
    brawler(Brawler)
    martial-monk(Martial Monk)
    gunner(Gunner)
    bombardier(Bombardier)
    
    archer-->sniper
    archer-->bow-cavalier
    acolyte-->cleric
	acolyte-->priest
    thief-->rogue
    martial-artist-->brawler
    martial-artist-->martial-monk
    artillerist-->gunner
    artillerist-->bombardier
    
    %% Advanced Classes
    marksman(Marksman)
    ranger(Ranger)
    kinshi-knight(Kinshi Knight)
    bow-paladin(Bow Paladin)
    valkyrie(Valkyrie)
	bishop(Bishop)
    assassin(Assassin)
    trickster(Trickster)
    bruiser(Bruiser)
    martial-saint(Martial Saint)
    cannoneer(Cannoneer)
    grenadier(Grenadier)
    
    sniper-->marksman
    sniper-->ranger
    sniper-->kinshi-knight
    bow-cavalier-->bow-paladin
    cleric-->valkyrie
	priest-->bishop
    rogue-->assassin
    rogue-->trickster
    brawler-->bruiser
    martial-monk-->martial-saint
    gunner-->cannoneer
    bombardier-->grenadier
    
    %% Master Classes
    deadeye(Deadeye)
    hunterblade(Hunterblade)
    kinshi-lord(Kinshi Lord)
    pavise-warden(Pavise Warden)
    celestial-valkyrie(Celestial Valkyrie)
	arch-bishop(Arch Bishop)
    nightveil(Nightveil)
    saboteur(Saboteur)
    enforcer(Enforcer)
    divine-monk(Divine Monk)
    warfire-vanguard(Warfire Vanguard)
    siege-breaker(Siege Breaker)
    
    marksman-->deadeye
    ranger-->hunterblade
    kinshi-knight-->kinshi-lord
    bow-paladin-->pavise-warden
    valkyrie-->celestial-valkyrie
	bishop-->arch-bishop
    assassin-->nightveil
    trickster-->saboteur
    bruiser-->enforcer
    martial-saint-->divine-monk
    cannoneer-->warfire-vanguard
    grenadier-->siege-breaker
```
```mermaid
flowchart TB
	%% Base Classes
	citizen(Citizen)
	pyromancer(Pyromancer)
	aeromancer(Aeromancer)
	electromancer(Electromancer)
	hydromancer(Hydromancer)
	cryomancer(Cryomancer)
	geomancer(Geomancer)
	dendromancer(Dendromancer)
	luxmancer(Luxmancer)
	umbramancer(Umbramancer)
	
	citizen-->umbramancer
	citizen-->pyromancer
	citizen-->aeromancer
	citizen-->electromancer
	citizen-->hydromancer
	citizen-->cryomancer
	citizen-->geomancer
	citizen-->dendromancer
	citizen-->luxmancer
	
	%% Intermediate Classes
	pyro-sage(Pyro Sage)
	aero-sage(Aero Sage)
	electro-sage(Electro Sage)
	hydro-sage(Hydro Sage)
	cryo-sage(Cryo Sage)
	geo-sage(Geo Sage)
	dendro-sage(Dendro Sage)
	lux-sage(Lux Sage)
	umbra-sage(Umbra Sage)
	
	pyromancer-->pyro-sage
	aeromancer-->aero-sage
	electromancer-->electro-sage
	hydromancer-->hydro-sage
	cryomancer-->cryo-sage
	geomancer-->geo-sage
	dendromancer-->dendro-sage
	luxmancer-->lux-sage
	umbramancer-->umbra-sage
	
	%% Advanced Classes
	elementalist(Elementalist)
	luminary(Luminary)
	tenebrae(Tenebrae)
	
	pyro-sage-->elementalist
	aero-sage-->elementalist
	electro-sage-->elementalist
	hydro-sage-->elementalist
	cryo-sage-->elementalist
	geo-sage-->elementalist
	dendro-sage-->elementalist
	lux-sage-->luminary
	umbra-sage-->tenebrae
	
	%% Master Classes
	arcanist(Arcanist)
	radiant-monarch(Radiant Monarch)
	shadow-monarch(Shadow Monarch)
	
	elementalist-->arcanist
	luminary-->radiant-monarch
	tenebrae-->shadow-monarch
	
```

## Base Classes

| Name           | Weapon Types | Class Abilities                | Mastery Ability | Promotes to              |
| -------------- | ------------ | ------------------------------ | --------------- | ------------------------ |
| Swordsman      | Sword        | Speed +2                       | Swap            | Myrmidon, Sword Cavalier |
| Lancer         | Lance        | Defense +2                     | Shove           | Soldier, Lance Cavalier  |
| Axe Fighter    | Axe          | Strength +2                    | Shove           | Warrior, Axe Cavalier    |
| Archer         | Bow          | Hit Rate +10                   | Reposition      | Sniper, Bow Cavalier     |
| Thief          | Knife        | Dexterity +2, Steal, Lock Pick | Swap            | Rogue                    |
| Martial Artist | Gauntlet     | Avoid +10                      | Reposition      | Brawler, Martial Monk    |
| Artillerist    | Artillery    | Hit Rate +10                   | Knockback       | Cannoneer, Bombardier    |
| Acolyte        | -            | MP +10, Magic Staff            | Draw Back       | Cleric, Priest           |
| Pyromancer     | Pyro         | MP +10                         | Mystic Pull     | Pyro Sage                |
| Aeromancer     | Aero         | MP +10                         | Mystic Pull     | Aero Sage                |
| Electromancer  | Electro      | MP +10                         | Mystic Pull     | Electro Sage             |
| Hydromancer    | Hydro        | MP +10                         | Mystic Pull     | Hydro Sage               |
| Cryomancer     | Cryo         | MP +10                         | Mystic Pull     | Cryo Sage                |
| Geomancer      | Geo          | MP +10                         | Mystic Pull     | Geo Sage                 |
| Dendromancer   | Dendro       | MP +10                         | Mystic Pull     | Dendro Sage              |
| Luxmancer      | Lux          | MP +10                         | Mystic Pull     | Lux Sage                 |
| Umbramancer    | Umbra        | MP +10                         | Mystic Pull     | Umbra Sage               |

## Intermediate Classes

| Name           | Weapon Types           | Class Abilities | Mastery Ability | Promotes to                                |
| -------------- | ---------------------- | --------------- | --------------- | ------------------------------------------ |
| Myrmidon       | Sword                  |                 |                 | Sword Master, Duelist, Griffon Knight      |
| Sword Cavalier | Sword                  | Canto           |                 | Sword Paladin                              |
| Soldier        | Lance                  |                 |                 | Halberdier, Armored Knight, Pegasus Knight |
| Lance Cavalier | Lance                  | Canto           |                 | Lance Paladin                              |
| Warrior        | Axe                    |                 |                 | Berserker, Gladiator, Wyvern Knight        |
| Axe Cavalier   | Axe                    | Canto           |                 | Axe Paladin                                |
| Sniper         | Bow                    |                 |                 | Marksman, Ranger, Kinshi Knight            |
| Bow Cavalier   | Bow                    | Canto           |                 | Bow Paladin                                |
| Rogue          | Knife                  |                 |                 | Assassin, Trickster                        |
| Brawler        | Gauntlet, Chain        |                 |                 | Bruiser                                    |
| Martial Monk   | Gauntlet, Battle Staff |                 |                 | Martial Saint                              |
| Gunner         | Artillery              |                 |                 | Cannoneer                                  |
| Bombardier     | Artillery              |                 |                 | Grenadier                                  |
| Cleric         | Sword                  | Magic Staff     |                 | Valkyrie                                   |
| Priest         | Lux                    | Magic Staff     |                 | Bishop                                     |
| Pyro Sage      | Pyro                   |                 |                 | Elementalist                               |
| Aero Sage      | Aero                   |                 |                 | Elementalist                               |
| Electro Sage   | Electro                |                 |                 | Elementalist                               |
| Hydro Sage     | Hydro                  |                 |                 | Elementalist                               |
| Cryo Sage      | Cryo                   |                 |                 | Elementalist                               |
| Geo Sage       | Geo                    |                 |                 | Elementalist                               |
| Dendro Sage    | Dendro                 |                 |                 | Elementalist                               |
| Lux Sage       | Lux                    |                 |                 | Luminary                                   |
| Umbra Sage     | Umbra                  |                 |                 | Tenebrae                                   |

## Advanced Classes

| Name           | Weapon Types           | Class Abilities | Mastery Ability | Promotes to                         |
| -------------- | ---------------------- | --------------- | --------------- | ----------------------------------- |
| Sword Master   | Sword                  |                 |                 | Sword Saint, Aetherblade*           |
| Duelist        | Sword, Knife           |                 |                 | Blade Dancer, Vortex Reaver*        |
| Sword Paladin  | Sword                  | Canto           |                 | Astra Knight, Starforged*           |
| Griffon Knight | Sword                  | Canto           |                 | Griffon Lord, Grypharion*           |
| Halberdier     | Lance                  |                 |                 | Sentinel, Dragoon of Zoah*          |
| Armored Knight | Lance, Axe             |                 |                 | Armored General, Imperator*         |
| Lance Paladin  | Lance                  | Canto           |                 | Aegis Knight, Oathguard*            |
| Pegasus Knight | Lance                  | Canto           |                 | Pegasus Lord, Elyssar*              |
| Berserker      | Axe                    |                 |                 | Warmonger, Ravager*                 |
| Gladiator      | Axe, Chain             |                 |                 | Spartan, Wolf of Sparta*            |
| Axe Paladin    | Axe                    | Canto           |                 | Colossus Knight, Titanheart*        |
| Wyvern Knight  | Axe                    | Canto           |                 | Wyvern Lord, Drakoryn*              |
| Marksman       | Bow                    |                 |                 | Deadeye, Vigilant Outlaw*           |
| Ranger         | Bow, Knife             |                 |                 | Hunterblade, Dreadslayer*           |
| Bow Paladin    | Bow                    | Canto           |                 | Pavise Warden, Ironbulwark*         |
| Kinshi Knight  | Bow                    | Canto           |                 | Kinshi Lord, Zephyros*              |
| Assassin       | Knife                  |                 |                 | Nightveil, Nocturnal*               |
| Trickster      | Knife, Chain           |                 |                 | Saboteur, Whisperer of Varnel*      |
| Bruiser        | Gauntlet, Chain        |                 |                 | Enforcer, Punisher*                 |
| Martial Saint  | Gauntlet, Battle Staff | Magic Staff     |                 | Divine Monk, Enlightened One*       |
| Cannoneer      | Artillery              |                 |                 | Warfire Vanguard, Hellfire Bastion* |
| Grenadier      | Artillery              |                 |                 | Siege Breaker, Living Fortress*     |
| Valkyrie       | Sword                  | Magic Staff     |                 | Celestial Valkyrie, Valkyros*       |
| Bishop         | Lux                    | Magic Staff     |                 | Arch Bishop, Voice of Aurevia*      |
| Elementalist   | Natura Magic (2 Types) |                 |                 | Arcanist, Avatar*                   |
| Luminary       | Lux                    | Magic Staff     |                 | Radiant Monarch, Aurelius*          |
| Tenebrae       | Umbra, Sword           |                 |                 | Shadow Monarch, Ashborn*            |

*Only for Dardan/Hasan

## Master Classes

| Name               | Weapon Types           | Class Abilities | Mastery Ability | Promotes to |
| ------------------ | ---------------------- | --------------- | --------------- | ----------- |
| Sword Saint        | Sword                  |                 |                 | -           |
| Blade Dancer       | Sword, Knife           |                 |                 | -           |
| Astra Knight       | Sword                  | Canto           |                 | -           |
| Griffon Lord       | Sword                  | Canto           |                 | -           |
| Sentinel           | Lance                  |                 |                 | -           |
| Armored General    | Lance, Axe             |                 |                 | -           |
| Aegis Knight       | Lance                  | Canto           |                 | -           |
| Pegasus Lord       | Lance                  | Canto           |                 | -           |
| Warmonger          | Axe                    |                 |                 | -           |
| Spartan            | Axe, Chain             |                 |                 | -           |
| Colossus Knight    | Axe                    | Canto           |                 | -           |
| Wyvern Lord        | Axe                    | Canto           |                 | -           |
| Deadeye            | Bow                    |                 |                 | -           |
| Hunterblade        | Bow, Sword             |                 |                 | -           |
| Pavise Warden      | Bow                    | Canto           |                 | -           |
| Kinshi Lord        | Bow                    | Canto           |                 | -           |
| Nightveil          | Knife                  |                 |                 | -           |
| Saboteur           | Knife, Chain           |                 |                 | -           |
| Enforcer           | Gauntlet, Chain        |                 |                 | -           |
| Divine Monk        | Gauntlet, Battle Staff | Magic Staff     |                 | -           |
| Warfire Vanguard   | Artillery              |                 |                 | -           |
| Siege Breaker      | Artillery              |                 |                 | -           |
| Celestial Valkyrie | Sword                  | Magic Staff     |                 | -           |
| Arch Bishop        | Lux                    | Magic Staff     |                 | -           |
| Arcanist           | Natura Magic (3 Types) |                 |                 | -           |
| Radiant Monarch    | Lux                    | Magic Staff     |                 | -           |
| Shadow Monarch     | Umbra, Sword           |                 |                 | -           |

## Special Classes

| Name                | Weapon Types           | Class Abilities                    | Mastery Ability | Promotes to    |
| ------------------- | ---------------------- | ---------------------------------- | --------------- | -------------- |
| Citizen             | All                    | Adaptability, Discipline, Aptitude | Bellum's Will   | Any base class |
| Aetherblade         | Sword                  |                                    |                 | -              |
| Vortex Reaver       | Sword, Knife           |                                    |                 | -              |
| Starforged          | Sword                  | Canto                              |                 | -              |
| Grypharion          | Sword                  | Canto                              |                 | -              |
| Dragoon of Zoah     | Lance                  |                                    |                 | -              |
| Imperator           | Lance, Axe             |                                    |                 | -              |
| Oathguard           | Lance                  | Canto                              |                 | -              |
| Elyssar             | Lance                  | Canto                              |                 | -              |
| Ravager             | Axe                    |                                    |                 | -              |
| Wolf of Sparta      | Axe, Chain             |                                    |                 | -              |
| Titanheart          | Axe                    | Canto                              |                 | -              |
| Drakoryn            | Axe                    | Canto                              |                 | -              |
| Vigilant Outlaw     | Bow                    |                                    |                 | -              |
| Dreadslayer         | Bow, Sword             |                                    |                 | -              |
| Ironbulwark         | Bow                    | Canto                              |                 | -              |
| Zephyros            | Bow                    | Canto                              |                 | -              |
| Nocturnal           | Knife                  |                                    |                 | -              |
| Whisperer of Varnel | Knife, Chain           |                                    |                 | -              |
| Punisher            | Gauntlet, Chain        |                                    |                 | -              |
| Enlightened One     | Gauntlet, Battle Staff | Magic Staff                        |                 | -              |
| Hellfire Bastion    | Artillery              |                                    |                 | -              |
| Living Fortress     | Artillery              |                                    |                 | -              |
| Valkyros            | Sword                  | Magic Staff                        |                 | -              |
| Voice of Aurevia    | Lux                    | Magic Staff                        |                 | -              |
| Avatar              | Pyro, Aero, Hydro, Geo |                                    |                 | -              |
| Aurelius            | Lux                    | Magic Staff                        |                 | -              |
| Ashborn             | Umbra, Sword           |                                    |                 | -              |