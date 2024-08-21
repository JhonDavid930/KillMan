# KILLMAN - Script de Desinstalación Completa de Suricata

## Descripción

**KILLMAN** es un script de desinstalación diseñado para eliminar completamente **Suricata** de sistemas operativos basados en Linux. Este script está optimizado para limpiar no solo la instalación de Suricata, sino también todas las configuraciones, archivos adicionales y dependencias instaladas durante el proceso de instalación.

Este desinstalador es el complemento perfecto para el instalador de Suricata(SURICATAMAN). Si has utilizado el script de instalación mencionado (https://github.com/JhonDavid930/SURICATAMAN), KILLMAN te ayudará a revertir todos los cambios realizados y dejar tu sistema en un estado limpio.

## Características

- **Detección automática del sistema operativo:** KILLMAN identifica la distribución de Linux en la que se está ejecutando (Debian, Ubuntu, Kali Linux, CentOS, Red Hat, Fedora) y ajusta el proceso de desinstalación en consecuencia.
- **Desinstalación completa de Suricata:** El script elimina Suricata utilizando el gestor de paquetes apropiado para tu distribución (`apt-get` para Debian/Ubuntu/Kali y `yum` para CentOS/Red Hat/Fedora).
- **Limpieza de configuraciones y archivos residuales:** Todos los archivos de configuración de Suricata se eliminan, incluyendo los repositorios PPA agregados durante la instalación.
- **Eliminación de dependencias adicionales:** Si se instalaron dependencias adicionales como `curl`, `gnupg`, y `jq` durante la instalación, KILLMAN las eliminará automáticamente para evitar residuos innecesarios en tu sistema.

## Uso

1. Ejecuta el script de desinstalación como superusuario (root):

    ```bash
    sudo chmod +x killman.sh
    sudo ./killman.sh
    ```

## Compatibilidad

KILLMAN es compatible con las siguientes distribuciones de Linux:

- Debian (y derivados como Ubuntu y Kali Linux)
- Ubuntu
- Kali Linux
- CentOS
- Red Hat
- Fedora

## Advertencias

<p style="color: red;"><strong>Dependencias:</strong> El script eliminará <code>curl</code>, <code>gnupg</code>, y <code>jq</code> si fueron instalados durante el proceso de instalación. Asegúrate de que estas dependencias no sean necesarias para otras aplicaciones en tu sistema antes de ejecutar KILLMAN.</p>

<p style="color: red;"><strong>Irreversibilidad:</strong> Este script realiza una limpieza completa. Asegúrate de querer desinstalar completamente Suricata y eliminar todos los archivos relacionados antes de ejecutar KILLMAN.</p>


## Advertencias

- **Dependencias:** El script eliminará `curl`, `gnupg`, y `jq` si fueron instalados durante el proceso de instalación. Asegúrate de que estas dependencias no sean necesarias para otras aplicaciones en tu sistema antes de ejecutar KILLMAN.
- **Irreversibilidad:** Este script realiza una limpieza completa. Asegúrate de querer desinstalar completamente Suricata y eliminar todos los archivos relacionados antes de ejecutar KILLMAN.

## Contribuciones

Las contribuciones son bienvenidas. Si encuentras algún problema o tienes sugerencias para mejorar KILLMAN, por favor abre un *issue* o envía un *pull request*.
