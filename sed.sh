# tambahan sed, ada kolom aneh nambah2 enter diikuti "" jadi kedetek kolom
sed -i 's/\([a-zA-Z0-9]\)""/\1/g' $OUTPUTFILE

tr '\n' '+' < $OUTPUTFILE > ${OUTPUTFILE}.TMP
mv ${OUTPUTFILE}.TMP $OUTPUTFILE
sed -i 's/"+"/"\n"/g' $OUTPUTFILE
sed -i 's/+/ /g' $OUTPUTFILE
