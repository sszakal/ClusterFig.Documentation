---
layout: page
title: UML - Sequence Diagram
---

# Use Case Diagram

## Usecases

Use cases are enclosed using between parentheses (because two parentheses looks like an oval).
You can also use the usecase keyword to define a usecase. And you can define an alias, using the as keyword. This alias will be used latter, when defining relations.

```
(First usecase)
(Another usecase) as (UC2)  
usecase UC3
usecase (Last\nusecase) as UC4
```

{% plantuml %}

(First usecase)
(Another usecase) as (UC2)  
usecase UC3
usecase (Last\nusecase) as UC4

{% endplantuml %}

## Actors

Actor are enclosed using between two points.

You can also use the actor keyword to define an actor. And you can define an alias, using the as keyword. This alias will be used latter, when defining relations.

We will see later that the actor definitions are optional.

```
:First Actor:
:Another\nactor: as Men2  
actor Men3
actor :Last actor: as Men4
```

{% plantuml %}

:First Actor:
:Another\nactor: as Men2  
actor Men3
actor :Last actor: as Men4

{% endplantuml %}

## Usecases description

If you want to have description on several lines, you can use quotes.

You can also use the following separators: --..==__. And you can put titles within the separators.

```
usecase UC1 as "You can use
several lines to define your usecase.
You can also use separators.
--
Several separators are possible.
==
And you can add titles:
..Conclusion..
This allows large description."
```

{% plantuml %}

usecase UC1 as "You can use
several lines to define your usecase.
You can also use separators.
--
Several separators are possible.
==
And you can add titles:
..Conclusion..
This allows large description."

{% endplantuml %}

## Basic example

To link actors and use cases, the arrow --> is used.

The more dashes - in the arrow, the longer the arrow. You can add a label on the arrow, by adding a : character in the arrow definition.

In this example, you see that User has not been defined before, and is used as an actor.

```
User -> (Start)
User --> (Use the application) : A small label

:Main Admin: ---> (Use the application) : This is\nyet another\nlabel
```

{% plantuml %}

User -> (Start)
User --> (Use the application) : A small label

:Main Admin: ---> (Use the application) : This is\nyet another\nlabel

{% endplantuml %}

## Extension

If one actor/use case extends another one, you can use the symbol <|--.

```
:Main Admin: as Admin
(Use the application) as (Use)

User <|-- Admin
(Start) <|-- (Use)
```

{% plantuml %}

:Main Admin: as Admin
(Use the application) as (Use)

User <|-- Admin
(Start) <|-- (Use)

{% endplantuml %}

## Using notes

You can use the *note left of*, *note right of*, *note top of*, *note bottom of* keywords to define notes related to a single object.

A note can be also define alone with the note keywords, then linked to other objects using the .. symbol.

```
:Main Admin: as Admin
(Use the application) as (Use)

User -> (Start)
User --> (Use)

Admin ---> (Use)

note right of Admin : This is an example.

note right of (Use)
  A note can also
  be on several lines
end note

note "This note is connected\nto several objects." as N2
(Start) .. N2
N2 .. (Use)
```

{% plantuml %}

:Main Admin: as Admin
(Use the application) as (Use)

User -> (Start)
User --> (Use)

Admin ---> (Use)

note right of Admin : This is an example.

note right of (Use)
  A note can also
  be on several lines
end note

note "This note is connected\nto several objects." as N2
(Start) .. N2
N2 .. (Use)

{% endplantuml %}

## Stereotypes

You can add stereotypes while defining actors and use cases using << and >>.

```
User << Human >>
:Main Database: as MySql << Application >>
(Start) << One Shot >>
(Use the application) as (Use) << Main >>

User -> (Start)
User --> (Use)

MySql --> (Use)

```

{% plantuml %}

User << Human >>
:Main Database: as MySql << Application >>
(Start) << One Shot >>
(Use the application) as (Use) << Main >>

User -> (Start)
User --> (Use)

MySql --> (Use)

{% endplantuml %}

## Changing arrows direction

By default, links between classes have two dashes -- and are vertically oriented. It is possible to use horizontal link by putting a single dash (or dot) like this:

