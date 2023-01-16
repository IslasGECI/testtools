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

is_the_right_hash <- function(expected_hash, file) {
  return(TRUE)
}