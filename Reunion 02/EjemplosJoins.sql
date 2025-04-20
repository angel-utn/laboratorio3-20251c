Use Libreria;

-- Obtener un listado con IDLibro, Título y Nombre de la categoría.
Select LIB.IDLibro, LIB.Titulo, CAT.Categoria From Libros LIB
Inner Join Categorias CAT ON LIB.IDCategoria = CAT.IDCategoria;

-- Obtener un listado con IDLibro, Título y Apellidos y Nombres de los Autores
Select LIB.IDLibro, LIB.Titulo, AUT.Apellidos, AUT.Nombres
From Libros LIB
Inner Join AutoresLibro AUTLIB ON LIB.IDLibro = AUTLIB.IDLibro
Inner Join Autores AUT ON AUT.IDAutor = AUTLIB.IDAutor;

-- Obtener un listado con IDLibro, Título y Apellidos y Nombres de los Autores y el Nombre de la categoría.
Select LIB.IDLibro, LIB.Titulo, AUT.Apellidos, AUT.Nombres, CAT.Categoria
From Libros LIB
Inner Join AutoresLibro AUTLIB ON LIB.IDLibro = AUTLIB.IDLibro
Inner Join Autores AUT ON AUT.IDAutor = AUTLIB.IDAutor
Inner Join Categorias CAT ON LIB.IDCategoria = CAT.IDCategoria;

-- Mostrar Título del libro y la fecha y hora de lecturas ordenarlo por título.
-- Si algún no fue leído. Incorporarlo igualmente al listado.
Select LIB.Titulo, LEC.FechaHora
From Libros LIB
Left Join Lecturas LEC ON LIB.IDLibro = LEC.IDLibro
Order By Titulo Asc;

-- Mostrar fecha y hora de las lecturas y nombre del medio utilizado.
Select LEC.FechaHora, MED.Nombre
From Lecturas LEC
Right Join Medios MED ON LEC.IDMedio = MED.IDMedio;

-- Mostrar los nombres de medios que no fueron nunca utilizados.
Select MED.Nombre
From Lecturas LEC
Right Join Medios MED ON LEC.IDMedio = MED.IDMedio
Where LEC.IDLectura Is Null;

-- Listado con la información del libro: Título y Cantidad de paginas. Y el título y cantidad de
-- páginas de cada libro que sea más largo que él.

-- Por cada Libro L: L.Titulo y L.Paginas y LX.Titulo, LX.Paginas.
-- Donde LX sea un o más libros con más páginas que L.

Select L.Titulo, L.Paginas, LX.Titulo, LX.Paginas
From Libros L
Inner Join Libros LX ON LX.Paginas > L.Paginas
Order by L.Paginas desc, LX.Paginas desc;