const Recipe = require('../models/Recipe');

exports.index = async (req, res) => {
  try {
    const recipes = await Recipe.getAll();
    res.json(recipes);
  } catch (err) {
    res.status(500).json({ error: 'Failed to fetch recipes' });
  }
};

exports.show = async (req, res) => {
  try {
    const recipe = await Recipe.getById(req.params.id);
    if (!recipe) return res.status(404).json({ error: 'Recipe not found' });
    res.json(recipe);
  } catch (err) {
    res.status(500).json({ error: 'Failed to fetch recipe' });
  }
};
