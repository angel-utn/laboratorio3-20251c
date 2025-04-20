Use Libreria;

-- Listado de títulos, descripción y cantidad de páginas
Select Titulo, Descripcion, Paginas From Libros;

-- Listado de títulos, descripción y año publicación. Ordenado por AñoPublicacion decreciente.
Select Titulo, Descripcion, AñoPublicacion From Libros Order By AñoPublicacion Desc;

-- Top 3: Listado de títulos, descripción y año publicación. Ordenado por AñoPublicacion decreciente. "Los tres libros más recientes"
Select Top 3 With Ties Titulo, Descripcion, AñoPublicacion From Libros Order By AñoPublicacion Desc;

-- Obtener todas columnas del libro con IDLibro = 5
Select * From Libros Where IDLibro = 5;

-- Obtener todas columnas de los libros con más de 100 páginas.
Select * From Libros Where Paginas > 100;

-- Obtener Titulo, AñoPublicacion, Paginas de los libros publicados en 1990, 2000, 2010 y 2020
Select Titulo, AñoPublicacion, Paginas From Libros
Where AñoPublicacion = 1990 Or AñoPublicacion = 2000 or AñoPublicacion = 2010 or AñoPublicacion = 2020;

Select Titulo, AñoPublicacion, Paginas From Libros
Where AñoPublicacion In (1990, 2000, 2010, 2020);

-- Obtener Titulo, AñoPublicacion, Paginas de los libros  que no
-- fueron publicados en 1990, 2000, 2010 y 2020
Select Titulo, AñoPublicacion, Paginas From Libros
Where Not (AñoPublicacion = 1990 Or AñoPublicacion = 2000 or AñoPublicacion = 2010 or AñoPublicacion = 2020);

Select Titulo, AñoPublicacion, Paginas From Libros
Where AñoPublicacion <> 1990 And AñoPublicacion <> 2000 And AñoPublicacion <> 2010 And AñoPublicacion <> 2020;

Select Titulo, AñoPublicacion, Paginas From Libros
Where AñoPublicacion Not In (1990, 2000, 2010, 2020);

-- Titulo, Paginas y AñoPublicacion de libros publicados entre 1990 y 2005
Select Titulo, Paginas, AñoPublicacion From Libros
Where AñoPublicacion Between 1990 And 2005;

-- Los libros que contengan la palabra 'historia' en el título
Select Titulo, Paginas From Libros
Where Titulo like '%historia%';

-- Los libros que comiencen con la palabra 'historia' en el título
Select Titulo, Paginas From Libros
Where Titulo like 'historia %';

-- Libros libros que tengan un título con dos caracteres y el segundo sea una T
Select Titulo, Paginas From Libros
Where Titulo like '_t';
