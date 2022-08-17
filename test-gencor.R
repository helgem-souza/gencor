library(gencor)

test_that(desc = "gencor$Matrix object is a matrix", {

  expect_equal(class(gencor()$Matrix)[1], "matrix")

})

test_that(desc = "All generated values belongs to interval [-1,1]", {

  expect_true(all((gencor()$Matrix %>% as.vector %>% abs) >= 0 &
                (gencor()$Matrix %>% as.vector %>% abs) <= 1))

})
