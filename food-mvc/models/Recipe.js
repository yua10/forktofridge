const db = require('../db/connect');

const Recipe = {
  getAll: async () => {
    const result = await db.query('SELECT * FROM recipe');
    return result.rows;
  },
  getById: async (id) => {
    const result = await db.query('SELECT * FROM recipe WHERE recipe_id = $1', [id]);
    return result.rows[0];
  },
};

module.exports = Recipe;
