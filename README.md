# CLEMENTINA-XXI-test-guide

✅ Paso 1: Conectarse a Clementina

Desde tu terminal local con VPN activa:
ssh usuario@ssh.clementinaxxi.org.ar
✅ Paso 2: Crear un directorio de trabajo y subir los archivos
mkdir -p ~/LAMMPS_CU_FCC
cd ~/LAMMPS_CU_FCC
Desde tu máquina local:
scp in.fcc_cu_anneal.txt run_gpu_cu.slurm sbergamin@jumpext.clementinaxxi.org.ar:~/LAMMPS_CU_FCC
✅ Paso 3: Cargar módulos de entorno
Una vez conectado:
module load intel/2023.2.1
module load lammps/2024-Aug-opencl
✅ Paso 4: Revisar input (potencial ya apuntando a ruta correcta)
Archivo: in.fcc_cu_anneal.txt
✅ Paso 5: Enviar trabajo a SLURM

sbatch run_gpu_cu.slurm

✅ Paso 7: Revisar resultados
scp -r usuario@ssh.clementinaxxi.org.ar:LAMMPS_CU_FCC ~/Escritorio/
