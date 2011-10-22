
/* BASE DI CONOSCENZA DEL SISTEMA ESPERTO BRISCOLINT */
:-dynamic
lista/1,
lista_briscola/1,
carte_utente/1,
carte_cpu/1,
carte_cpu1/1,
carte_semi_cpu/1,
carte_nomi_cpu/1,
carte_entity_cpu/1,
carta_utente/2,
carta_cpu/2,
carte_punteggi_utente/1,
carte_punteggi_cpu/1,
chi_ha_tirato/1.

chi_ha_tirato(1).


/* Punteggi carte */
ha_punteggio(a,11).
ha_punteggio(3,10).
ha_punteggio(re,4).
ha_punteggio(cavallo,3).
ha_punteggio(donna,2).
ha_punteggio(7,0).
ha_punteggio(6,0).
ha_punteggio(5,0).
ha_punteggio(5,0).
ha_punteggio(4,0).
ha_punteggio(2,0).

/* regole di priorità dell'asso */
ha_presa_maggiore(a,3).
ha_presa_maggiore(a,re).
ha_presa_maggiore(a,cavallo).
ha_presa_maggiore(a,donna).
ha_presa_maggiore(a,7).
ha_presa_maggiore(a,6).
ha_presa_maggiore(a,5).
ha_presa_maggiore(a,4).
ha_presa_maggiore(a,2).

/* regole di priorità del due Il due non ha nessuna presa su nessuna carta */


/* regole di priorità del tre */
ha_presa_maggiore(3,re).
ha_presa_maggiore(3,cavallo).
ha_presa_maggiore(3,donna).
ha_presa_maggiore(3,7).
ha_presa_maggiore(3,6).
ha_presa_maggiore(3,5).
ha_presa_maggiore(3,4).
ha_presa_maggiore(3,2).

/* regole di priorità del quattro */
ha_presa_maggiore(4,2).

/* regole di priorità del cinque */
ha_presa_maggiore(5,4).
ha_presa_maggiore(5,2).

/* regole di priorità del sei */
ha_presa_maggiore(6,5).
ha_presa_maggiore(6,4).
ha_presa_maggiore(6,2).

/* regole di priorità del sette */

ha_presa_maggiore(7,6).
ha_presa_maggiore(7,5).
ha_presa_maggiore(7,4).
ha_presa_maggiore(7,2).

/* regole di priorità della donna */
ha_presa_maggiore(donna,7).
ha_presa_maggiore(donna,6).
ha_presa_maggiore(donna,5).
ha_presa_maggiore(donna,4).
ha_presa_maggiore(donna,2).

/* regole di priorità del cavallo */
ha_presa_maggiore(cavallo,donna).
ha_presa_maggiore(cavallo,7).
ha_presa_maggiore(cavallo,6).
ha_presa_maggiore(cavallo,5).
ha_presa_maggiore(cavallo,4).
ha_presa_maggiore(cavallo,2).

/* regole di priorità del re */
ha_presa_maggiore(re,cavallo).
ha_presa_maggiore(re,donna).
ha_presa_maggiore(re,7).
ha_presa_maggiore(re,6).
ha_presa_maggiore(re,5).
ha_presa_maggiore(re,4).
ha_presa_maggiore(re,2).

/*maching numeri carte  */
mach_carta(1,a,denari).
mach_carta(2,2,denari).
mach_carta(3,3,denari).
mach_carta(4,4,denari).
mach_carta(5,5,denari).
mach_carta(6,6,denari).
mach_carta(7,7,denari).
mach_carta(8,donna,denari).
mach_carta(9,cavallo,denari).
mach_carta(10,re,denari).
mach_carta(11,a,bastoni).
mach_carta(12,2,bastoni).
mach_carta(13,3,bastoni).
mach_carta(14,4,bastoni).
mach_carta(15,5,bastoni).
mach_carta(16,6,bastoni).
mach_carta(17,7,bastoni).
mach_carta(18,donna,bastoni).
mach_carta(19,cavallo,bastoni).
mach_carta(20,re,bastoni).
mach_carta(21,a,coppe).
mach_carta(22,2,coppe).
mach_carta(23,3,coppe).
mach_carta(24,4,coppe).
mach_carta(25,5,coppe).
mach_carta(26,6,coppe).
mach_carta(27,7,coppe).
mach_carta(28,donna,coppe).
mach_carta(29,cavallo,coppe).
mach_carta(30,re,coppe).
mach_carta(31,a,spade).
mach_carta(32,2,spade).
mach_carta(33,3,spade).
mach_carta(34,4,spade).
mach_carta(35,5,spade).
mach_carta(36,6,spade).
mach_carta(37,7,spade).
mach_carta(38,donna,spade).
mach_carta(39,cavallo,spade).
mach_carta(40,re,spade).

/* DEFINIZIONE LISTA CARTE NAPOLETANE
definizione della lista che contiene tutte le 40 carte del mazzo */
/*lista([[a,denari],[2,denari],[3,denari],[4,denari],[5,denari],[6,denari],[7,denari],[donna,denari],[cavallo,denari],[re,denari],
[a,bastoni],[2,bastoni],[3,bastoni],[4,bastoni],[5,bastoni],[6,bastoni],[7,bastoni],[donna,bastoni],[cavallo,bastoni],[re,bastoni],
[a,coppe],[2,coppe],[3,coppe],[4,coppe],[5,coppe],[6,coppe],[7,coppe],[donna,coppe],[cavallo,coppe],[re,coppe],
[a,spade],[2,spade],[3,spade],[4,spade],[5,spade],[6,spade],[7,spade],[donna,spade],[cavallo,spade],[re,spade]]).*/
/*predicato per richiamare facilmente la lista delle carte da gioco */
chiama_lista(X):-lista(X).
lista([[a,denari],[2,denari],[3,denari],[4,denari],[5,denari],[6,denari],[7,denari],[donna,denari]]).
%
/* lista carte di appoggio per controllare  che le carte siano queste
definizione della lista che contiene tutte le 40 carte del mazzo */
lista_controlla([[a,denari],[2,denari],[3,denari],[4,denari],[5,denari],[6,denari],[7,denari],[donna,denari],[cavallo,denari],[re,denari],[a,bastoni],
[2,bastoni],[3,bastoni],[4,bastoni],[5,bastoni],[6,bastoni],[7,bastoni],[donna,bastoni],[cavallo,bastoni],[re,bastoni],
[a,coppe],[2,coppe],[3,coppe],[4,coppe],[5,coppe],[6,coppe],[7,coppe],[donna,coppe],[cavallo,coppe],[re,coppe],
[a,spade],[2,spade],[3,spade],[4,spade],[5,spade],[6,spade],[7,spade],[donna,spade],[cavallo,spade],[re,spade]]).
/*predicato per richiamare facilmente la lista delle carte da gioco */
chiama_lista_controlla(X):-lista_controlla(X).

