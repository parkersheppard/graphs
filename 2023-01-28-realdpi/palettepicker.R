

pal <- c("#397352", # - main green
         "#E7A72A", # - gold
         "#AA9B5C", # - pewter
         "#932E4C", # - wine
         "#C97A64", # - rose
         "#294629", # - army green
         "#10231E", # - forest green
         "#D6652D", # - copper
         "#A66F44", # - light brown
         "#7F331E", # - darker brown
         "#CBC6A2", # - beige
         "#1A7968", # - teal
         "#899767", # - muted green
         "#554E49", # - slate
         "#672626", # - deep red
         "#CE4734", # - lighter red
         "#393752", # - navy
         "#1A2730", # - deep navy
         "#3E252B", # - plum
         "#42143C"  # - violet
)

palrgb <- matrix(NA,length(pal),3)

for (i in 1:length(pal)) {
  palrgb[i,] <- col2rgb(pal[i])
}
palrgb <- palrgb / 255


image(1:nrow(palrgb), 1, as.matrix(1:nrow(palrgb)), 
      col=rgb(palrgb[,1], palrgb[,2], palrgb[,3]),
      xlab="", ylab = "", xaxt = "n", yaxt = "n", bty = "n")
