const { Router } = require('express')

const recipeController = require("../controllers/recipe")

recipeRouter = Router()

recipeRouter.get('/', recipeController.index)
recipeRouter.get('/:name', recipeController.show)


module.exports = recipeRouter