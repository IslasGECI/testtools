describe("Get version of the module", {
  it("The version is 0.1.0", {
    expected_version <- c("0.1.0")
    obtained_version <- packageVersion("testtools")
    version_are_equal <- expected_version == obtained_version
    expect_true(version_are_equal)
  })
})

describe("check if exists a file", {
  it("The file exists", {
    expect_true(exist_output_file("/workdir/README.md"))
  })
  it("The file not exists", {
    expect_false(exist_output_file("/workdir/wereeeee.md"))
  })
})

describe("is the right hash", {
  license_hash <- "4ae09d45eac4aa08d013b5f2e01c67f6"
  license_path <- "/workdir/LICENSE"
  expect_true(is_the_right_hash(license_hash, license_path))
  coverage_path <- "/workdir/tests/testthat/coverage.R"
  expect_false(is_the_right_hash(license_hash, coverage_path))
  coverage_hash <- "835e5108a7a502189ba9988e449124fc"
  expect_true(is_the_right_hash(coverage_hash, coverage_path))
  wrong_path <- "/workdir/coverage.R"
  expect_error(is_the_right_hash(coverage_hash, wrong_path))
})

describe("Delete file", {
  file_path <- "file_to_delete.txt"
  expect_false(file.exists(file_path))
  write("nothing", file_path)
  expect_true(file.exists(file_path))
  delete_output_file(file_path)
  expect_false(file.exists(file_path))
})
