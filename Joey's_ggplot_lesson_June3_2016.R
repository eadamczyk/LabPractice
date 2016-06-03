install.packages("ggplot2")
install.packages("gapminder")

library(ggplot2)
library(gapminder)


head(gapminder)


ggplot(data = gapminder, aes(x = lifeExp, y = gdpPercap)) + geom_point()
ggplot(data = gapminder, aes(x = year, y = lifeExp)) + geom_point()
ggplot(data = gapminder, aes(x = year, y = lifeExp , by = country, color = continent)) + geom_line() + geom_point()
ggplot(data = gapminder, aes(x = year, y = lifeExp , by = country)) + geom_line(aes(color = continent)) + geom_point()



ggplot(data = gapminder, aes(x = lifeExp, y = gdpPercap)) + 
  geom_point(size = 3, color = "magenta") + 
  scale_y_log10() + 
  geom_smooth(method = "lm", size = 2, color = "purple")


ggplot(data = gapminder, aes(x = year, y = lifeExp, group = country, color = continent)) + 
  geom_line() + facet_wrap( ~ continent) + xlab("Year") + ylab("Life Expectancy") + ggtitle("Figure 1") +
  theme_bw() + theme(axis.text = element_text(size = 10), axis.title=element_text(size = 10, face = "bold"))

ggsave("figure1.png")


Plot %>% 
  dplyr::select(lifeExp, year, GDPpercap) %>% 
  filter(year)