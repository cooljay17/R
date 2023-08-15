install.packages("palmerpenguins")
library("palmerpenguins")
skim_without_charts(penguins)
glimpse(penguins)
head(penguins)
penguins %>% 
  select(-species)

penguins %>% 
  rename(island_new=island)
rename_with(penguins,toupper)
rename_with(penguins,tolower)
clean_names(penguins)

penguins_data=penguins %>% arrange(-bill_length_mm)
View(penguins_data)
penguins %>% group_by(island) %>% drop_na %>% 
  summarise(mean_bill_length_mm=mean(bill_length_mm))
penguins %>% group_by(island) %>% drop_na %>% 
  summarise(max_bill_length_mm=max(bill_length_mm))
penguins %>% group_by(island,species) %>% drop_na %>% 
  summarise(mean_bill_length_mm=mean(bill_length_mm),
            max_bill_length_mm=max(bill_length_mm))
penguins %>% filter(species=="Adelie")

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm,y = body_mass_g,shape=species,color=species))+
  facet_wrap(~species)

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm,y = body_mass_g,shape=species,color=species))+
  facet_grid(sex ~ species)

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm,y = body_mass_g,alpha=species))

ggplot(data = penguins) + 
  geom_jitter(mapping = aes(x = flipper_length_mm,y = body_mass_g))



ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm,y = body_mass_g),color="purple")

ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm,y = body_mass_g))

ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm,y = body_mass_g,linetype=species))

ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm,y = body_mass_g)) +
  geom_point(mapping = aes(x = flipper_length_mm,y = body_mass_g))

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = color ,fill=cut))+
  facet_wrap(~cut)
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm,y = body_mass_g,shape=species,color=species))+
  labs(title="Palmer Penguins",subtitle = "Sample of 3 penguin species",
       caption = "Research by Penguin researcher")+
  annotate("Text",x=220,y=3500,label="Gentoos are the largest",color="purple",fontface="bold",size=3.5,angle=25)


p<-ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm,y = body_mass_g,shape=species,color=species))+
  labs(title="Palmer Penguins",subtitle = "Sample of 3 penguin species",
       caption = "Research by Penguin researcher")

p + annotate("text",x=220,y=3500,label="HI")
ggsave("C:/Users/Jay/Downloads/Hi_ggsave.png")
