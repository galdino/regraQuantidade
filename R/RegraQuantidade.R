#' Predicao da regra de quantidade
#'
#' Essa funcao faz a predicao, de acordo com os paremetros, se certo atendimento e aprovado ou nao na regra de quantidade.
#' @param codServMedHosp, qtdeServMedHospPermitida, qtdeServMedHosp, qtdeDiasUltimaSolicitacao.
#' @return Aprovado ou Reprovado.
#' @export
#' @examples
#' regraQuantidade(1010101, 2, 1, 5)
regraQuantidade <- function(codServMedHosp, qtdeServMedHospPermitida, qtdeServMedHosp, qtdeDiasUltimaSolicitacao){
    ### setwd("C:\\Users\\t01por0117\\Documents") ###
    ### Get prediction ###
    load("modelo")
    newdata5 <- data.frame(codServMedHosp = codServMedHosp, qtdeServMedHospPermitida = qtdeServMedHospPermitida, qtdeServMedHosp = qtdeServMedHosp, qtdeDiasUltimaSolicitacao = qtdeDiasUltimaSolicitacao)
    pred5 <- predict(modelo, newdata5, type = "prob")
    ### pred5[1,2] ###
    return(ifelse (pred5[1,2] >= 0.95, "Aprovado","Nao aprovado"))
}