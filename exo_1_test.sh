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


# Cas nominal 2 : 75 => 1m15s

echo ------------------------------------------------------------------
echo "Test nominal 2 : 75 affiche 1m15s"
echo ------------------------------------------------------------------
# Valeurs du test
PARAMETER=75
EXPECTED_VALUE=1m15s
RECEIVED_VALUE=$(./exo_1.sh $PARAMETER)

if [[ "$EXPECTED_VALUE" = "$RECEIVED_VALUE" ]]; then
    echo "✅ Test réussi"
else
    echo "❌ Test raté ! (valeur attendue : [$EXPECTED_VALUE], valeur reçue : [$RECEIVED_VALUE] )"
fi

# Cas nominal 3 : 4000 => 1h6m40s

echo ------------------------------------------------------------------
echo "Test nominal 3 : 4000 affiche 1h6m40s"
echo ------------------------------------------------------------------
# Valeurs du test
PARAMETER=4000
EXPECTED_VALUE=1h6m40s
RECEIVED_VALUE=$(./exo_1.sh $PARAMETER)

if [[ "$EXPECTED_VALUE" = "$RECEIVED_VALUE" ]]; then
    echo "✅ Test réussi"
else
    echo "❌ Test raté ! (valeur attendue : [$EXPECTED_VALUE], valeur reçue : [$RECEIVED_VALUE] )"
fi


# Cas erreur 1 : il manque un paramètre

echo ------------------------------------------------------------------
echo "Test erreur 1 : il manque un paramètre"
echo ------------------------------------------------------------------
# Valeurs du test
PARAMETER=
EXPECTED_VALUE="il manque un paramètre"
RECEIVED_VALUE=$(./exo_1.sh)

if [[ "$EXPECTED_VALUE" = "$RECEIVED_VALUE" ]]; then
    echo "✅ Test réussi"
else
    echo "❌ Test raté ! (valeur attendue : [$EXPECTED_VALUE], valeur reçue : [$RECEIVED_VALUE] )"
fi

# Cas erreur 2 : le paramètre est négatif

echo ------------------------------------------------------------------
echo "Test erreur 2 : erreur, le paramètre est négatif"
echo ------------------------------------------------------------------
# Valeurs du test
PARAMETER=-17
EXPECTED_VALUE="erreur, le paramètre est négatif"
RECEIVED_VALUE=$(./exo_1.sh $PARAMETER)

if [[ "$EXPECTED_VALUE" = "$RECEIVED_VALUE" ]]; then
    echo "✅ Test réussi"
else
    echo "❌ Test raté ! (valeur attendue : [$EXPECTED_VALUE], valeur reçue : [$RECEIVED_VALUE] )"
fi

# Cas erreur 3 : 

echo ------------------------------------------------------------------
echo "Test erreur 3 : erreur, le paramètre n'est pas un nombre"
echo ------------------------------------------------------------------
# Valeurs du test
PARAMETER=titi
EXPECTED_VALUE="erreur, le paramètre n'est pas un nombre"
RECEIVED_VALUE=$(./exo_1.sh $PARAMETER)

if [[ "$EXPECTED_VALUE" = "$RECEIVED_VALUE" ]]; then
    echo "✅ Test réussi"
else
    echo "❌ Test raté ! (valeur attendue : [$EXPECTED_VALUE], valeur reçue : [$RECEIVED_VALUE] )"
fi