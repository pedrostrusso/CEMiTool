context('new_cem')

data(expr)
data(sample_annot)

cem0 <- new_cem()
cem1 <- new_cem(expr)
cem2 <- new_cem(expr, sample_annot)

test_that('objects constructed are of class CEMiTool', {
	expect_is(cem0, 'CEMiTool')
	expect_is(cem1, 'CEMiTool')
	expect_is(cem2, 'CEMiTool')
})

test_that('objects constructed receive the expected data', {
	expect_identical(expr, expr_data(cem2))
	expect_identical(sample_annot, sample_annotation(cem2))
})


