context("f7Badge")

test_that("basic test", {
  badge <- f7Badge("mybadge")
  expect_shinytag(badge)
  expect_equal(badge$name, "span")
  expect_equal(badge$attribs$class, "badge")

  # with color
  badgeColor <- f7Badge("hello", color = "red")
  expect_equal(badgeColor$attribs$class, "badge color-red")
  expect_error(f7Badge("hello", color = "diamonds"))
})
