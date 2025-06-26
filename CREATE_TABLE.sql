-- 🗃️ Script SQL pour créer la table workouts dans Supabase
-- À copier-coller dans SQL Editor de votre projet Supabase

-- Créer la table workouts
CREATE TABLE IF NOT EXISTS workouts (
    id SERIAL PRIMARY KEY,
    date DATE NOT NULL,
    activity VARCHAR(50) NOT NULL,
    duration INTEGER NOT NULL,
    intensity VARCHAR(20) NOT NULL,
    distance DECIMAL(5,2) DEFAULT 0,
    calories INTEGER DEFAULT 0,
    notes TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Activer Row Level Security (sécurité)
ALTER TABLE workouts ENABLE ROW LEVEL SECURITY;

-- Politique pour permettre toutes les opérations (mode simple pour commencer)
CREATE POLICY "Accès libre workouts" ON workouts
    FOR ALL USING (true);

-- Index pour optimiser les performances
CREATE INDEX IF NOT EXISTS idx_workouts_date ON workouts(date DESC);
CREATE INDEX IF NOT EXISTS idx_workouts_created ON workouts(created_at DESC);

-- Commentaire pour documentation
COMMENT ON TABLE workouts IS 'Table des séances d''entraînement pour l''application web';