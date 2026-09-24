# Laboratorio Marcador Deportivo

## Capturas de pantalla

### Estado de Empate
![Empate](empate.png)

### Equipo Ganando
![Ganando](ganando.png)

---

## Pregunta Técnica

**¿Qué hace `setState` cuando presiona un botón y qué ocurriría si cambia los puntos sin llamarlo?**

Básicamente, setState le avisa a Flutter que hubo un cambio para que vuelva a dibujar la pantalla. Si sumamos o restamos puntos sin usar setState, la variable sí cambia internamente, pero en la app se sigue viendo el número viejo porque la interfaz nunca se entera de que tiene que actualizarse.