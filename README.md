# KILLMAN - Script de Desinstalación Completa de Suricata

## Descripción
**KILLMAN** es un script de desinstalación diseñado para eliminar completamente Suricata de sistemas operativos basados en Linux. Este script está optimizado para limpiar no solo la instalación de Suricata, sino también todas las configuraciones, archivos adicionales, y dependencias instaladas durante el proceso de instalación.

Este desinstalador es el complemento perfecto para el instalador de Suricata. Si has utilizado el script de instalación mencionado, KILLMAN te ayudará a revertir todos los cambios realizados y dejar tu sistema en un estado limpio.

## Características
- **Detección automática del sistema operativo:** KILLMAN identifica la distribución de Linux en la que se está ejecutando (Debian, Ubuntu, Kali Linux, CentOS, Red Hat, Fedora) y ajusta el proceso de desinstalación en consecuencia.
- **Desinstalación completa de Suricata:** El script elimina Suricata utilizando el gestor de paquetes apropiado para tu distribución (`apt-get` para Debian/Ubuntu/Kali y `yum` para CentOS/Red Hat/Fedora).
- **Limpieza de configuraciones y archivos residuales:** Todos los archivos de configuración de Suricata se eliminan, incluyendo los repositorios PPA agregados durante la instalación.
- **Eliminación de dependencias adicionales:** Si se instalaron dependencias adicionales como `curl`, `gnupg`, y `jq` durante la instalación, KILLMAN las eliminará automáticamente para evitar residuos innecesarios en tu sistema.

## Uso
Clona este repositorio en tu sistema local:

```bash
git clone https://github.com/JhonDavid930/Suricata-instalacion
