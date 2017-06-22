
%function pop= ag(tamanho,geracoes)
%tamanho=30;
%geracoes=5;
function pop= ag(tamanho,geracoes)

figure; hold on;
pop= iniciarPop(tamanho);
for i=1:geracoes
    pop = iniciarPop(tamanho);
    for k=1:geracoes
        pop = sortrows(pop,'fitness','descend'); %rank
       % popPais = torneio(pop,60,30); %selecao
       popPais = roleta(pop,60);
       % popFilhos= pontoCorte(popPais);
       popFilhos= mascara_binaria(popPais);
        
        %substitui piores
        inicio = (height(pop)- height(popFilhos))+1;
        pop(inicio:height(pop),:)=popFilhos(:,:);
        
        pop= mutacao(pop,10);  %mutacao
        
        plot(k,pop.fitness(1),'+b');
        plot(k,mean(pop.fitness(:)),'or');
    end
end

        