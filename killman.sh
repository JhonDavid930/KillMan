#!/bin/bash

# Colores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # Sin color

# Comprobar si el script se está ejecutando como root
if [ "$(id -u)" -ne 0 ]; then
  echo -e "${RED}Este script debe ejecutarse como root o con sudo.${NC}"
  exit 1
fi

# Detectar la distribución de Linux
OS=$(awk -F= '/^NAME/{print $2}' /etc/os-release)

echo -e "${BLUE}*************************************************${NC}"
echo -e "${BLUE}*********** Script de desinstalación ************${NC}"
echo -e "${BLUE}********** para limpiar instalación de **********${NC}"
echo -e "${BLUE}********** Suricata por JHON DAVID **************${NC}"
echo -e "${BLUE}*************************************************${NC}"
echo -e "${YELLOW}Inicio de la desinstalación...${NC}"
echo -e "${YELLOW}===========================================${NC}"
sleep 2

# Mostrar la distribución detectada
echo -e "${YELLOW}Detectando el sistema operativo...${NC}"
echo -e "${GREEN}Sistema operativo detectado: $OS${NC}"

# Desinstalación de Suricata y limpieza según la distribución
if [[ "$OS" == *"Kali"* ]] || [[ "$OS" == *"Debian"* ]] || [[ "$OS" == *"Ubuntu"* ]]; then
    echo -e "${YELLOW}Eliminando Suricata y limpiando archivos en sistemas basados en Debian/Ubuntu/Kali...${NC}"
    
    # Desinstalar Suricata
    sudo apt-get purge --auto-remove -y suricata

    # Eliminar el repositorio PPA si existe
    if [ -f /etc/apt/sources.list.d/suricata.list ]; then
        echo -e "${YELLOW}Eliminando el repositorio PPA de Suricata...${NC}"
        sudo rm /etc/apt/sources.list.d/suricata.list
        sudo apt-get update
    fi

    # Eliminar archivos de configuración restantes
    sudo rm -rf /etc/suricata
    sudo rm -rf /var/lib/suricata

    # Eliminar dependencias instaladas por el script
    echo -e "${YELLOW}Eliminando dependencias adicionales...${NC}"
    sudo apt-get autoremove --purge -y curl gnupg jq
    
    echo -e "${GREEN}Limpieza completa en sistemas basados en Debian/Ubuntu/Kali.${NC}"

elif [[ "$OS" == *"CentOS"* ]] || [[ "$OS" == *"Red Hat"* ]] || [[ "$OS" == *"Fedora"* ]]; then
    echo -e "${YELLOW}Eliminando Suricata y limpiando archivos en sistemas basados en Red Hat/CentOS/Fedora...${NC}"
    
    # Desinstalar Suricata
    sudo yum remove -y suricata

    # Eliminar archivos de configuración restantes
    sudo rm -rf /etc/suricata
    sudo rm -rf /var/lib/suricata

    # Eliminar dependencias instaladas por el script
    echo -e "${YELLOW}Eliminando dependencias adicionales...${NC}"
    sudo yum autoremove -y curl gnupg jq

    echo -e "${GREEN}Limpieza completa en sistemas basados en Red Hat/CentOS/Fedora.${NC}"

else
    echo -e "${RED}Distribución no soportada automáticamente por este script.${NC}"
    echo -e "${YELLOW}Por favor, desinstala manualmente Suricata y las dependencias en tu sistema.${NC}"
    exit 1
fi

# Mensaje de éxito
echo -e "${GREEN}===========================================${NC}"
echo -e "${GREEN}¡Desinstalación y limpieza completada!${NC}"
echo -e "${GREEN}La máquina está limpia como si Suricata nunca hubiera sido instalado.${NC}"
echo -e "${GREEN}===========================================${NC}"
