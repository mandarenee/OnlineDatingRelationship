#Online Dating Relationships
----------------------------
##A "has-many-through" relations model

This app illustrates a has-many-through association as seen in the online dating world. Guy meets many gals by sending out many emails, gal meets many guys and tells her friends about the worst date she's ever been on, but somewhere in there guy and gal go on a date.

- Guy is the first table including his id, name, and number of emails he's sent out
- Gal is the second table including her id, name, and her worst date story
- The join model that belongs to a given guy and gal is their first date and a boolean answer if they went on a second date or not.

* Fixture values were based on relationships between celebrities. Information found at http://wdw.famousfix.com/.
