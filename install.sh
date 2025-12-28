#!/bin/bash

# Script di Installazione Plasma6ConfigurationSaver
# Questo script scarica e installa il plasmoid Plasma6ConfigurationSaver

set -e  # Esci su qualsiasi errore

echo "Scaricando il plasmoid Plasma6ConfigurationSaver..."

# Scarica l'archivio del plasmoid (sostituisci con URL reale quando ospitato)
# Per ora, usando un placeholder - l'utente deve sostituire con URL reale della release GitHub
PLASMOID_URL="https://github.com/xAlcahest/Plasma6ConfigurationSaver/releases/download/v1.0/plasma_config_saver.tar.gz"

curl -L "$PLASMOID_URL" -o /tmp/plasma_config_saver.tar.gz

echo "Estraendo il plasmoid..."

# Estrai nella directory temporanea
tar -xzf /tmp/plasma_config_saver.tar.gz -C /tmp

echo "Installando il plasmoid..."

# Installa usando kpackagetool6
kpackagetool6 --install /tmp/Plasma6ConfigurationSaver

echo "Pulendo i file temporanei..."

# Pulisci
rm /tmp/plasma_config_saver.tar.gz
rm -rf /tmp/Plasma6ConfigurationSaver

echo "Installazione del plasmoid Plasma6ConfigurationSaver completata!"
echo ""
echo "Per utilizzare il plasmoid:"
echo "1. Clicca con il tasto destro sul pannello o sul desktop"
echo "2. Seleziona 'Aggiungi widget' o 'Aggiungi plasmoidi'"
echo "3. Cerca 'Plasma Configuration Saver'"
echo "4. Trascinalo sul pannello o sul desktop"
echo ""
echo "⚠️  Avvertimento: Questa è una versione sperimentale. Salva il tuo lavoro prima di usarla."
echo "   Se i pannelli o lo sfondo spariscono, esegui: systemctl --user restart plasma-plasmashell"