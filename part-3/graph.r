require(plotly)
# setwd("~/dev/r-project-2019/results/") # For personal macOS dev env (MacBook)
# setwd("C:/Users/Nogamioka/Desktop/dev/r-project-2019/results/") # For personal Windows dev env (Desktop)
# setwd("~/dev/r-project-2019/results/") # For personal Windows dev env (Laptop)

# !!! Only use for macOS graphical image exporting !!!
if (!require("processx")) install.packages("processx")
orca(p, "tmrca-results.png")
#-----------------------------------

df <- read.csv("results.csv")

x <- list(title = "Iteration #")
y <- list(title = "TMRCA")

p <- plot_ly(data = df, x = ~c(1:25)) %>%
    add_trace(y = ~vector_100, name = "n = 100", marker = list(symbol = "circle"), mode="lines+markers", size = 5, line = list(width=1)) %>%
    add_trace(y = ~vector_1000, name = "n = 1000", marker = list(symbol = "diamond"), mode="lines+markers", size = 5, line = list(width=1)) %>%
    add_trace(y = ~vector_4000, name = "n = 4000", marker = list(symbol = "square-dot"), mode="lines+markers", size = 5, line = list(width=1)) %>%
    add_trace(y = ~vector_5000, name = "n = 5000", marker = list(symbol = "x"), mode="lines+markers", size = 5, line = list(width=1)) %>%
    add_trace(y = ~vector_10000, name = "n = 10000", marker = list(symbol = "triangle-up"), mode="lines+markers", size = 5, line = list(width=1)) %>%
    layout(xaxis = x, yaxis = y, title="Estimation of Time to Most Recent Common Ancestor Depending on Population Size")

    # add_trace(y = ~vector_100, name = "n = 100", marker = list(color = "rgb(52, 235, 168)", symbol = "circle"), mode="lines+markers") %>%
    # add_trace(y = ~vector_1000, name = "n = 1000", marker = list(color = "rgb(151, 48, 230)", symbol = "diamond"), mode="lines+markers") %>%
    # add_trace(y = ~vector_4000, name = "n = 4000", marker = list(color = "rgb(219, 155, 50)", symbol = "square-dot"), mode="lines+markers") %>%
    # add_trace(y = ~vector_5000, name = "n = 5000", marker = list(color = "rgb(49, 214, 63)", symbol = "x"), mode="lines+markers") %>%
    # add_trace(y = ~vector_10000, name = "n = 10000", marker = list(color = "rgb(214, 51, 51)", symbol = "triangle-up"), mode="lines+markers") %>%

mean_100 <- mean(df$vector_100)
mean_1000 <- mean(df$vector_1000)
mean_4000 <- mean(df$vector_4000)
mean_5000 <- mean(df$vector_5000)
mean_10000 <- mean(df$vector_10000)

mean_list <- list(mean_100, mean_1000, mean_4000, mean_5000, mean_10000)

plot(x = c(1:5), y = mean_list)
