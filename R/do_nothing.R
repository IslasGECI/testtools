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
  .check_file(file)
  file_hash <- as.vector(tools::md5sum(file))
  are_equal <- expected_hash == file_hash
  return(are_equal)
}

.check_file <- function(file_path) {
  if (!file.exists(file_path)) {
    stop("File does not exist")
  }
}
