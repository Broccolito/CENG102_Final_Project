get_directory = function(){
  args <- commandArgs(trailingOnly = FALSE)
  file <- "--file="
  rstudio <- "RStudio"
  
  match <- grep(rstudio, args)
  if(length(match) > 0){
    return(dirname(rstudioapi::getSourceEditorContext()$path))
  }else{
    match <- grep(file, args)
    if (length(match) > 0) {
      return(dirname(normalizePath(sub(file, "", args[match]))))
    }else{
      return(dirname(normalizePath(sys.frames()[[1]]$ofile)))
    }
  }
}

setwd(get_directory())

load("Antoine_Equation.rda")
load("heat_capacity_gas.rda")
load("heat_capacity_liquid.rda")
load("heat_capacity_solid.rda")
load("property.rda")

antoine = function(A,B,C,temp){
  return(
    exp(A - (B/(temp + C)))
  )
}

antoine_c = function(chemical,temp){
  A = chemical[1]
  B = chemical[2]
  C = chemical[3]
  return(
    exp(A - (B/(temp + C)))
  )
}

pitzer = function(temp, temp_c, p, pc, w){
  tr = temp/temp_c
  pr = p/pc
  b0 = 0.083 - (0.422/tr^1.6)
  b1 = 0.139 - (0.177/tr^4.2)
  z = 1 + (b0 + w*b1) * (pr/tr)
  return(z)
}

rackett = function(temp, vc, zc, tc){
  return(
    vc * (zc^(1-(temp/tc))^(2/7))
  )
}
