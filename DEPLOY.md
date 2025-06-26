# 🚀 Guide de déploiement

## Commandes Git pour pousser vers GitHub

Après avoir créé votre dépôt GitHub `suivi-entrainements`, exécutez ces commandes dans le répertoire `web-app` :

```bash
# Initialiser le dépôt Git
git init

# Ajouter tous les fichiers
git add .

# Premier commit
git commit -m "🚀 Version initiale - Application web suivi d'entraînements"

# Ajouter l'origine GitHub (remplacez VOTRE-USERNAME)
git remote add origin https://github.com/VOTRE-USERNAME/suivi-entrainements.git

# Pousser vers GitHub
git push -u origin main
```

## ⚡ Déploiement automatique sur Netlify

### Option 1 : Via GitHub (Recommandé)
1. Aller sur https://netlify.com
2. Se connecter avec GitHub
3. Cliquer "New site from Git"
4. Choisir votre dépôt `suivi-entrainements`
5. Paramètres :
   - **Build command :** (laisser vide)
   - **Publish directory :** (laisser vide ou `.`)
6. Cliquer "Deploy site"
7. Votre app sera en ligne en 2-3 minutes !

### Option 2 : Drag & Drop
1. Aller sur https://netlify.com
2. Glisser-déposer le dossier `web-app` entier
3. L'app est en ligne immédiatement !

## 🔗 Résultat

Vous obtiendrez une URL du type : `https://amazing-name-123456.netlify.app`

## 🎯 Étapes suivantes

1. ✅ Configurer Supabase (voir SUPABASE_CONFIG.md)
2. ✅ Tester l'application en ligne
3. ✅ Personnaliser l'URL Netlify si souhaité
4. ✅ Partager l'URL avec qui vous voulez !

## 🔄 Mises à jour futures

Pour mettre à jour l'app :
```bash
# Modifier les fichiers
# Puis :
git add .
git commit -m "✨ Nouvelle fonctionnalité"
git push
```

Netlify redéploiera automatiquement !