for f in *.fasta
    do
    f1=$(head -n1 "$f"| cut -c2-11).fasta
    mv -n "$f" "$f1"
    done