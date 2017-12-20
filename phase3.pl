%If genes belong to the same chromosome, it is a part of the gene chain
0.66::genechain(Ga,Gb):- samechromosome(Ga,Gb).
0.75::genechain(Ga,Gb):- samechromosome(Ga,Gc), genechain(Gc,Gb).

%if genes are part of the gene chain, there is a 80% chance of it being in
%the FCL DNA
0.8::dnafcl(X,Y):- genechain(X,Y).
0.2::dnafcl(X,Y):- \+genechain(X,Y).

% probabilities of genes being in the same chromosome
0.6::samechromosome(p720,p721).
0.3::samechromosome(p888,p001).
0.8::samechromosome(p766,p543).
0.9::samechromosome(p321,p684).

% Given that p888 and p001 are in the same genechain
evidence(genechain(p888,p001),true).

% Find probabilities of all genes being in FCL DNA
query(dnafcl(X,Y)).