/* lista delle carte che rappresentano i carichi */
carichi([a,3]).
/*predicato per richiamare facilmente la lista dei carichi */
chiama_lista_carichi(X):-carichi(X).

/*lista delle carte che rappresentano i punticini */
punticini([donna,cavallo,re]).
/*predicato per richiamare facilmente la lista dei punticini */
chiama_lista_punticini(X):-punticini(X).

/* lista delle carte che rappresentano i lisci */
lisci([2,4,5,6,7]).
/*predicato per richiamare facilmente la lista dei lisci*/
chiama_lista_lisci(X):-lisci(X).

/* lista contenente la carta di briscola */
lista_briscola([[]]).
/* lista delle carte che vengono assegnate alla cpu */
carte_utente([]).
/* lista delle carte che vengono assegnate alla cpu */
carte_cpu([]).
/* lista di appoggio */
carte_cpu1([]).
/* lista dei semi delle carte che vengono assegnate alla cpu */
carte_semi_cpu([]).
/* lista dei nomi delle carte che vengono assegnate alla cpu */
carte_nomi_cpu([]).
/* lista dei nomi delle carte che vengono assegnate alla cpu */
carte_entity_cpu([]).
/* lista dei punteggi delle carte che vengono assegnate alla cpu */
carte_punteggi_cpu([0]).
/* lista dei punteggi delle carte che vengono assegnate all'utente */
carte_punteggi_utente([0]).
/*predicato per richiamare facilmente  la lista della carta di briscola */
chiama_lista_briscola(X):-lista_briscola(X).
/*predicato per richiamare facilmente  la lista delle carte possedute dalla cpu */
chiama_lista_carte_utente(X):-carte_utente(X).
/*predicato per richiamare facilmente  la lista delle carte possedute dalla cpu */
chiama_lista_carte_cpu(X):-carte_cpu(X).
/*predicato per richiamare facilmente la lista di appoggio*/
chiama_lista_carte_cpu1(X):-carte_cpu1(X).
/*predicato per richiamare facilmente la lista dei semi delle carte possedute dalla cpu*/
chiama_lista_carte_semi_cpu(X):-carte_semi_cpu(X).
/*predicato per richiamare facilmente la lista dei nomidelle carte possedute dalla cpu*/
chiama_lista_carte_nomi_cpu(X):-carte_nomi_cpu(X).
/*predicato per richiamare facilmente la lista dei nomidelle carte possedute dalla cpu*/
chiama_lista_carte_entity_cpu(X):-carte_entity_cpu(X).
/*predicato per richiamare facilmente la lista dei punteggi carte possedute dalla cpu*/
chiama_lista_carte_punteggi_cpu(X):-carte_punteggi_cpu(X).
/*predicato per richiamare facilmente la lista dei punteggi carte possedute dall'utente*/
chiama_lista_carte_punteggi_utente(X):-carte_punteggi_utente(X).


/*------------------------FUNZIONI PARTICOALRI DEL DOMINIO CHE RICHIAMANO LE REGOLE GENERALI DEL MOTORE INFERENZIALE-------------------------------------*/

%
/* caso particolare per eliminare una carta dalla lista di carte da gioco */
canc_carta(Pos):-chiama_lista(L),canc_ele_lista(L,L1,Pos),retract(lista(L)),assert(lista(L1)).

/* caso particolare per eliminare una carta dalla lista di carte possedute dalla cpu */
canc_carta_cpu(Pos):-chiama_lista_carte_cpu(L),canc_ele_lista(L,L1,Pos),retract(carte_cpu(L)),assert(carte_cpu(L1)),assert(carte_cpu1(L)).

/* caso particolare per eliminare una carta dalla lista di carte possedute dalla cpu */
canc_carta_utente(Pos):-chiama_lista_carte_utente(L),canc_ele_lista(L,L1,Pos),retract(carte_utente(L)),assert(carte_utente(L1)).
/* caso particolare aggiungi carta alla lista mano della cpu */
add_ele_lista_carte_cpu(E):-chiama_lista_carte_cpu(L),add_ele_lista_testa(E,L,L1),retract(carte_cpu(L)),assert(carte_cpu(L1)).

/* caso particolare aggiungi carta alla lista mano dell' utente */
add_ele_lista_carte_utente(E):-chiama_lista_carte_utente(L),add_ele_lista_testa(E,L,L1),retract(carte_utente(L)),assert(carte_utente(L1)).

/*caso particolare aggiungi carta dalla lista dei semi poseduti dalla cpu*/
%add_ele_lista_carte_semi_cpu(E):-chiama_lista_carte_semi_cpu(L),add_ele_lista_testa(E,L,L1),retract(carte_semi_cpu(L)),assert(carte_semi_cpu(L1)).

/*caso particolare aggiungi carta dalla lista dei punteggi poseduti dalla cpu*/
add_ele_lista_punteggio_mano_cpu(E):-chiama_lista_carte_punteggi_cpu(L),add_ele_lista_testa(E,L,L1),retract(carte_punteggi_cpu(L)),assert(carte_punteggi_cpu(L1)).

/*caso particolare aggiungi carta dalla lista dei punteggi poseduti dall'utente*/
add_ele_lista_punteggio_mano_utente(E):-chiama_lista_carte_punteggi_utente(L),add_ele_lista_testa(E,L,L1),retract(carte_punteggi_utente(L)),assert(carte_punteggi_utente(L1)).

/*caso particolare legge dalla lista carte */
leggi_lista_carte(Pos,X):-chiama_lista(L),leggi_lista(X,L,Pos).

