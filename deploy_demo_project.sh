project_name=${1:-demo_project}

# Check if node its intalled

echo "Checking NodeJS ..."

command -v node | sudo dnf install nodejs

if (comand -v node ==! true){
	echo "Algo ha salido mal, no hemos podido instalar nodejs"
	exit 1
}

# Alternativa instalar pnpm 

