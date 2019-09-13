total_cups <- 33357600
# let P[X=1]="probability fewer than 1300 cups were winning"
# let 33357600C8000 be the way of choosing for cups to be sent to Tim Hortons
# let P[X=0]="probability more than 1300 cups were losing"

as.numeric(combn(total_cups, 8000))

type <- c('W', 'L')
cups <- sample(type, total_cups, replace=TRUE, prob=c(1/6,5/6))

win <- rep('W', total_cups*5/6) # enumerate win object with winning cups
lose <- rep('L', total_cups*1/6) # enumertae lose object with losing cups
ga <- c(win, lose) # group lose-win cups

c_win <- 0 #counter for number of winning cups
c_lose <- 0 #counter for number of losing cups

kirkland <- sample(ga, 8000, replace=FALSE) # simulate getting 

for (i in 1:length(win)) {
    c_win = c_win + 1 # count winning cups
}

for (i in 1:length(lose)) {
  c_lose = c_lose + 1 #count losing cups
}

c_win # print n0 of winning cups
c_lose # print n0 of losing cups

### NEW CASE ##

if (c_win + c_lose == total_cups){print('yes')} # verify given theoretical data

c_win <- 0 #reset var
c_lose <- 0

for (i in 1:length(kirkland)) {
  if (kirkland[i] == 'W'){
    c_win <- c_win + 1
  }
  else {
    c_lose <- c_lose + 1
  }
}

print("winning cups @ kirkland: ")
print(c_win)
print("losing cups @ kirkland: ")
print(c_lose)

##################################
pbinom(8000, 1300, 1/6)
x <- 0:8000
plot(x, pbinom(x,1300,1/6), type='h')

#################################
# let k=1:1300
# p[X=1] = 1/6
# P[X=0] = 5/6

prob_winning <- function() {
  p_k <- 0
  for (k in 1:1300) {
    p_k <- p_k+length(combn(1300, k))*((1/6)^k)*((5/6)^(1300-k))
    print(p_k)
  }
  return(p_k)
}

pk <- prob_winning()
print(pk)

