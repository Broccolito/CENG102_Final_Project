library(readxl)

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

property = read_excel(list.files()[2])
Antoine_Equation = read_excel(list.files()[3])
heat_capacity_gas = read_excel(list.files()[4])
heat_capacity_solid = read_excel(list.files()[5])
heat_capacity_liquid = read_excel(list.files()[6])

save(property, file = "property.rda")
save(Antoine_Equation, file = "Antoine_Equation.rda")
save(heat_capacity_gas,file = "heat_capacity_gas.rda")
save(heat_capacity_solid, file = "heat_capacity_solid.rda")
save(heat_capacity_liquid, file = "heat_capacity_liquid.rda")