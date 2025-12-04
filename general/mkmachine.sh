# Colores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m'

# Función principal
mkmachine() {
        local machine_name=$1

        if [ -z "${machine_name}" ]; then
                echo -e "${RED}Usage: mkmachine <machine_name>${NC}"
        return 1
    fi

    local base_dir="${HOME}/htb/machines"
    local machine_dir="${base_dir}/${machine_name}"

    mkdir -p "${machine_dir}"/{content,nmap,scripts}

    echo -e "${GREEN}✅ Structure created:${NC} ${CYAN}${machine_dir}${NC}"
    echo -e "${BLUE}📁 Folders:${NC} content/ nmap/ scripts/"
}
