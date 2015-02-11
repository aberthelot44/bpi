/**
 * 
 */

/**
 * 	AFFICHER LES MESSAGE D'ERREURS SERVEUR
 */
function afficherMessageErreur(data,validator) {
	errors = {};
	var compt = 0;
	for ( var key in data) {
		errors[key] = data[key];
		compt++;
	}

	if (compt > 0) {
		validator.showErrors(errors);
	}
}

/**
 * 	MUTE LECTEUR AUDIO
 */
function mute(page)
{
	page.getElementById('lecteurAudio').muted =  !page.getElementById('lecteurAudio').muted;	
}


