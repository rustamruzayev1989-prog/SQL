SELECT text_column,
       LENGTH(text_column) - LENGTH(REPLACE(text_column, ' ', '')) AS space_count
FROM CountSpaces;