```
:user: --> (Use case 1)
:user: -> (Use case 2)
```

{% plantuml %}

:user: --> (Use case 1)
:user: -> (Use case 2)

{% endplantuml %}

You can also change directions by reversing the link:

```
(Use case 1) <.. :user:
(Use case 2) <- :user:
```

{% plantuml %}

(Use case 1) <.. :user:
(Use case 2) <- :user:

{% endplantuml %}

It is also possible to change arrow direction by adding *left*, *right*, *up* or *down* keywords inside the arrow:

```
:user: -left-> (dummyLeft) 
:user: -right-> (dummyRight) 
:user: -up-> (dummyUp)
:user: -down-> (dummyDown)
```

{% plantuml %}

:user: -left-> (dummyLeft) 
:user: -right-> (dummyRight) 
:user: -up-> (dummyUp)
:user: -down-> (dummyDown)

{% endplantuml %}

You can shorten the arrow by using only the first character of the direction (for example, *-d-* instead of *-down-*) or the two first characters (*-do-*).

Please note that you should not abuse this functionality : *Graphviz* gives usually good results without tweaking.

## Splitting diagrams

The *newpage* keywords to split your diagram into several pages or images.

```
:actor1: --> (Usecase1)
newpage
:actor2: --> (Usecase2)
```

{% plantuml %}

:actor1: --> (Usecase1)
newpage
:actor2: --> (Usecase2)

{% endplantuml %}

## Left to right direction

The general default behavior when building diagram is **top to bottom**.

```
'default
top to bottom direction
user1 --> (Usecase 1)
user2 --> (Usecase 2)
```

{% plantuml %}

'default
top to bottom direction
user1 --> (Usecase 1)
user2 --> (Usecase 2)

{% endplantuml %}

You may change to **left to right** using the *left to right direction* command. The result is often better with this direction.


```
left to right direction
user1 --> (Usecase 1)
user2 --> (Usecase 2)
```

{% plantuml %}

left to right direction
user1 --> (Usecase 1)
user2 --> (Usecase 2)

{% endplantuml %}

## Skinparam

You can use the *skinparam* command to change colors and fonts for the drawing.

You can use this command :

 * In the diagram definition, like any other commands,
 * In an included file,
 * In a configuration file, provided in the command line or the ANT task.
  
You can define specific color and fonts for stereotyped actors and usecases.

```
skinparam handwritten true

skinparam usecase {
	BackgroundColor DarkSeaGreen
	BorderColor DarkSlateGray

	BackgroundColor<< Main >> YellowGreen
	BorderColor<< Main >> YellowGreen
	
	ArrowColor Olive
	ActorBorderColor black
	ActorFontName Courier

	ActorBackgroundColor<< Human >> Gold
}

User << Human >>
:Main Database: as MySql << Application >>
(Start) << One Shot >>
(Use the application) as (Use) << Main >>

User -> (Start)
User --> (Use)

MySql --> (Use)
```

{% plantuml %}

skinparam handwritten true

skinparam usecase {
	BackgroundColor DarkSeaGreen
	BorderColor DarkSlateGray

	BackgroundColor<< Main >> YellowGreen
	BorderColor<< Main >> YellowGreen
	
	ArrowColor Olive
	ActorBorderColor black
	ActorFontName Courier

	ActorBackgroundColor<< Human >> Gold
}

User << Human >>
:Main Database: as MySql << Application >>
(Start) << One Shot >>
(Use the application) as (Use) << Main >>

User -> (Start)
User --> (Use)

MySql --> (Use)

{% endplantuml %}

## Complete example

```
left to right direction
skinparam packageStyle rectangle
actor customer
actor clerk
rectangle checkout {
  customer -- (checkout)
  (checkout) .> (payment) : include
  (help) .> (checkout) : extends
  (checkout) -- clerk
}
```

{% plantuml %}

left to right direction
skinparam packageStyle rectangle
actor customer
actor clerk
rectangle checkout {
  customer -- (checkout)
  (checkout) .> (payment) : include
  (help) .> (checkout) : extends
  (checkout) -- clerk
}

{% endplantuml %}