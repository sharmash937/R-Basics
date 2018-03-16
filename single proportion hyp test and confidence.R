rm(list = ls())

prop.test(98, 162)


#one tailed test with 90% confidence interval
prop.test(98, 162, alt = "greater", conf.level = 0.90)

#-----------------------------

quakes[1:5,]

mag <- quakes$mag
mag[1:5]

t.test(mag)
t.test(mag, alternative = "greater", mu =4)
 