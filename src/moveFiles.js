/**
 * Altere o valor da variavel enabled
 * true = habilitar o Script executando
 * false = desabilitar o Script
 */
const enabled = true;
if (enabled)
{
    /**
     * Altere o valor da variavel action
     * copy = copia os arquivos da variavel oldDir pra newDir
     * move = recorta os arquivos da variavel oldDir pra newDir
     */
    const action = 'copy';

    //Caminho de origem dos arquivos, lembrando que deve duplicar as '\'
    const oldDir = 'C:\\Transferencia de arquivos\\Pasta 1\\';

    //Caminho de destino dos arquivos anteriores, lembrando que deve duplicar as '\'
    const newDir = 'C:\\Transferencia de arquivos\\Pasta 2\\';

    const fs = require('fs');

    fs.readdir(oldDir, (error, files) => {
        if (error) console.log(error);
        if (files) 
        {
            files.forEach( file => 
            {
                let oldDirectory = oldDir + file;
                let newDirectory = newDir + file;
                if (action === 'move')
                {
                    fs.rename(oldDirectory, newDirectory, function (err) {
                        if (err) throw err
                        console.log('Move success - ', file)
                    })
                }
                else if (action === 'copy')
                {
                    fs.copyFile(oldDirectory, newDirectory, function (err) {
                        if (err) throw err
                        console.log('Copy success - ', file)
                    })
                }
            })
        }
    });
}