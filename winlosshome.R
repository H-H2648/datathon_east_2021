win <- 8381
tie <- 4628
loss <- 5234
expected_win <- 18243*13507/36666
expected_tie <- 18243*9652/36666
expected_loss <- 18243 * 13507/36666
lambda <- 2*(win * log(win/expected_win) + tie * log(tie/expected_tie) + loss * log(loss/expected_loss))
qchisq(0.95,df=1)
pval <- pchisq(lambda,df=1, lower.tail = FALSE)
pval
