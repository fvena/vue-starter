# Variables
LIBRARY_NAME=$(basename -s .git $(git remote get-url origin)) || "my-library"
VERSION="0.1.0"
AUTHOR=$(git config user.name)
EMAIL=$(git config user.email)
URL_REMOTE=$(git config --get remote.origin.url) || echo "there is no remote named 'origin'"
URL_REMOTE=${URL_REMOTE%".git"}
REPO=${URL_REMOTE#"https://github.com/"}
YEAR=$(date +'%Y')

# Decoración
RED='\033[0;31m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
GREEN='\033[0;32m'
GRAY='\033[0;90m'
NC='\033[0m' # No Color
UNDERLINE='\033[0;4m'
NORMAL='\033[0;24m'

#
# DATOS DE LA LIBRERÍA
#
clear

echo
echo
echo -e "${GRAY}Librería: $LIBRARY_NAME${NC}"
echo -e "${GRAY}Autor: $AUTHOR${NC}"
echo -e "${GRAY}Email: $EMAIL${NC}"
echo -e "${GRAY}Repositorio: $URL_REMOTE${NC}"

#
# MODIFICADOS
#
echo
echo
echo -e "${UNDERLINE}Modificados${NORMAL}"

# contributing.md
sed -i "" -E "s/fvena32@gmail.com/$EMAIL/g" .github/contributing.md
echo -e "${YELLOW}.github/contributing.md${NC}"

# deploy-docs.yaml
sed -i "" -E "s/fvena32@gmail.com/$EMAIL/g;s/Francisco Vena/$AUTHOR/g" .github/workflows/deploy-docs.yaml
echo -e "${YELLOW}.github/workflows/deploy-docs.yaml${NC}"

# test-and-release.yaml
sed -i "" -E "s/fvena32@gmail.com/$EMAIL/g;s/Francisco Vena/$AUTHOR/g" .github/workflows/test-and-release.yaml
echo -e "${YELLOW}.github/workflows/test-and-release.yaml${NC}"

# LICENSE
sed -i "" -E "s/2021 Francisco Vena/$YEAR $AUTHOR/g" LICENSE
echo -e "${YELLOW}LICENSE${NC}"

# Actualiza y limpia los datos en el package.json
sed -i "" -E "s/(\"name\": \")(.+)(\")/\1$LIBRARY_NAME\3/g" package.json
sed -i "" -E "s/(\"version\": \")(.+)(\")/\1$VERSION\3/g" package.json
sed -i "" -E "s/(\"description\": \")(.+)(\")/\1\3/g" package.json
sed -i "" -E "s/(\"author\": \")(.+)(\")/\1$AUTHOR \<$EMAIL\>\3/g" package.json
sed -i "" -E "/\"keywords\"\: \[/,/\]/{//!d;}" package.json
sed -i "" -E "s~(\"url\": \")(.+)(\")~\1$URL_REMOTE\3~g" package.json
sed -i "" -E "s~(\"homepage\": \")(.+)(\")~\1$URL_REMOTE\3~g" package.json
sed -i "" -E "s~(\"bugs\": \")(.+)(\")~\1$URL_REMOTE\/issues\3~g" package.json
sed -i "" -E "/postinstall/d" package.json
echo -e "${YELLOW}package.json${NC}"




#
# RENOMBRADOS
#
echo
echo
echo -e "${UNDERLINE}Renombrados${NORMAL}"

# Actualiza el code-workspace
mv javascript-library-starter.code-workspace "$LIBRARY_NAME.code-workspace"
echo -e "${CYAN}javascript-library-starter.code-workspace => $LIBRARY_NAME.code-workspace${NC}"

# Actualiza el README.md
sed "s~<repo>~$REPO~g;s~<library>~$LIBRARY_NAME~g" README_template.md > README.md
echo -e "${CYAN}README_template.md => README.md${NC}"

#
# ELIMINADOS
#
echo
echo
echo -e "${UNDERLINE}Eliminados${NORMAL}"
rm README_template.md CHANGELOG.md postInstall.sh
echo -e "${RED}README_template.md${NC}"
echo -e "${RED}CHANGELOG.md${NC}"
echo -e "${RED}postInstall.sh${NC}"


#
# FINALIZADO
#
echo
echo
echo -e "${GREEN}OK, todo listo. Feliz desarrollo ;)${NC}"
echo
echo

#
# Añadiendo los cambios al último commit
#
git add .
git commit --amend
