predicted <- predict(tree, ptitanic[1:10,], type="class")
table(ptitanic$survived[1:10,], predicted)