return_one <- function() {
  return(1)
}


exist_output_file <- function(path) {
  file.exists(path)
}


delete_output_file <- function(path) {
  if (exist_output_file(path)) {
    file.remove(path)
  }
}
