Get single teacher:

GET /teachers/:id

find id'et fra routen (requesten)

find det element i databasen med det samme id

Hvis der ikke var noget - return 404
Ellers:
lav elementet om til json
returner det med en 200

Put teachers / students:

PUT /teachers/:id

find id'et fra routen

find det element i databasen med det samme id

Hvis der ikke var noget - return 404
Ellers:
Find teacher fra body
Erstat name og house i database-teacher med værdierne fra body-teacher
* gem/opdater database-teacher i database *

lav elementet om til json
returner det med en 200