/*caso particolare legge in base alla posizione che gli si passa l'elemento dalle carte possedute dalla cpu */
leggi_lista_carte_mano(Pos,X):-chiama_lista_carte_cpu(L),leggi_lista(X,L,Pos).

/*caso particolare legge in base alla posizione che gli si passa l'elemento dalle carte possedute dalla cpu */
leggi_lista_carte_semi(Pos,X):-chiama_lista_carte_semi_cpu(L),leggi_lista(X,L,Pos).

/* caso particolare per leggere una carta dalla lista di carte possedute dalla cpu */
%leggi_lista_mano_cpu(Pos,X):-chiama_lista_carte_cpu(L),leggi_lista(X,L,Pos).

/* funzione che genera un seme  ,append(Ls,[Y],L1),*/
genera_seme_cpu(Pos):-chiama_lista_carte_cpu(_),leggi_lista_carte_mano(Pos,X),leggi_lista(Y,X,2),chiama_lista_carte_semi_cpu(Ls),add_ele_lista_testa(Y,Ls,L1),retract(carte_semi_cpu(Ls)),assert(carte_semi_cpu(L1)).

/* funzione ricorsiva che genera i semi a seconda del numero di elementi della lista passata*/
genera_semi_cpu(1):-genera_seme_cpu(1),!.
genera_semi_cpu(N):-genera_seme_cpu(N),N1 is N-1,genera_semi_cpu(N1).  

/* funzione che genera un nome*/
genera_nome_cpu(Pos):-chiama_lista_carte_cpu(_),leggi_lista_carte_mano(Pos,X),leggi_lista(Y,X,1),chiama_lista_carte_nomi_cpu(Ls),add_ele_lista_testa(Y,Ls,L1),retract(carte_nomi_cpu(Ls)),assert(carte_nomi_cpu(L1)).

/* funzione ricorsiva che genera i semi a seconda del numero di elementi della lista passata*/
genera_nomi_cpu(1):-genera_nome_cpu(1),!.
genera_nomi_cpu(N):-genera_nome_cpu(N),N1 is N-1,genera_nomi_cpu(N1). 

/* funzione che genera un entity*/
genera_entity_cpu(Pos):-chiama_lista_carte_cpu(_),leggi_lista_carte_mano(Pos,X),leggi_lista(Y,X,1),controlla_carta(Y,Tipocarta),chiama_lista_carte_entity_cpu(Ls),add_ele_lista_testa(Tipocarta,Ls,L1),retract(carte_entity_cpu(Ls)),assert(carte_entity_cpu(L1)).

/* funzione ricorsiva che genera le entity a seconda del numero di elementi della lista passata*/
genera_entitys_cpu(1):-genera_entity_cpu(1),!.
genera_entitys_cpu(N):-genera_entity_cpu(N),N1 is N-1,genera_entitys_cpu(N1). 
	
	/*funzione che controlla la carta che gli si passa in input nella forma [a,denari] e restituisce 1 2 3 a seconda che sia carico punticino o liscio*/
	controlla_carta(Pippo,1):-chiama_lista_carichi(Lcarichi),member(Pippo,Lcarichi),!.
	controlla_carta(Pippo,2):-chiama_lista_punticini(Lpunt),member(Pippo,Lpunt),!.
	controlla_carta(Pippo,3):-chiama_lista_lisci(Llisci),member(Pippo,Llisci).




pos_lista_carte_mano(Pos,X):-chiama_lista_carte_semi_cpu(L),pos_lista(X,L,Pos).

pos_lista_carte_utente(Pos,X):-chiama_lista_carte_utente(L),pos_lista(X,L,Pos).

pos_lista_carte_entity(Pos,X):-chiama_lista_carte_entity_cpu(L),pos_lista(X,L,Pos).


/*-------------------------------------------------------------REGOLE CHE GESTISCONO IL GIOCO ------------------------------------------------------------------*/
%
/* 1 regola go che parte dal motore inferenziale */
	%
	/* 1.1 pescaggio della carta che definisce la briscola della partita*/
	carta_briscola(Carta):-random(Carta),write('la carta scelta come briscola per la partita è : '),mach_carta(Carta,C,S),assert(briscola(C,S)),write(C),write(' di '),write(S),retract(lista_briscola([[]])),assert(lista_briscola([[C,S]])),canc_carta(Carta).

	/* 1.2 pescaggio random di una carta dal mazzo per il giocatore */
	assegna_carta_utente(Carta):-lun(N),N>0,!,random(Carta),leggi_lista_carte(Carta,Cartaseme),write(Cartaseme),add_ele_lista_carte_utente(Cartaseme),canc_carta(Carta).
	/*carte terminate quindi assegna l'ultima carta al giocatore con id 1 */
	assegna_carta_utente(Carta):-assegna_ultima_carta(1).

		/* 1.2.1 regola per l'assegnamento delle ultime carte una delle quali è la carta di briscola*/
		assegna_ultima_carta(Chi):-Chi==1,!,chiama_lista_briscola(L),leggi_lista(Cartaseme,L,1),write(Cartaseme),add_ele_lista_carte_utente(Cartaseme).
		assegna_ultima_carta(Chi):-chiama_lista_briscola(L),leggi_lista(Cartaseme,L,1),add_ele_lista_carte_cpu(Cartaseme).

	/* 1.3 pescaggio random di una carta dal mazzo per la cpu */
	assegna_carta_cpu(Carta):-lun(N),N>0,!,random(Carta),leggi_lista_carte(Carta,Cartaseme),write(Cartaseme),add_ele_lista_carte_cpu(Cartaseme),canc_carta(Carta).
	/*carte terminate quindi assegna l'ultima carta alla cpu con id 2 */
	assegna_carta_cpu(Carta):-assegna_ultima_carta(2).

	
