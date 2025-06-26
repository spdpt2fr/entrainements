# Configuration pour Supabase

## 📋 Étapes de configuration

### 1. Créer un projet Supabase
1. Aller sur https://supabase.com
2. Créer un compte gratuit
3. Cliquer sur "New Project"
4. Choisir un nom : `suivi-entrainements`
5. Choisir un mot de passe sécurisé
6. Sélectionner une région proche (Europe West par exemple)
7. Attendre la création (2-3 minutes)

### 2. Récupérer les clés API
1. Dans le dashboard Supabase, aller dans **Settings > API**
2. Copier :
   - **URL** : `https://xxxxx.supabase.co`
   - **anon public** : `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...`

### 3. Configurer l'application
1. Ouvrir le fichier `index.html`
2. Remplacer aux lignes 244-245 :
   ```javascript
   const SUPABASE_URL = 'https://YOUR_PROJECT_ID.supabase.co';
   const SUPABASE_ANON_KEY = 'YOUR_ANON_KEY';
   ```
   Par vos vraies clés.

### 4. Créer la table en base
Aller dans **SQL Editor** de Supabase et exécuter :

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

-- Activer Row Level Security (optionnel)
ALTER TABLE workouts ENABLE ROW LEVEL SECURITY;

-- Politique pour permettre toutes les opérations (pour commencer)
CREATE POLICY "Permettre toutes les opérations" ON workouts
    FOR ALL USING (true);
```

### 5. Vérifier la configuration
1. Ouvrir l'application dans un navigateur
2. Le statut doit afficher "🟢 Synchronisé"
3. Ajouter une séance de test
4. Vérifier dans Supabase > Table Editor que la donnée apparaît

## 🔧 Variables d'environnement (optionnel)
Pour plus de sécurité en production, vous pouvez utiliser des variables d'environnement sur Netlify.

## 🚨 Sécurité
- Les clés `anon` sont publiques et c'est normal
- La sécurité se fait via Row Level Security de Supabase
- Pour une app avec utilisateurs, ajoutez l'authentification Supabase