# for n number of query sequences
for i in {1..n}; do blastp -db nr -remote -entrez_query "Mycobacterium smegmatis (organism)" -query myseq${i}.fasta -out blast_output_msmeg${i}.out; done 
# for mycobacterium tuberculosis
for i in {1..n}; do blastp -db nr -remote -entrez_query "Mycobacterium tuberculosis (organism)" -query myseq${i}.fasta -out blast_output_mtb${i}.out; done 