/* 2 regola che definisce la singola  mano della partita viene scelta la regola a seconda di chi ha vinto la mano precedente la prima volta sceglie la prima regola*/
mano(Chi_ha_tirato):-retract(chi_ha_tirato(X)),assert(chi_ha_tirato(Chi_ha_tirato)),nl,nl,butta_giocatore,nl,attendi_cpu,carta_scelta_cpu.
mano1(Chi_ha_tirato):-retract(chi_ha_tirato(X)),assert(chi_ha_tirato(Chi_ha_tirato)),nl,nl,attendi_cpu,carta_scelta_cpu_primo.

	/* 2.1 regola che permette all'utente di scegliere la carta da buttare nel suo turno */
	butta_giocatore:-write('GIOCATORE: Scegli la carta da buttare a terra SINTASSI[nomecarta.semecarta.] '),mostra_briscola,nl,write('Carta: '),read(Cartanome),nl,write('Seme: '),read(Cartaseme),check_carta(Cartanome,Cartaseme),check_carta_giocatore(Cartanome,Cartaseme),carta_scelta_utente(Cartanome,Cartaseme).

		/* 2.1.1 regola che mostra la carta di briscola della partita*/
		mostra_briscola:-briscola(C,S),write('----- Ricorda la briscola della partita è: '),write(C),write('  di '),write(S),write(' -----').
		
		/* 2.1.2 regola che controlla che la carta esista nel mazzo */
		check_carta(Cartanome,Cartaseme):-chiama_lista_controlla(L),member([Cartanome,Cartaseme],L),!.
		check_carta(_,_):-chi_ha_tirato(X),write('La carta scelta non è una carta valida'),X==1,!,mano(1).
		check_carta(_,_):-chi_ha_tirato(X),write('La carta scelta non è una carta valida'),X==2,!,mano1(2).
		
		/* 2.1.3 regola che controlla che la carta scelta dal gicoatore sia effettivamente tra le carte in mano del giocatore*/
		check_carta_giocatore(Cartanome,Cartaseme):-chiama_lista_carte_utente(L),member([Cartanome,Cartaseme],L),!.
		check_carta_giocatore(_,_):-chi_ha_tirato(X),write('La carta scelta non è in mano'),X==1,!,mano(1).
		check_carta_giocatore(_,_):-chi_ha_tirato(X),write('La carta scelta non è in mano'),X==2,!,mano1(2).
	
		/* 2.1.4 regola che mostra la carta scelta dal giocatore nel suo turno*/
		carta_scelta_utente(Cartanome,Cartaseme):-nl,write('GIOCATORE BUTTA: '),write(Cartanome),write(' di '),write(Cartaseme),assert(carta_utente(Cartanome,Cartaseme)).

	/* 2.2 regola per far attendere la cpu prima di fare qualsiasi mossa */
	attendi_cpu:-nl,write('STO PENSANDO...'),nl,loop(9119000).

	/* 2.3 funzione che regola la scelta della carta dalla cpu secondo la strategia facile butta dopo la carta del giocatore risponde prima con una carta dello stesso seme poi una briscola poi un liscio poi un punticino poi un carico */
	carta_scelta_cpu:-lun_cpu(N),genera_semi_cpu(N),genera_nomi_cpu(N),genera_entitys_cpu(N),butta_carta_prende.
		/* 2.3.1 butta la carta dipendentemente dalla carta buttata dal giocatore*/
		
		butta_carta_prende:-lun(N),N>0,!,butta_carta_prende_continua.
		butta_carta_prende_continua:-carta_utente(_,Cartaseme),pos_lista_carte_mano(Pos,Cartaseme),!,leggi_lista_carte_mano(Pos,X),nl,write('CPU PRENDE risponde seme: '),write(X),leggi_lista(Carta,X,1),leggi_lista(Seme,X,2),assert(carta_cpu(Carta,Seme)),chi_prende_dopo_giocatore(Chi),nl,nl,write('ATTENDERE CARICO PROSSIMA MANO'),loop(10000000),elimina_carte_scartate(Pos),carta_utente(C,S),retract(carta_utente(C,S)),retract(carta_cpu(Carta,Seme)),pesca_carte(Chi).
		
		butta_carta_prende:-lun(N),N>0,!,butta_carta_prende_continua.
		butta_carta_prende_continua:-briscola(_,Semecarta),pos_lista_carte_mano(Pos,Semecarta),!,leggi_lista_carte_mano(Pos,X),nl,write('CPU PRENDE briscola: '),write(X),leggi_lista(Carta,X,1),leggi_lista(Seme,X,2),assert(carta_cpu(Carta,Seme)),chi_prende_dopo_giocatore(Chi),nl,nl,write('ATTENDERE CARICO PROSSIMA MANO'),loop(10000000),elimina_carte_scartate(Pos),carta_utente(C,S),retract(carta_utente(C,S)),retract(carta_cpu(Carta,Seme)),pesca_carte(Chi).
		
		butta_carta_prende:-lun(N),N>0,!,butta_carta_prende_continua.
		butta_carta_prende_continua:-pos_lista_carte_entity(Pos,3),!,leggi_lista_carte_mano(Pos,X),nl,write('CPU PRENDE liscio: '),write(X),leggi_lista(Carta,X,1),leggi_lista(Seme,X,2),assert(carta_cpu(Carta,Seme)),chi_prende_dopo_giocatore(Chi),nl,nl,write('ATTENDERE CARICO PROSSIMA MANO'),loop(10000000),elimina_carte_scartate(Pos),carta_utente(C,S),retract(carta_utente(C,S)),retract(carta_cpu(Carta,Seme)),pesca_carte(Chi).
		
		butta_carta_prende:-lun(N),N>0,!,butta_carta_prende_continua.
		butta_carta_prende_continua:-pos_lista_carte_entity(Pos,2),!,leggi_lista_carte_mano(Pos,X),write('CPU PRENDE punticini: '),write(X),leggi_lista(Carta,X,1),leggi_lista(Seme,X,2),assert(carta_cpu(Carta,Seme)),chi_prende_dopo_giocatore(Chi),nl,nl,write('ATTENDERE CARICO PROSSIMA MANO'),loop(10000000),elimina_carte_scartate(Pos),carta_utente(C,S),retract(carta_utente(C,S)),retract(carta_cpu(Carta,Seme)),pesca_carte(Chi).
		
		butta_carta_prende:-lun(N),N>0,!,butta_carta_prende_continua.
		butta_carta_prende_continua:-pos_lista_carte_entity(Pos,1),leggi_lista_carte_mano(Pos,X),nl,write('CPU PRENDE carico: '),write(X),leggi_lista(Carta,X,1),leggi_lista(Seme,X,2),assert(carta_cpu(Carta,Seme)),chi_prende_dopo_giocatore(Chi),nl,nl,write('ATTENDERE CARICO PROSSIMA MANO'),loop(10000000),elimina_carte_scartate(Pos),carta_utente(C,S),retract(carta_utente(C,S)),retract(carta_cpu(Carta,Seme)),pesca_carte(Chi).
		
		butta_carta_prende:-butta_carta_prende_ultime.
			/* 2.3.1.1 funzione alternativa che regola la scelta della carta della cpu secondo la strategia facile ... entra solo e soltanto se sono terminate le carte dal mazzo da assegnare alla cpu */
			butta_carta_prende_ultime:-write('1a'),lun_cpu(N),N>0,!,butta_carta_prende_ultime_continua.
			butta_carta_prende_ultime_continua:-write('aa'),carta_utente(_,Cartaseme),pos_lista_carte_mano(Pos,Cartaseme),!,leggi_lista_carte_mano(Pos,X),nl,write('CPU PRENDE risponde seme ultime: '),write(X),leggi_lista(Carta,X,1),leggi_lista(Seme,X,2),assert(carta_cpu(Carta,Seme)),chi_prende_dopo_giocatore(Chi),nl,nl,write('ATTENDERE CARICO PROSSIMA MANO'),loop(10000000),elimina_carte_scartate(Pos),carta_utente(C,S),retract(carta_utente(C,S)),retract(carta_cpu(Carta,Seme)),non_pesca_carte(Chi).
			
			butta_carta_prende_ultime:-write('2a'),lun_cpu(N),N>0,!,butta_carta_prende_ultime_continua.
			butta_carta_prende_ultime_continua:-write('bb'),briscola(_,Semecarta),pos_lista_carte_mano(Pos,Semecarta),!,leggi_lista_carte_mano(Pos,X),nl,write('CPU PRENDE briscola ultime: '),write(X),leggi_lista(Carta,X,1),leggi_lista(Seme,X,2),assert(carta_cpu(Carta,Seme)),chi_prende_dopo_giocatore(Chi),nl,nl,write('ATTENDERE CARICO PROSSIMA MANO'),loop(10000000),elimina_carte_scartate(Pos),carta_utente(C,S),retract(carta_utente(C,S)),retract(carta_cpu(Carta,Seme)),non_pesca_carte(Chi).
			
			butta_carta_prende_ultime:-write('3a'),lun_cpu(N),N>0,!,butta_carta_prende_ultime_continua.
			butta_carta_prende_ultime_continua:-write('cc'),pos_lista_carte_entity(Pos,3),!,leggi_lista_carte_mano(Pos,X),nl,write('CPU PRENDE liscio ultime: '),write(X),leggi_lista(Carta,X,1),leggi_lista(Seme,X,2),assert(carta_cpu(Carta,Seme)),chi_prende_dopo_giocatore(Chi),nl,nl,write('ATTENDERE CARICO PROSSIMA MANO'),loop(10000000),elimina_carte_scartate(Pos),carta_utente(C,S),retract(carta_utente(C,S)),retract(carta_cpu(Carta,Seme)),non_pesca_carte(Chi).
			
			butta_carta_prende_ultime:-write('4a'),lun_cpu(N),N>0,!,butta_carta_prende_ultime_continua.
			butta_carta_prende_ultime_continua:-write('dd'),pos_lista_carte_entity(Pos,2),!,leggi_lista_carte_mano(Pos,X),write('CPU PRENDE punticini ultime: '),write(X),leggi_lista(Carta,X,1),leggi_lista(Seme,X,2),assert(carta_cpu(Carta,Seme)),chi_prende_dopo_giocatore(Chi),nl,nl,write('ATTENDERE CARICO PROSSIMA MANO'),loop(10000000),elimina_carte_scartate(Pos),carta_utente(C,S),retract(carta_utente(C,S)),retract(carta_cpu(Carta,Seme)),non_pesca_carte(Chi).
			
			butta_carta_prende_ultime:-write('5a'),lun_cpu(N),N>0,!,pos_lista_carte_entity(Pos,1),leggi_lista_carte_mano(Pos,X),nl,write('CPU PRENDE carico ultime: '),write(X),leggi_lista(Carta,X,1),leggi_lista(Seme,X,2),assert(carta_cpu(Carta,Seme)),chi_prende_dopo_giocatore(Chi),nl,nl,write('ATTENDERE CARICO PROSSIMA MANO'),loop(10000000),elimina_carte_scartate(Pos),carta_utente(C,S),retract(carta_utente(C,S)),retract(carta_cpu(Carta,Seme)),non_pesca_carte(Chi).
			

	/* 2.4 scelta della carta dalla cpu secondo la strategia facile butta per prima la cpu butta prima lisci poi punticini poi una carta di briscola ed infine i carichi che possiede */
	carta_scelta_cpu_primo:-lun_cpu(N),genera_semi_cpu(N),genera_nomi_cpu(N),genera_entitys_cpu(N),butta_carta_scegli.
		/* 2.4.1 butta la carta dipendentemente dalla carta buttata dal giocatore*/
		
		butta_carta_scegli:-lun(N),N>0,!,butta_carta_scegli_continua.
			butta_carta_scegli_continua:-briscola(_,Semecarta),pos_lista_carte_mano(Pos,Semecarta),!,butta_carta_scegli_continua_continua(Pos,Semecarta).
				butta_carta_scegli_continua_continua(Pos,Semecarta):-leggi_lista_carte_mano(Pos,X),leggi_lista(Carta,X,1),leggi_lista(Seme,X,2),nl,write('CPU BUTTA briscola: '),write(X),nl,leggi_lista(Carta,X,1),leggi_lista(Seme,X,2),assert(carta_cpu(Carta,Seme)),nl,butta_giocatore,chi_prende_dopo_giocatore(Chi),nl,nl,write('ATTENDERE CARICO PROSSIMA MANO'),loop(10000000),elimina_carte_scartate(Pos),carta_utente(C,S),retract(carta_utente(C,S)),retract(carta_cpu(Carta,Seme)),pesca_carte(Chi).
		
		butta_carta_scegli:-lun(N),N>0,!,butta_carta_scegli_continua.
			butta_carta_scegli_continua:-pos_lista_carte_entity(Pos,3),!,butta_carta_scegli_continua_continua(Pos).
				butta_carta_scegli_continua_continua(Pos):-briscola(Cartabriscola,Semebriscola),leggi_lista_carte_mano(Pos,X),nl,leggi_lista(Carta,X,1),leggi_lista(Seme,X,2),!,write('CPU BUTTA liscio: '),write(X),nl,assert(carta_cpu(Carta,Seme)),nl,butta_giocatore,chi_prende_dopo_giocatore(Chi),nl,nl,write('ATTENDERE CARICO PROSSIMA MANO'),loop(10000000),elimina_carte_scartate(Pos),carta_utente(C,S),retract(carta_utente(C,S)),retract(carta_cpu(Carta,Seme)),pesca_carte(Chi).
		
		butta_carta_scegli:-lun(N),N>0,!,butta_carta_scegli_continua.
			butta_carta_scegli_continua:-pos_lista_carte_entity(Pos,2),!,butta_carta_scegli_continua_continuaa(Pos).
				butta_carta_scegli_continua_continuaa(Pos):-briscola(Cartabriscola,Semebriscola),leggi_lista_carte_mano(Pos,X),leggi_lista(Carta,X,1),leggi_lista(Seme,X,2),write('arriveo'),!,write('CPU BUTTA punticini: '),write(X),nl,assert(carta_cpu(Carta,Seme)),nl,butta_giocatore,chi_prende_dopo_giocatore(Chi),nl,nl,write('ATTENDERE CARICO PROSSIMA MANO'),loop(10000000),elimina_carte_scartate(Pos),carta_utente(C,S),retract(carta_utente(C,S)),retract(carta_cpu(Carta,Seme)),pesca_carte(Chi).
		
		butta_carta_scegli:-lun(N),N>0,!,butta_carta_scegli_continua.
			butta_carta_scegli_continua:-pos_lista_carte_entity(Pos,1),leggi_lista_carte_mano(Pos,X),nl,write('CPU BUTTA carico: '),write(X),nl,leggi_lista(Carta,X,1),leggi_lista(Seme,X,2),assert(carta_cpu(Carta,Seme)),nl,butta_giocatore,chi_prende_dopo_giocatore(Chi),nl,nl,write('ATTENDERE CARICO PROSSIMA MANO'),loop(10000000),elimina_carte_scartate(Pos),carta_utente(C,S),retract(carta_utente(C,S)),retract(carta_cpu(Carta,Seme)),pesca_carte(Chi).
		
		butta_carta_scegli:-butta_carta_scegli_ultime.
			/* 2.4.1.1 funzione alternativa che regola la scelta della carta della cpu secondo la strategia facile ... entra solo e soltanto se sono terminate le carte dal mazzo da assegnare alla cpu */
			butta_carta_scegli_ultime:-write('1b'),lun_utente(N),N>0,!,butta_carta_scegli_ultime_continua.
			butta_carta_scegli_ultime_continua:-write('ee'),briscola(_,Semecarta),pos_lista_carte_mano(Pos,Semecarta),!,leggi_lista_carte_mano(Pos,X),nl,write('CPU BUTTA briscola ultime: '),write(X),nl,leggi_lista(Carta,X,1),leggi_lista(Seme,X,2),assert(carta_cpu(Carta,Seme)),nl,butta_giocatore,chi_prende_dopo_giocatore(Chi),nl,nl,write('ATTENDERE CARICO PROSSIMA MANO'),loop(10000000),elimina_carte_scartate(Pos),carta_utente(C,S),retract(carta_utente(C,S)),retract(carta_cpu(Carta,Seme)),non_pesca_carte(Chi).
			
			butta_carta_scegli_ultime:-write('2b'),lun_utente(N),N>0,!,butta_carta_scegli_ultime_continua.
			butta_carta_scegli_ultime_continua:-write('ff'),briscola(Cartabriscola,Semebriscola),pos_lista_carte_entity(Pos,3),!,leggi_lista_carte_mano(Pos,X),nl,leggi_lista(Carta,X,1),leggi_lista(Seme,X,2),Semebriscola\==Seme,!,write('CPU BUTTA liscio ultime: '),write(X),nl,assert(carta_cpu(Carta,Seme)),nl,butta_giocatore,chi_prende_dopo_giocatore(Chi),nl,nl,write('ATTENDERE CARICO PROSSIMA MANO'),loop(10000000),elimina_carte_scartate(Pos),carta_utente(C,S),retract(carta_utente(C,S)),retract(carta_cpu(Carta,Seme)),non_pesca_carte(Chi).
			
			butta_carta_scegli_ultime:-write('3b'),lun_utente(N),N>0,!,butta_carta_scegli_ultime_continua.
			butta_carta_scegli_ultime_continua:-write('gg'),briscola(Cartabriscola,Semebriscola),pos_lista_carte_entity(Pos,2),!,leggi_lista_carte_mano(Pos,X),leggi_lista(Carta,X,1),leggi_lista(Seme,X,2),Semebriscola\==Seme,!,write('CPU BUTTA punticini ultime: '),write(X),nl,assert(carta_cpu(Carta,Seme)),nl,butta_giocatore,chi_prende_dopo_giocatore(Chi),nl,nl,write('ATTENDERE CARICO PROSSIMA MANO'),loop(10000000),elimina_carte_scartate(Pos),carta_utente(C,S),retract(carta_utente(C,S)),retract(carta_cpu(Carta,Seme)),non_pesca_carte(Chi).
			
			butta_carta_scegli_ultime:-write('4b'),lun_utente(N),N>0,!,butta_carta_scegli_ultime_continua.
			butta_carta_scegli_ultime_continua:-write('hh'),pos_lista_carte_entity(Pos,1),leggi_lista_carte_mano(Pos,X),nl,write('CPU BUTTA carico ultime: '),write(X),nl,leggi_lista(Carta,X,1),leggi_lista(Seme,X,2),assert(carta_cpu(Carta,Seme)),nl,butta_giocatore,chi_prende_dopo_giocatore(Chi),nl,nl,write('ATTENDERE CARICO PROSSIMA MANO'),loop(10000000),elimina_carte_scartate(Pos),carta_utente(C,S),retract(carta_utente(C,S)),retract(carta_cpu(Carta,Seme)),non_pesca_carte(Chi).
			

				/* 2.4.1.1.1 funzione che stabilisce chi dopo una mano iniziata dal giocatore ha priorità nel pescaggio delle carte e deciderà chi sarà il giocatore, tra utente e cpu, che dovrà iniziare la seconda mano*/
				%
				/* controlla se qualcuno ha la briscola nel caso fai i confronti sulle carte*/
				chi_prende_dopo_giocatore(Chi):-write('1c'),briscola(Cartabriscola,Semebriscola),carta_cpu(Cartacpu,Semecpu),carta_utente(Cartautente,Semeutente),Semecpu==Semebriscola,!,chi_prende_dopo_giocatore_continua(Chi,Semeutente,Semebriscola).
					chi_prende_dopo_giocatore_continua(Chi,Semeutente,Semebriscola):-write('a'),Semeutente==Semebriscola,!,continua(Chi). 
						continua(cpu):-carta_cpu(Cartacpu,Semecpu),carta_utente(Cartautente,Semeutente),nl,ha_presa_maggiore(Cartacpu,Cartautente),!,write('VINCE LA CPU hanno tutti e due briscola ma la briscola della cpu è piu alta '),attribuisci_punteggio_cpu,riepilogo_punteggio.
						continua(gio):-nl,carta_cpu(Cartacpu,Semecpu),carta_utente(Cartautente,Semeutente),nl,ha_presa_maggiore(Cartautente,Cartacpu),!,write('VINCE IL GIOCATORE hanno tutti e due briscola ma la briscola del giocatore è piu alta '),attribuisci_punteggio_utente,riepilogo_punteggio.

				chi_prende_dopo_giocatore(Chi):-write('2c'),briscola(Cartabriscola,Semebriscola),carta_cpu(Cartacpu,Semecpu),carta_utente(Cartautente,Semeutente),Semecpu==Semebriscola,!,chi_prende_dopo_giocatore_continua(Chi,Semeutente,Semebriscola).
					chi_prende_dopo_giocatore_continua(Chi,Semeutente,Semebriscola):-write('b'),Semeutente==Semebriscola,!,continua1(Chi). 
						continua1(gio):-nl,carta_cpu(Cartacpu,Semecpu),carta_utente(Cartautente,Semeutente),nl,ha_presa_maggiore(Cartautente,Cartacpu),!,write('VINCE IL GIOCATORE hanno tutti e due briscola ma la briscola del giocatore è piu alta '),attribuisci_punteggio_utente,riepilogo_punteggio.
						continua1(cpu):-carta_cpu(Cartacpu,Semecpu),carta_utente(Cartautente,Semeutente),nl,ha_presa_maggiore(Cartacpu,Cartautente),!,write('VINCE LA CPU hanno tutti e due briscola ma la briscola della cpu è piu alta '),attribuisci_punteggio_cpu,riepilogo_punteggio.

				chi_prende_dopo_giocatore(Chi):-write('3c'),briscola(Cartabriscola,Semebriscola),carta_cpu(Cartacpu,Semecpu),carta_utente(Cartautente,Semeutente),Semecpu==Semebriscola,Semeutente\==Semebriscola,!,chi_prende_dopo_giocatore_continua(Chi).
					chi_prende_dopo_giocatore_continua(cpu,Semeutente,Semebriscola):-write('c'),nl,write('VINCE LA CPU ha la briscola '),attribuisci_punteggio_cpu,riepilogo_punteggio.
				
				chi_prende_dopo_giocatore(gio):-write('4c'),briscola(Cartabriscola,Semebriscola),carta_cpu(Cartacpu,Semecpu),carta_utente(Cartautente,Semeutente),Semecpu\==Semebriscola,Semeutente==Semebriscola,!,nl,write('VINCE IL GIOCATORE ha la briscola '),attribuisci_punteggio_utente,riepilogo_punteggio.
	
				/* 2.4.1.1.1 controlla se hanno i semi uguali o diversi in tal caso fai i confronti sulle carte*/
				chi_prende_dopo_giocatore(Chi):-write('5c'),carta_cpu(Cartacpu,Semecpu),carta_utente(Cartautente,Semeutente),Semecpu==Semeutente,!,chi_prende_dopo_giocatore_continua1(Cartacpu,Cartautente,Chi).
					chi_prende_dopo_giocatore_continua1(Cartacpu,Cartautente,cpu):-write('d'),ha_presa_maggiore(Cartacpu,Cartautente),!,nl,write('VINCE LA CPU hanno tutti e due lo stesso seme ma la carta della cpu è piu alta '),attribuisci_punteggio_cpu,riepilogo_punteggio.
				
				chi_prende_dopo_giocatore(Chi):-write('6c'),carta_cpu(Cartacpu,Semecpu),carta_utente(Cartautente,Semeutente),Semecpu==Semeutente,!,chi_prende_dopo_giocatore_continua1(Cartacpu,Cartautente,Chi).
					chi_prende_dopo_giocatore_continua1(Cartacpu,Cartautente,gio):-write('e'),ha_presa_maggiore(Cartautente,Cartacpu),nl,write('VINCE IL GIOCATORE hanno tutti e due lo stesso seme ma la carta dell utente è piu alta '),attribuisci_punteggio_utente,riepilogo_punteggio.
				
				chi_prende_dopo_giocatore(gio):-write('7c'),carta_cpu(Cartacpu,Semecpu),carta_utente(Cartautente,Semeutente),Semecpu\==Semeutente,chi_ha_tirato(Chi_ha_tirato),Chi_ha_tirato==1,!,nl,write('VINCE IL GIOCATORE semi differenti '),attribuisci_punteggio_utente,riepilogo_punteggio.
				chi_prende_dopo_giocatore(cpu):-write('8c'),carta_cpu(Cartacpu,Semecpu),carta_utente(Cartautente,Semeutente),Semecpu\==Semeutente,chi_ha_tirato(Chi_ha_tirato),Chi_ha_tirato==2,!,nl,write('VINCE LA CPU semi differenti '),attribuisci_punteggio_cpu,riepilogo_punteggio.
				chi_prende_dopo_giocatore(gio):-write('9c'),carta_utente(Cartanome,Cartaseme),carta_cpu(Cartanomec,Cartasemec),chi_ha_tirato(Chi_ha_tirato),Chi_ha_tirato==1,!,nl,write('VINCE IL GIOCATORE cpu non risponde al seme '),attribuisci_punteggio_utente,riepilogo_punteggio.
				chi_prende_dopo_giocatore(cpu):-write('10c'),carta_utente(Cartanome,Cartaseme),carta_cpu(Cartanomec,Cartasemec),chi_ha_tirato(Chi_ha_tirato),Chi_ha_tirato==2,!,nl,write('VINCE LA CPU il giocatore non risponde al seme '),attribuisci_punteggio_cpu,riepilogo_punteggio.
	
					/* 2.4.1.1.1.1 calcola punteggio cpu */
					attribuisci_punteggio_cpu:-carta_cpu(Cartacpu,Semecpu),carta_utente(Cartautente,Cartautenteseme),ha_punteggio(Cartautente,Punteggioutente),ha_punteggio(Cartacpu,Punteggiocpu),Punteggiomano is Punteggioutente+Punteggiocpu,add_ele_lista_punteggio_mano_cpu(Punteggiomano).
					attribuisci_punteggio_utente:-carta_cpu(Cartacpu,Semecpu),carta_utente(Cartautente,Cartautenteseme),ha_punteggio(Cartautente,Punteggioutente),ha_punteggio(Cartacpu,Punteggiocpu),Punteggiomano is Punteggioutente+Punteggiocpu,add_ele_lista_punteggio_mano_utente(Punteggiomano).

					/* 2.4.1.1.1.2 stampa il riepilogo dei punteggi */
					riepilogo_punteggio:-nl,nl,write('RIEPILOGO PUNTEGGI--------------------------------------------------------------------------------------------------- GIOCATORE: '),chiama_lista_carte_punteggi_utente(L1),somma_punteggi(L1,Punteggioutente),write(Punteggioutente),
					write('   CPU: '),chiama_lista_carte_punteggi_cpu(L2),somma_punteggi(L2,Punteggiocpu),write(Punteggiocpu).

		/* 2.5 regola che elimina dal mazzo le carte scartate e ripulisce le liste della cpu */
		elimina_carte_scartate(Pos):-elimina_carta_utente,elimina_carta_cpu(Pos),elimina_carta_semi,elimina_carta_nomi,elimina_carta_entitys.

			/* 2.5.1 regola che elimina le 2 carte giocate dalle liste del giocatore e della cpu*/
			elimina_carta_utente:-carta_utente(Nomecarta,Semecarta),pos_lista_carte_utente(Pos,[Nomecarta,Semecarta]),canc_carta_utente(Pos).
			elimina_carta_cpu(Pos):-canc_carta_cpu(Pos).
			elimina_carta_semi:-retract(carte_semi_cpu(_)),assert(carte_semi_cpu([])).  
			elimina_carta_nomi:-retract(carte_nomi_cpu(_)),assert(carte_nomi_cpu([])).  
			elimina_carta_entitys:-retract(carte_entity_cpu(_)),assert(carte_entity_cpu([])). 
	
		/* 2.6 regola che pesca 2 carte una per il giocatore ed una per la cpu scegliendo l'ordine in base a chi ha vinto nella mano precedente*/
		pesca_carte(Chi):-Chi==gio,!,nl,write('ASSEGNO CARTE AI GIOCATORI ATTENDERE PREGO'),nl,nl,write('CARTA GIOCATORE PESCATA: '),assegna_carta_utente(_),write('   '),loop(10000000),write('CARTA CPU PESCATA: '),loop(10000000),assegna_carta_cpu(_),mostra_carte,mano(1).
		pesca_carte(Chi):-nl,write('ASSEGNO CARTE AI GIOCATORI ATTENDERE PREGO'),nl,nl,write('CARTA CPU PESCATA: '),assegna_carta_cpu(_),write('   '),loop(10000000),write('CARTA GIOCATORE PESCATA: '),loop(10000000),assegna_carta_utente(_),mostra_carte,mano1(2).

		/* 2.7 regola che porta al termine la partita una volta che sono terminate le carte dal mazzo */
		non_pesca_carte(Chi):-Chi==gio,!,non_pesca_carte_continua.
			non_pesca_carte_continua:-not(check_fine_partita),mostra_carte,mano(1).
		
		non_pesca_carte(Chi):-Chi==cpu,!,non_pesca_carte_continuaa.
			non_pesca_carte_continuaa:-not(check_fine_partita),mostra_carte,mano1(2).
		
			non_pesca_carte_continua:-nl,nl,write('----------------------------------FINE PARTITA!!---------------------------------'),chi_ha_vinto,!.
			non_pesca_carte_continuaa:-nl,nl,write('----------------------------------FINE PARTITA!!---------------------------------'),chi_ha_vinto,!.
				
			/* 2.7.1 terminazione della partita */
			check_fine_partita:-lun_utente(N),N==0,lun_cpu(M),M==0.	
			%	
			/* 2.7.2 regola che mostra un riepilogo delle carte del giocatore e della cpu*/
			mostra_carte:-nl,nl,write('RIEPILOGO CARTE GIOCATORE: '),nl,carte_utente(C),write(C),nl,nl,write('RIEPILOGO CARTE CPU: '),nl,carte_cpu(Cp),write(Cp).

			/* 2.7.3 regole per scoprire chi ha vinto la partita contando e confrontando i punteggi realizzati */
			chi_ha_vinto:-chiama_lista_carte_punteggi_utente(L1),somma_punteggi(L1,Punteggioutente),chiama_lista_carte_punteggi_cpu(L2),somma_punteggi(L2,Punteggiocpu),Punteggioutente>Punteggiocpu,!,write(' BRAVO HAI VINTO!!'),!.
			chi_ha_vinto:-chiama_lista_carte_punteggi_utente(L1),somma_punteggi(L1,Punteggioutente),chiama_lista_carte_punteggi_cpu(L2),somma_punteggi(L2,Punteggiocpu),Punteggioutente<Punteggiocpu,!,write(' BRAVO HAI PERSO!!'),!.
			chi_ha_vinto:-chiama_lista_carte_punteggi_utente(L1),somma_punteggi(L1,Punteggioutente),chiama_lista_carte_punteggi_cpu(L2),somma_punteggi(L2,Punteggiocpu),Punteggioutente==Punteggiocpu,!,write(' PAREGGIO!!'),!.
