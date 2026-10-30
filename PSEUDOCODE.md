# Pseudokode

Beskrivelserne tager udgangspunkt i Teacher. Samme mønster gælder for Houses, Students og Courses. Houses og Courses kan dog kun "reades" (GET), og Students har et ekstra parameter: { year }.

## Create new

### Route: POST /teachers

Find Name og House fra body

Hvis Name manger - return 400
Hvis House mangler - return 404

Opret en ny Teacher i databasen med Name og House
Lav den nye Teacher om til json
Returner den med en 201

Returner 500 hvis der opstår en databasefejl

## Get all

### Route: GET /teachers

Find alle Teachers i databasen

Lav alle teachers om til json
Returner dem med en 200

Returner 500 hvis der opstår en databasefejl

## Get by id

### Route: GET /teachers/:id

find id'et fra routen (requesten)

find det element i databasen med det tilsvarende id

Hvis der ikke var noget - return 404
Ellers:
lav elementet om til json
returner det med en 200

Returner 500 hvis der opstår en databasefejl

## Update by id

### Route: PUT /teachers/:id

find id'et fra routen

Find name og house fra body

Hvis Name manger - return 400
Hvis House mangler - return 404

Opdater name og house på den teacher, der har det tilsvarende id

Hvis der ikke var nogen teacher med id'et - return 404
Ellers:
Lav den opdaterede teacher om til json
Returner den med en 200

Returner 500 hvis der opstår en databasefejl

## Delete by id

### Route: DELETE /teachers/:id

Find id'et fra routen

Find og slet den teacher i databasen med det tilsvarende id

Hvis der ikke var nogen teacher med id'et - return 404
Ellers:
Lav den slettede teacher om til json
Returner den med en 200

Returner 500 hvis der opstår en databasefejl
