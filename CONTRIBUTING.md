# Guía para contribuir al informe

El informe se escribe en Markdown y se exporta a PDF con Pandoc y XeLaTeX. El
formato usa Aptos cuando está disponible; en Windows admite Calibri como fuente
similar y en GitHub Actions usa Carlito para que el resultado sea reproducible.

## Dependencias

Desde PowerShell, en la raíz del proyecto:

```powershell
.\scripts\dependencies.ps1
```

El script comprueba Pandoc, MiKTeX/XeLaTeX y una fuente compatible. En Windows
puede instalar las herramientas faltantes mediante `winget`.

## Generar el PDF

```powershell
.\scripts\build.ps1 <av1|tb1|av2|tb2>
```

Para el primer avance:

```powershell
.\scripts\build.ps1 av1
```

El archivo se guarda con este patrón:

```text
dist/upc-pre-202620-1acc0238-13975-entreprenly-report-<entrega>.pdf
```

AV1 incluye `README.md`, los capítulos I y II, conclusiones, bibliografía y
anexos. Las entregas posteriores incorporan también los capítulos III y IV, los
videos y el glosario.

## Convenciones de escritura

- Usa encabezados Markdown y escribe la numeración dentro del título.
- Usa tablas Markdown con tuberías. El generador conserva `<br>` como salto de
  línea dentro de las celdas.
- Guarda las imágenes dentro de `docs/images/` y enlázalas con rutas relativas.
- Agrega las fuentes a `references.bib` y cítalas con la sintaxis de Pandoc, por
  ejemplo `[@clave]`.
- No agregues otra plantilla de carátula: la carátula oficial vive en
  `README.md` y el generador la reutiliza para el PDF.

Los mensajes de commit deben estar en inglés y seguir Conventional Commits, por
ejemplo `docs: complete startup profile` o `feat: add AV1 PDF generator`.

## Automatización

El workflow `.github/workflows/report.yml` genera y publica el PDF al crear un
tag que empiece con `av1`, `tb1`, `av2` o `tb2`. También puede ejecutarse
manualmente desde GitHub Actions.
