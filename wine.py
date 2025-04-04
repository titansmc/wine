import pandas as pd
import matplotlib.pyplot as plt

# Cargar el dataset
file_path = "dataset.csv"  # Cambiar por la ruta correcta del archivo CSV
df = pd.read_csv(file_path, delimiter=',')

# Crear el gráfico
plt.figure(figsize=(8,5))
plt.scatter(df['fixed acidity'], df['quality'], alpha=0.5)
plt.xlabel("Fixed Acidity")
plt.ylabel("Quality")
plt.title("Relación entre Quality y Fixed Acidity")
plt.grid(True)
plt.savefig("image.png", dpi=300)
