import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Load the cleaned dataset
penguins = pd.read_csv(
    r"D:\Work\Penguins_Project\Data\clean_penguins.csv")

# Show first 5 rows
print(penguins.head())

# Show dataset size
print("\nDataset Shape:")
print(penguins.shape)
import os

print("Current Working Directory:")
print(os.getcwd())
# Create publication style
sns.set_theme(style="whitegrid")

# Create scatter plot with regression line
plt.figure(figsize=(8, 6))

sns.regplot(
    data=penguins,
    x="bill_length_mm",
    y="body_mass_g",
    scatter_kws={"s": 50},
    line_kws={"color": "red"}
)

plt.title("Relationship Between Bill Length and Body Mass")
plt.xlabel("Bill Length (mm)")
plt.ylabel("Body Mass (g)")

plt.tight_layout()

# Save figure
plt.savefig(
    r"D:\Work\Penguins_Project\Figures\Figure_4_ScatterPlot.png",
    dpi=300
)

# Show figure
plt.show()

# Select numerical variables
numeric_data = penguins[
    [
        "bill_length_mm",
        "bill_depth_mm",
        "flipper_length_mm",
        "body_mass_g"
    ]
]

# Calculate correlation matrix
correlation = numeric_data.corr()

# Create heatmap
plt.figure(figsize=(8, 6))

sns.heatmap(
    correlation,
    annot=True,
    fmt=".2f"
)

plt.title("Correlation Matrix of Penguin Measurements")

plt.tight_layout()

# Save figure
plt.savefig(
    r"D:\Work\Penguins_Project\Figures\Figure_5_Correlation_Heatmap.png",
    dpi=300
)

plt.show()

# ==========================================
# Summary Statistics
# ==========================================

# Generate summary statistics
summary = penguins.describe()

# Display in terminal
print("\nSummary Statistics:")
print(summary)

# Save summary statistics
summary.to_csv(
    r"D:\Work\Penguins_Project\Results\Summary_Statistics.csv"
)

print("\nSummary statistics saved successfully!")