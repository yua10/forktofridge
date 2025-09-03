
DROP TABLE IF EXISTS recipe;

CREATE TABLE recipe (
    recipe_id INT GENERATED ALWAYS AS IDENTITY,
    name TEXT NOT NULL,
    cuisine TEXT NOT NULL,
    main_ingredient TEXT NOT NULL,
    cooking_time INTEGER NOT NULL, -- in minutes
    difficulty TEXT NOT NULL,
    CONSTRAINT cuisine_check CHECK (
        cuisine IN ('Asian', 'European', 'North American', 'African', 'Oceanian', 'South American', 'Middle Eastern')
    ),
    CONSTRAINT ingredient_check CHECK (
        main_ingredient IN ('Beef', 'Chicken', 'Pork', 'Fish', 'Seafood', 'Vegetables', 'Legumes', 'Grains', 'Lamb', 'Tofu')
    ),
    CONSTRAINT difficulty_check CHECK (
        difficulty IN ('Easy', 'Medium', 'Hard')
    )
);

INSERT INTO recipe (name, cuisine, main_ingredient, cooking_time, difficulty) VALUES
('Spaghetti Carbonara', 'European', 'Pork', 25, 'Medium'),
('Chicken Tikka Masala', 'Asian', 'Chicken', 45, 'Medium'),
('Beef Tacos', 'North American', 'Beef', 30, 'Easy'),
('Vegetable Stir Fry', 'Asian', 'Vegetables', 20, 'Easy'),
('Grilled Salmon', 'European', 'Fish', 35, 'Medium'),
('Lamb Tagine', 'African', 'Lamb', 90, 'Hard'),
('Tofu Buddha Bowl', 'Asian', 'Tofu', 25, 'Easy');
