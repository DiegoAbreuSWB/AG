 function fitness = calcularFitness(vet)
pMax=500;
penalizacao =20;
peso =[2 4 5 8 12];
valor =[3 6 10 18 26];

pesoCromossomo = vet*peso';
valorCromossomo = vet*valor';

if(pesoCromossomo<pMax)
    fitness= valorCromossomo;
else fitness = valorCromossomo-(pesoCromossomo-pMax)*penalizacao;
end

end