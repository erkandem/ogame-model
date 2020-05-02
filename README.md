# ogame-model

Python representation of objects in ogame

* * * 

## about
This code base contains objects which model the in game objects of `ogame.org`. 
Yes it is a stupid "game". But still quite interesting.
I created it as an experiment to calculate mine production, but coding escalated quickly.

## how do I use it?
Not ready to use. I created it as an experiment and needs your help,
ideas, guidance to be sth meaningful.

## construction sites
#### state
options include a database (see `db` sub folder), a simple dictionary (see `config.py`) 
which plays nice with JSON, or sth completely different.

#### server specific settings
Object properties are not constant among all universes/servers - the macroscopic unit of a game.
That's why I avoided to hard code them into the objects. 
But something messy like in `properties.py` and `ogame.py` isn't a solution either.
There must be a better way.

#### tests 
They are mostly missing. Really a shame.

#### any many more
Really, it's not ready.

## other projects
A quick search on github reveals that most other projects are written either in JavaScript or PHP.
My weapon of choice is Python.

|project| python version| description|
|----|----|----|
|[alaingilbert/pyogame](https://github.com/alaingilbert/pyogame) | python3 | API to interact with the account |
|[esp1337/ogame-testing](https://github.com/esp1337/ogame-testing) | python2 | undocumented |
|[erkandem/ogame-stats](https://github.com/erkandem/ogame-stats) | python3 | public game statistics API |
|[erkandem/ogame-raid-radar](https://github.com/erkandem/ogame-raid-radar) | python3 | sample application using the statistics API |



Thanks to the work by Alain Gilbert (https://github.com/alaingilbert) 
I don't remember from where I took most of the constants used in attributes (e.g. prices).
Credit to the website I've forgotten.
