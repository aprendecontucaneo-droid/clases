# Estructura recomendada para clases.tucaneo.com (todo en GitHub)

## Objetivo
Dejar el híbrido WordPress + GitHub: **todo** (portada, menú, niveles, lecciones, PDFs, imágenes) en este repo. WordPress ya no hace falta para la arquitectura ni las maquetas.

---

## Estructura de carpetas y archivos

```
📄 index.html          → La portada: tucán, hero, enlaces a niveles (tu Maquetas/index.html llevado a la raíz)
📄 nav.html            → Solo el HTML del menú (sin <html>/<body>) para cargar con fetch
📄 CNAME               → clases.tucaneo.com (ya lo tienes)

📁 A1/                  → Nivel A1 (mantener nombre actual o usar a1/ en minúscula, tú eliges)
│   📄 index.html       → "Portada del nivel": lista de todas las clases de A1 con enlaces
│   📄 Presente_simple.html
│   📄 Hay.html
│   📄 La_familia.html
│   … (todas las lecciones que ya tienes)

📁 A1.2/
│   📄 index.html       → Portada del nivel A1.2
│   📄 Futuro_con_ir.html
│   …

📁 A2/
│   📄 index.html       → Portada del nivel A2
│   📄 El_Subjuntivo_Introducción.html
│   …

📁 A2.2/
│   📄 index.html
│   📄 Pasado_simple.html
│   …

📁 A2.3/
│   📄 index.html
│   📄 El_Preterito_Perfecto_Compuesto_ejercicios.html
│   …

📁 pdf/                 → PDFs por nivel (las rutas que ya usas: clases.tucaneo.com/pdf/...)
│   📁 A1/
│   📁 A2.2/
│   📁 A2.3/
│   …

📁 img/                 → Imágenes y logos globales (opcional: algunas están en A2.3/img, puedes centralizar)
│   (logos, ilustraciones, etc.)

📁 Maquetas/            → (Opcional) Referencia de diseño; o borrar cuando la portada esté en index.html
```

---

## Ajustes respecto a la sugerencia que te dieron

| Sugerencia original | Recomendación aquí |
|---------------------|---------------------|
| "a1/, a2/, a2-2/" con **un** index por nivel | Tienes **5 niveles** (A1, A1.2, A2, A2.2, A2.3) y **muchas lecciones** por nivel. Mantén las 5 carpetas y en cada una: **un index.html** que sea la "portada del nivel" (lista de clases) + todos los .html de lecciones. |
| — | Añadir **nav.html** + script fetch en todas las páginas para un solo menú. |
| pdf/ por niveles | Correcto; ya usas `pdf/A1/`, `pdf/A2.2/`, etc. en enlaces. |
| img/ centralizado | Tiene sentido; puedes ir moviendo imágenes de A2.3/img, etc., a **img/** y actualizar rutas. |

---

## Cómo sustituir WordPress

1. **Portada (arquitectura)**  
   - En WordPress tenías la "maqueta" o portada.  
   - En GitHub: esa portada es tu **index.html** en la raíz.  
   - Puedes basarte en **Maquetas/index.html**: copia su contenido a **index.html**, quita referencias a WordPress (p. ej. `header#masthead`, `.site-header`) y usa en su lugar un bloque que rellenas con **nav.html** (por ejemplo un `<div id="header-container"></div>` y el script de fetch).

2. **Menú (navegación)**  
   - En WordPress el menú lo gestionaba el tema.  
   - En GitHub: **nav.html** + en cada página:
     - `<div id="header-container"></div>`
     - Script que hace `fetch('/nav.html')` y escribe el HTML en ese div.

3. **Maquetas**  
   - Eran la "arquitectura" en WordPress.  
   - En GitHub: la arquitectura es **index.html** + **nav.html** + **index.html** de cada nivel.  
   - La carpeta **Maquetas/** puede quedarse como referencia de diseño o eliminarse cuando ya no la uses.

4. **Rutas**  
   - Enlaces a niveles: desde **index.html** enlazar a `/A1/`, `/A1.2/`, `/A2/`, `/A2.2/`, `/A2.3/` (cada uno mostrará el index.html de esa carpeta).  
   - PDFs: seguir con `/pdf/A1/...`, `/pdf/A2.2/...`, etc.

---

## Orden sugerido para hacer el cambio

1. Crear **nav.html** en la raíz con solo el HTML del menú.  
2. Crear **index.html** en la raíz a partir de Maquetas/index.html (portada con tucán y niveles), usando `header-container` + fetch para el menú.  
3. En cada nivel (A1, A1.2, A2, A2.2, A2.3), crear **index.html** que liste las lecciones de ese nivel con enlaces a cada .html.  
4. Añadir en todas las páginas de lecciones el `<div id="header-container"></div>` y el script que carga **nav.html** (y, si hace falta, una ruta base para que funcione desde subcarpetas).  
5. Revisar enlaces a PDFs e imágenes; si mueves cosas a **img/**, actualizar rutas.  
6. Cuando todo funcione en GitHub Pages, dejar de usar WordPress para la estructura y maquetas de clases.

---

## Resumen

- **Sí, haz esa organización**, con los ajustes anteriores: 5 niveles, un **index.html** por nivel como "portada del nivel", **nav.html** + fetch, **pdf/** e **img/** como indicado.  
- Así **todo queda en GitHub** y puedes dejar de depender de WordPress para la arquitectura y las maquetas: la portada es **index.html**, el menú es **nav.html**, y la estructura son estas carpetas y los index de cada nivel.
