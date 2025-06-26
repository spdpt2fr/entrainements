# 🗃️ Script SQL pour Supabase

## À exécuter dans SQL Editor de Supabase

```sql
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

-- Activer Row Level Security
ALTER TABLE workouts ENABLE ROW LEVEL SECURITY;

-- Politique pour permettre toutes les opérations (mode simple)
CREATE POLICY "Accès libre" ON workouts
    FOR ALL USING (true);

-- Index pour optimiser les requêtes
CREATE INDEX IF NOT EXISTS idx_workouts_date ON workouts(date DESC);
CREATE INDEX IF NOT EXISTS idx_workouts_created ON workouts(created_at DESC);
```

## ✅ Après exécution :
- Table créée
- Sécurité configurée  
- Performance optimisée
- Prêt pour l'app !

## 🔧 Configuration dans l'app :
1. Récupérer URL et clé depuis Supabase Dashboard > Settings > API
2. Remplacer dans index.html lignes 244-245
3. Redéployer sur Netlify (automatique via GitHub)

## 🧪 Test :
- Statut app : "🟢 Synchronisé"
- Ajouter une séance test
- Vérifier dans Supabase Table Editor