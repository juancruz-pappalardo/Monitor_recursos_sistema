Script de monitoreo en tiempo real para alertas tempranas de sobrecarga de recursos.

🎯 Objetivo
Detectar proactivamente problemas de rendimiento antes de que afecten servicios críticos.

Características
- 🔍 Monitoreo de CPU, Memoria y Disco
- ⚠️ Alertas por umbrales configurables
- 📈 Métricas en tiempo real
- 🚨 Notificaciones inmediatas
- 🔧 Fácil personalización

🛠️ Tecnologías Utilizadas
- Bash Scripting - Lógica de monitoreo
- Comandos nativos Linux - top, free, df
- awk/grep/sed - Procesamiento de texto

## 🚀 Instalación Express
- bash
1. Descargar script
chmod +x resource_monitor.sh

2. Configurar umbrales (editar script)
THRESHOLD_CPU=80    # Alertar sobre 80%
THRESHOLD_MEM=90    # Alertar sobre 90%
THRESHOLD_DISK=85   # Alertar sobre 85%

3. Ejecutar manualmente para probar
./resource_monitor.sh

4. Programar monitoreo continuo (cada 5 minutos)
crontab -e
*/5 * * * * /ruta/completa/resource_monitor.sh

Métricas monitoreadas
Uso de CPU
- Comando: top -bn1
- Precisión: Uso actual del CPU
- Umbral recomendado: 80-90%

Uso de Memoria
- Comando: free
- Precisión: Memoria RAM utilizada
- Umbral recomendado: 85-95%

Uso de Disco
- Comando: df /
- Precisión: Espacio en partición raíz
- Umbral recomendado: 80-90%
