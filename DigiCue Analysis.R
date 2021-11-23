digicue = read_csv("data.csv") %>%
  within(rm(MAC))

digicue$TipSteerDir = as.numeric(c("L" = -1, "C" = 0, "R" = 1)[digicue$TipSteerDir])

summary(digicue[-1])

#write.csv(digicue, paste(toString(format(Sys.time(), "%b-%d-%y")), "(formatted)", ".csv", sep = ""))