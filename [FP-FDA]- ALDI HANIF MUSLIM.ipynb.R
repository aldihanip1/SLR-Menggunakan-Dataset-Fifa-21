# Load the necessary library
library(readr)

# Read the dataset (replace with your actual file path)
data_aldi <- read.csv2("D:/BootCamp ( Course Development )/Final Project DAV/course_table.csv")

# Create a simple linear regression model
model <- lm(price ~ duration, data = data_aldi)

# Menampilkan ringkasan model
summary(model)

# Membuat prediksi harga berdasarkan data prediktor
predicted_prices <- predict(model, data = data_aldi)

# Membuat scatterplot
plot(data_aldi$duration, data_aldi$price, main="Regresi Linear Sederhana", xlab="Duration", ylab="Price")
abline(model, col="red")



