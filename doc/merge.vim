# realizar merge con nvim


1. Configurar el archivo de git, dirección es $HOME/.gitconfig agregar esto

```bash
[merge]
  tool = vimdiff
[mergetool]
  prompt = true
[mergetool "vimdiff"]
  cmd = nvim -d $LOCAL $REMOTE $MERGED -c '$wincmd w' -c 'wincmd J'
[difftool]
  prompt = false
[diff]
tool = vimdiff
```

2. Realizar un git merge
```bash
    git merge origin/rama
```

3. Llamar el merge, esto llamara al nvim por conflictos el cual hay que resolver

```bash
git mergetool
```

4. Los comando generales para el nvim en diff son

    - ctrl-w  para cambiar entre pantallas.
    - ]-c [-c  salda de conflictos en conflictos.
    - z-o z-r z-c y los métodos de foldin de nvin normales.
    - Diffget RE  diffget  LO: para obtener los cambios dependiendo de el conflicto de lo contrario
        debe de ser manual.

5. Guardar y salir

```vim
:wa
:qa!
```

6. Eliminar los archivos creados por nvim para el diff.

7. Hacer el commit a la rama.



