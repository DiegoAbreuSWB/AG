function popFilhos= pontoCorte(popPais)
popFilhos =popPais;

for i=1:2:height(popFilhos)
    %valor aleatorio de 1 a 4
    ponto =random('unid',length(popPais.genes(1,:)-1));
    %ponto = random('unid',4);
    
    filho1 = cruzar(popPais.genes(i,:),popPais.genes(i+1,:),ponto);
    filho2= cruzar(popPais.genes(i+1,:),popPais.genes(i,:),ponto);
    
    popFilhos.genes(i,:) = filho1;
    popFilhos.fitness(i) = calcularFitness(filho1);
    popFilhos.genes(i+1,:) = filho2;
    popFilhos.fitness(i+1) = calcularFitness(filho2);
end

function filho = cruzar(pai1, pai2, ponto)
filho=pai2;
filho(1:ponto)=pai1(1:ponto);
end
end

    