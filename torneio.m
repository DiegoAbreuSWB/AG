function popPais = torneio(pop,txCruz,nTorneio)
%nuemro de cruzamentos e garantia de cruz.pares
tamanho = round(height(pop) *(txCruz/100));
if (mod(tamanho,2))
    tamanho =tamanho +1;
end
popPais = pop(1:tamanho,:);


for i=1:tamanho
    maior= min(pop.fitness);
    for n=1:nTorneio
        candidato =random ('unid',height(pop));
        if pop.fitness(candidato) >maior
            maior =pop.fitness(candidato) ;
            selecao = candidato ;
            disp('selecao=cadidato=');
            disp(selecao);
        end
    end
    popPais(i,:)=pop(selecao,:);
end
end

       