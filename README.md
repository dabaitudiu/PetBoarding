# FindPetCaring

## Next Deadline: March 10

### Usage:
```shell
1. generate data first:
$psql>\i pet_infos_50_mix.sql

$ cd app
$ node bin/www
search localhost:3000/pet
```

### Route description:
- /pet_database: Full information of Service provider
- /pet: Search Engine with specific constraints

### Current Task:
- Finish implementation of other constraints at searching page.
- Finish implementation of other tables

```
Option 1: The ER model must have at least 10 entity sets (including at least one weak entity set) and at least 10 relationship sets.

Option 2: The ER model must have at least a total of 15 entity/relationship sets with
(a) at least one weak entity set, and
(b) at least one ISA hierarchy.
)
```

- Optimize table UI
- Construction of Whole webpage's front end.
- Sub class of dogs,cats,etc.
- Owner name add Hyperlink in the result list.
- Price range: now we restrict the users must input two bound. We want to allow the user: (1) leave both blank (2) leave one blank.
- Date: we want to make a calendar.
- Every time after searching: "There are x results found."