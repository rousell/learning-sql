SELECT
  SQ.Name AS "Album Name",
  SQ.MediaType AS "Media Type",
  Genre.Name AS "Genre"
FROM (SELECT
        T.Name,
        T.Composer,
        T.Milliseconds,
        T.Bytes,
        T.UnitPrice,
        MediaType.Name AS "MediaType",
        T.GenreId
      FROM Track AS T JOIN MediaType ON T.MediaTypeId == MediaType.MediaTypeId) AS SQ
JOIN Genre ON Genre.GenreId == SQ.GenreId
