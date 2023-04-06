# Introduction 
Script para copiar\mover arquivos de uma pasta para outra.

# Getting Started
1. Requisitos

Clonar o projeto na raiz do Disco C:\ ou alterar os arquivos src/executers/executer.vbs, src/executers/caller.bat e src/executers/callerLoop.bat para apontar para o novo caminho.

No arquivo src/moveFiles.js, alterar o valor das variaveis:
-enabled
true ou false, é o que vai definir se o Script está habilitada ou não.

-action
copy ou move, copy para copiar arquivos de uma pasta para outra e move para recortar os arquivos.

-oldDir
Caminho do diretório de origem dos arquivos, onde a divisão das pastas deve tem dois contra-barras '\\'

-newDir
Caminho do diretório de destino dos arquivos, onde a divisão das pastas deve tem dois contra-barras '\\'


Caso deseje executar o Script em loop:
Edite o valor dos segundos do arquivo src/executers/callerLoop.bat, por padrão vem como 60 (1 minuto).

2. Execução

Para executar o Script apenas uma vez, basta executar o arquivo src/executers/caller.bat
-Neste caso o CMD de execução estára visível, e para interromper o processo, basta fecha-lo.

Para executar o Script em loop, até reiniciar o computador, basta executar o arquivo src/executers/callerLoop.bat
-Neste caso o CMD de execução estára visível, e para interromper o processo, basta fecha-lo.

Para executar o Script em loop, até reiniciar o computador, basta executar o arquivo src/executers/executer.vbs
-Neste caso o CMD de execução estára escondido, e para interromper o processo, deve-se reiniciar o computador.

Para executar o Script em loop e de forma que o mesmo continue executando mesmo quando o computador reiniciar, basta executar o arquivo src/executers/executerLoop.vbs
-Neste caso o CMD de execução estára escondido, e para interromper o processo, deve-se apagar ou mudar o arquivo src/executers/executerLoop.vbs de local.

