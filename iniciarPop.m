function pop=iniciarPop (tamanho)
genes = (random ('unid',177,tamanho,5)+5);
fitness = calcularFitness(genes);
pop=table(genes,fitness);
end
