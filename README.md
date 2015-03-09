Boris Bikes
===========

Our first challenge at Makers Academy!

Build a system that manages bikes that can be rented by users from docking stations and returned there at the end of the rental. The bikes can break while being used, in which case they will not be available for rental after they are returned. There is a garage that can fix broken bikes. A van is used to move broken bikes from the stations to the garage. It can also be used to take fixed bikes back to the station(s). The van, all stations and the garage have fixed capacity, so they cannot take more bikes that they can hold.

Contributors
--------------------

- Gus Powell https://github.com/guspowell
- Kieran Goodacre https://github.com/kierangoodacre

Key Concepts
--------------------------------

- Ruby
- OOD
- TDD

How to install
------------------

Clone the rep: ```git clone git@github.com:guspowell/boris_bikes.git```

```rspec``` will run the tests.


##Class Responsibility Collaboration Cards

###Class - Bike

Responsibilites             | Collaborators
----------------------------|------------------
Be rented                   | User, Station
Be returned                 | User, Station, Van
Be broken                   | User
Be fixed                    | Garage
Be held                     | Garage, Van, User, Station
Be moved                    | Van, User

### Class - Station

Responsibilites         |Collaborators
------------------------|------------------
Hold                    | Bike
Receive                 | Bike, User, Van
Eject                   | Bike, User, Van

### Class - Van

Responisibilites        |Collaborators
------------------------|------------------
Receive                 | Bike, Station, Garage
Eject                   | Bike, Station, Garage
Hold                    | Bike
Move                    | Bike, Station, Garage

### Class - Garage

Responisibilites        |Collaborators
------------------------|------------------
Hold                    | Bike
Fix                     | Bike
Receive                 | Bike, Van
Eject                   | Bike, Van
