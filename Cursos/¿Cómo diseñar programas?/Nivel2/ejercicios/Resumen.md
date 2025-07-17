# 📘 Nivel 2 — Resumen General: Datos de Tamaño Arbitrario

En este nivel, dimos un paso clave al aprender cómo **diseñar programas que trabajan con cantidades arbitrarias de datos**. Dejamos atrás los datos fijos y pasamos a construir programas que procesan listas, estructuras anidadas y datos auto-referenciales.

---

## 🧠 Lo que aprendimos

### 🔸 Listas
- Son secuencias de datos que pueden tener cualquier cantidad de elementos (incluyendo cero).
- Aprendimos a construir, recorrer, transformar y reducir listas.
- Usamos `cons`, `first`, `rest`, `empty?`, y `list`.

### 🔸 Datos auto-referenciales
- Diseñamos funciones que se llaman a sí mismas para recorrer estructuras de datos complejas.
- Aplicamos la recursión no solo a listas, sino también a estructuras como números naturales o árboles simples.
- Usamos recetas como:
  - **Lista vacía o `cons`**
  - **Número 0 o `add1`**
  - **Caso base + paso recursivo**

### 🔸 Composición de funciones
- Construimos soluciones más limpias al **combinar funciones pequeñas** que resuelven subtareas.
- Usamos funciones auxiliares para facilitar el diseño y evitar repetir código.

### 🔸 Abstracción
- Creamos funciones más generales que pueden recibir comportamientos como parámetros (ej. `filtrar` con predicados).
- Aprendimos a reutilizar patrones comunes (como acumuladores o mapeo).

### 🔸 Proyectos
- Aplicamos los conocimientos en mini-proyectos como:
  - Diccionarios simples
  - Mini-iTunes
  - Juegos de palabras
  - Tetris y Space War
  - Máquinas de estado finito

---

## 🧩 Herramientas que dominamos

| Concepto                        | Uso Principal                         |
|-------------------------------|----------------------------------------|
| `cons`, `first`, `rest`        | Construcción y acceso en listas       |
| `empty?`, `list?`              | Condicionales para listas             |
| Funciones recursivas           | Procesar datos de tamaño arbitrario   |
| `map`, `filter`, `foldr` *(opc)* | Procesamiento funcional sobre listas |
| `struct`                       | Definir tipos personalizados          |
| Composición (`f ∘ g`)          | Encadenar funciones                   |

---

## 🚀 ¿Qué sigue?

Estás listo para afrontar el **Nivel 3**, donde trabajarás con:
- **Mutabilidad y vectores**
- **Abstracción de funciones**
- **Diseño modular**
- **Proyectos más grandes y sostenibles**

Pero antes de eso… ¡respira hondo y felicítate! 🎉 Has recorrido lo esencial para dominar listas y estructuras recursivas.
