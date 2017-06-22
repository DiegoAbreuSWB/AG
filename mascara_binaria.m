%TRABALHO DE ALGORITMOS GENETICOS 
%DIEGO MEDEIROS DE ABREU 20130684007
%RONALDO LIMA DE SOUZA  201306840029
%METODO DE CRUZAMENTO POR MASCARA BINARIA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function popFilhos= mascara_binaria(popPais)
popFilhos =popPais;
for i=1:2:height(popFilhos) %Repetir para toda a populacao,passo 2
%DEFINICOES
size=5; %tamanho do cromossomo
mb=zeros(1,size); %Vetor mascara binaria
filho1=zeros(1,size); % Vetor do "filho1"
filho2=zeros(1,size); % Vetor do "filho2"
pai1=popPais.genes(i,:); %Vetor do pai1
pai2=popPais.genes(i+1,:); %Vetor do pai2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%GERAR MASCARA BINARIA
%Mascara Binaria vai ser um vetor de "size" posicoes de 1 ou 0
%Aleatoriedade é dada pelo rand()
for j=1:1:size
    if rand()<=0.5
        mb(j)=1; %coloca 1
    end  %else vai continuar 0
end

for j=1:1:(size-1)
    if mb(j)==1 %SE FOR 1--> filho1<--pai1; filho2<--pai2;
        filho1(j)=pai1(j);
        filho2(j)=pai2(j);
    else if mb(j)==0%SE FOR 2--> filho1<--pai2; filho2<--pai1;
        filho1(j)=pai2(j);
        filho2(j)=pai1(j);
        end %end else if
    end %end if maior
end %end for     

popFilhos.genes(i,:) = filho1;
    popFilhos.fitness(i) = calcularFitness(filho1);
    popFilhos.genes(i+1,:) = filho2;
    popFilhos.fitness(i+1) = calcularFitness(filho2);
end %

end  %End function
