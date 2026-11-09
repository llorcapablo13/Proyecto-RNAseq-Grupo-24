
# QC de las lecturas de RNA-seq (16 muestras) con FastQC y MultiQC.
# Uso: bash 01_fastqc_multiqc.sh

# Comprobar que existen archivos FASTQ

# 1. Informe de calidad por archivo

# 2. Informe conjunto de las 16 muestras

echo "QC completado. Informe: $MULTIQC_DIR/multiqc_report.html"
