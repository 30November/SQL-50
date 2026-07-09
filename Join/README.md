# Got to know

- year() is the function (MySQl, Oracle)
- join are critical on column name, if having same col name
- NATURAL join automatic merge same col having same datatype (*use carefully*)
- DateTime is different in various DBMS
- In Postgres, For numeric: ROUND(numeric, *integer*) ... But For double precision / float8: only ROUND(double precision)
- Postgres always stick to same datatype Eg: 1/2 -> 0 not 0.5 ... must CAST 
- _name_ is also a keyword (Postgres, Oracle)
- Usually use *INNER JOIN* OR *LEFT JOIN*
- *LEFT JOIN* mostly used when want <i>all the row</i> from LEFT TABlE with match row of RIGHT TABLE.