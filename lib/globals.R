# Add any project specific configuration here.
add.config(
  apply.override = FALSE
)

# Add project specific configuration that can be overridden from load.project()
add.config(
  apply.override = TRUE
)
add.config(
  tidy_data = TRUE
)

tidy_data <- function(data_dir){
  
  ## delete html files
  html_files <- list.files(data_dir, pattern = "\\.html$")
  for(f in html_files){
    file.remove(file.path(data_dir,f))
    info(logger, paste(f, "has been deleted in data file.", sep=" "))
  }
  
  
  ## delete pdf files
  pdf_files <- list.files(data_dir, pattern = "\\.pdf$")
  for(f in pdf_files){
    file.remove(file.path(data_dir,f))
    info(logger, paste(f, "has been deleted in data file.", sep=" "))
  }
  
  
  # organize csv
  csv_files <- list.files(data_dir, pattern = "\\.csv$")
  for(f in csv_files ){
    
    is_matched = grep("^cyber-security-[0-9]+_.*", f, value=TRUE) ## find regex
    
    # is match with our pattern
    if(length(is_matched)>0){
      run_id =  substring(f, 16, 16)
      run_folder = file.path(data_dir, paste("run_", run_id, sep=""))
      
      if (!dir.exists(run_folder)){
        dir.create(run_folder)
      } 
      ## move file to new directory
      old_file_path = file.path(data_dir,f)
      new_file_path = file.path(run_folder,substring(f, 18))
      file.rename(old_file_path,new_file_path)
      
    }
  }
}



if (config$tidy_data){
  tidy_data("data")
}