viveEn(mansionDreadbury, tiaAgatha).
viveEn(mansionDreadbury, elCarnicero).
viveEn(mansionDreadbury, charles).

loOdia(charles, Victima):-
	viveEn(mansionDreadbury, Victima),
	not(loOdia(tiaAgatha, Victima)).

loOdia(tiaAgatha, Victima):-
	viveEn(mansionDreadbury, Victima),
	Victima \= elCarnicero.

loOdia(elCarnicero, Victima):-
	loOdia(tiaAgatha, Victima).


esMasRico(Persona, tiaAgatha):-
	viveEn(mansionDreadbury, Persona),
	not(loOdia(elCarnicero, Persona)).

loMata(Matador, Victima):-
	loOdia(Matador, Victima),
	viveEn(mansionDreadbury, Matador),
	not(esMasRico(Matador, Victima)).

/*  1)
	?- loMata(Quien, tiaAgatha).	-> Quien = tiaAgatha (se suicidó!?)
	
	2)
	?- loOdia(_, milhouse).			-> false
	?- loOdia(charles, Quien).		-> Quien = elCarnicero.
	?- loOdia(Quien, tiaAgatha).	-> Quien = tiaAgatha ; Quien = elCarnicero.
	?- loOdia(Odiador, Odiado).		-> Odiador = charles, Odiado = elCarnicero ;
									   Odiador = Odiado, Odiado = tiaAgatha ;
									   Odiador = tiaAgatha, Odiado = charles ;
									   Odiador = elCarnicero, Odiado = tiaAgatha ;
									   Odiador = elCarnicero, Odiado = charles,
	?- loOdia(elCarnicero, _).		-> true

	ejercicio extra:
	esArgentinoOUruguayo(UnaPersona):-
		nacionalidad(UnaPersona, uruguaya).

	esArgentinoOUruguayo(UnaPersona):-
		nacionalidad(UnaPersona, argentina).

	esRioplatense(UnaObra):-
		escribio(UnaPersona, UnaObra),
		esArgentinoOUruguayo(UnaPersona).
*/