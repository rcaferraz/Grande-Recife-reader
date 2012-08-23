sed s/"\(.*\):\(.*\)"/"INSERT INTO \`onibusrecife\`.\`searchstreet_onibus\` ( \`numero\` , \`nome\` ) VALUES ( '\1', '\2' );"/ linhas_onibus

#Como imprimi este ^M? Nao usei circunflexo. Fiz CTRL+V para aparecer o circunflexo, mantive pressionado o CTRL, e depois pressionei M.

