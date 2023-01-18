#!/usr/bin/env bash

# ✅
# ❌

#########################################################################
#
#   Fichier de test de l'exercice 1
#
#########################################################################

# Cas nominal 1 : 5 => 5s

echo ------------------------------------------------------------------
echo "Test nominal 1 : 5 affiche 5s"
echo ------------------------------------------------------------------
# Valeurs du test
PARAMETER=5
EXPECTED_VALUE=5s
RECEIVED_VALUE=$(./exo_1.sh $PARAMETER)

if [[ "$EXPECTED_VALUE" = "$RECEIVED_VALUE" ]]; then
    echo "✅ Test réussi"
else
    echo "❌ Test raté ! (valeur attendue : [$EXPECTED_VALUE], valeur reçue : [$RECEIVED_VALUE] )"
fi
