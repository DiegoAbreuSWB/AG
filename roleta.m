%TRABALHO DE ALGORITMOS GENETICOS 
%METODO DE SELECAO POR ROLETA SIMPLES
%DIEGO MEDEIROS DE ABREU 20130684007
%RONALDO LIMA DE SOUZA  201306840029 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function popPais = roleta(pop,txCruz)
%Numero de cruzamentos e garantia de cruz.pares
tamanho = round(height(pop) *(txCruz/100));
if (mod(tamanho,2))
    tamanho =tamanho +1;
end
popPais = pop(1:tamanho,:);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%METODO DA ROLETA
%1. SOMA DAS FITNESS DOS INDIVIDUOS
%2. TIRAR A PARTICIPACAO DA FITNESSE DE CADA INDIVIDUO, COM RELACAO AO
%   TOTAL(SOMA DAS FITNESS)
%3. CRIAR A ROLETA: Ir somando as participacoes da roleta a cada posicao
%DEFINICOES
participacao_na_roleta=(1:5);
roleta=(1:5);
%SOMA DAS FITNESS
soma_das_apitidoes = sum(popPais.fitness);
%PARTICIPACAO NA ROLETA
 pai_selecionado=pop(1:tamanho,:); 
            for k=1:1:5
            participacao_na_roleta(k)=(popPais.fitness(k))/(soma_das_apitidoes)*100;
            end
%CRIAR A ROLETA   
       roleta(1)=participacao_na_roleta(1);    
            for k=2:1:5 
       roleta(k)=participacao_na_roleta(k)+roleta(k-1);    
            end   
            
%Selecionar na roleta
for i=1:1:tamanho
%%girar a roleta
vlr_roleta= rand()*100;
if	vlr_roleta <= roleta(1)
    pai_selecionado(i,:)=	pop(1,:);
else
    for  j=2:1:5
        if	vlr_roleta <= roleta(j)
                    pai_selecionado(i,:)=pop(j,:);
                   
         end %if vlr...
    end %for
 
end %end 1 if

end


end