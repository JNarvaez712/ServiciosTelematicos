# Parte 4 - Grafana

1. Instalar Grafana:
    ./grafana_setup.sh

2. Acceder en navegador:
    http://localhost:3000

3. Usuario: admin / Contraseña: admin

4. Agregar fuente de datos:
    - Tipo: Prometheus
    - URL: http://localhost:9090

5. Crear panel personalizado:
    - node_cpu_seconds_total
    - node_memory_MemAvailable_bytes
    - node_filesystem_free_bytes

6. Importar dashboard:
    - ID: 1860 ("Node Exporter Full")
