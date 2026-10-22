##GGplot2 Lab-----------------------------------------
library(ggplot2)
tyre <-read.csv("tyre.csv")
head(tyre)
summary(tyre)
plot <- ggplot(tyre,
       aes(Brands, Mileage))+
  geom_boxplot(aes(fill= Brands)) +
  labs(title= "Marcas de llantas y cuanto aguantan",
       x= "marcas Caras", y= "millas") +
    theme_bw() +
    theme (legend.position = 'none') + 
  theme(
      plot.title = element_text(size=18, face = "bold", hjust = 0.5),
      axis.title.x = element_text(size=14, face = "bold"),
      axis.title.y = element_text(size=14, face = "bold"),
      axis.text.x = element_text(size=12),
      axis.text.y = element_text(size=12)
    )
## Statistical analysis brands-------------------------------
summary(tyre)
mod <- aov(Mileage ~Brands, data=tyre)
summary (mod)

plot
ggsave(
  filename="Mileage_by_Brand.png", 
  plot = plot, 
  width = 8, height = 6, dpi = 300)
  
?ggsave
