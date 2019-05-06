# revisar ortografía con nvim

1. Cambiar el idioma de nvim.

```vim
set spelllang=es
```

2. Activar o desactivar el spell, si no esta descargado dirá si lo quieres instalar, dirás que si.

```vim
set spelllang=es
```

3. Los comandos para usarlo son:

- :]s  Siguiente falta ortográfica.
- :[s  Anterior falta ortográfica.
- z=   Mostrar sugerencias para una palabra incorrecta.
- zg   Añadir una palabra al diccionario.
- zG   Omitir error de palabra.
- zug  Deshacer la adición de una palabra al diccionario.
- zw   Eliminar una palabra del diccionario.

para el spell es asi 

```vim
set nospell
```
