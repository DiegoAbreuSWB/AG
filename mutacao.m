function pop=mutacao(pop,tx)
nMut=round(height(pop)*(tx/100));
if(nMut<1)
    nMut=1; %ao menos 1 mutacao
end
%selecionar alelo
for i=1:nMut
    %com elitismo- nao seleciona o 1* cromossomo
    selectCromo = 1+(random('unid',height(pop)-1));
    selectGene = random('unid', length(pop.genes(selectCromo,:)));
    %troca alelo por um aleatorio do alfabeto
    pop.genes(selectCromo, selectGene)= (random('unid',177)+5);
    pop.fitness(selectCromo) = calcularFitness(pop.genes(selectCromo,:));
end
end

    
    