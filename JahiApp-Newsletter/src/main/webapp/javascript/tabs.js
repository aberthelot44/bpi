/*

Auteur : Laurent BRACQUART <lbracquart@atalan.fr>
URL : http://atalan.fr/
Date de création : 12 septembre 2012
Version : 1.0

Index :

    0/ Gestion de l'affichage des onglets en ARIA

    Annexes/ Fonctions annexes

*/

$(document).ready(function()
{
	// 0/ Gestion de l'affichage des onglets en ARIA
	$onglets = $('.tabs > ul');
	$panneaux = $('.tabs .tab');
    
	$panneaux
		.attr(
		{
			'role':			'tabpanel' /*,
			'tabindex':		'0'*/
		})
		.not(':first')
			.hide();
	
	$onglets
		.attr('role', 'tablist')
		.find('li')
			.each(function()
			{
				$this = $(this);
				
				$this.attr(
				{
					'role':				'tab',
					'aria-selected':	'false',
					'aria-controls':	$this.find('a').attr('href').replace('#', '')
				})
			})			
			.on('click', function(e)
			{
				$this = $(this);

				$panneaux
					.hide();

				$this
					.attr('aria-selected', 'true')
						.find('a')
							.html('<strong>' + $(this).text() + '</strong>')
						.end()
					.siblings()
						.attr('aria-selected', 'false')
						.find('a')
							.each(function()
							{
								$(this).text($(this).text());
							});

				$($this.find('a').attr('href'))
					.show()
					.focus();

				e.preventDefault();
			})
			.first()
				.attr('aria-selected', 'true')
				.find('a')
					.wrapInner('<strong>');
	
});

// Annexes/ Fonctions annexes