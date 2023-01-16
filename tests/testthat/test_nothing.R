describe("Test all is ready", {
  it("Return one", {
    expected <- 1
    obtained <- return_one()
    expect_equal(expected, obtained)
  })
})

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
  expected_hash <- "4ae09d45eac4aa08d013b5f2e01c67f6"
  file <- "/workdir/LICENSE"
  expect_true(is_the_right_hash(expected_hash, file))
})
