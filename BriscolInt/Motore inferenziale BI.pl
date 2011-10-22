/* MOTORE INFERENZIALE DEL SISTEMA ESPERTO BRISCOLINT */

/* cancellazione dalla lista L l'elemento in posizione Pos e il risultato lo inserisco nella lista L1 canc_ele_lista(L,L1,Pos)
passo base, viene inserito il cut per non permettere al prolog di effettuare backtracking */
canc_ele_lista([_|T],T,1):-!.
/*passo ricorsivo */
canc_ele_lista([H|T],[H|Y],N):-N>1,N1 is N-1,canc_ele_lista(T,Y,N1).

/* aggiunta di un elemento in testa ad una lista add_ele_lista(E,listapartenza,listadestinazione)
passo base*/
add_ele_lista_testa(E,[],[E]):-!.
/*passo ricorsivo*/
add_ele_lista_testa(E,[H|T],[E,H|T]):-!.

/*leggere elemento da una lista passandogli la posizione nella lista leggi_lista(X,[H|T],Pos).
passo base*/
leggi_lista(H,[H|_],1):-!.
/*passo ricorsivo*/
leggi_lista(X,[_|T],Pos):-Pos>1,Pos1 is Pos-1,leggi_lista(X,T,Pos1).

/* data una lista e un elemento da cercare nella lista la funzione restituisce la posizione all'interno della lista pos_lista(X,L,Pos)
passo base*/
pos_lista(X,[X|_],1):-!.
/*passo ricorsivo*/
pos_lista(X,[_|T],P):-pos_lista(X,T,P1),P is P1+1.

/* funzione per sommare elementi di una lista */
somma_punteggi([H],H).
/*passo ricorsivo*/
somma_punteggi([H|T],Acco):-somma_punteggi(T,Acco1),Acco is H+Acco1.

/*funzione random che genera numeri da 1 a 40 in maniera casuale  */
random(Num):-gett(Q),lun(N),Num is (N+1)+floor((1-(N+1))*Q).
gett(X):-get_time(T), X is T-floor(T).

/* OP LISTA regola per determinare la lunghezza della lista di carte lun(lunghezzalista) chiama il predicaro built-in  length del prolog */
lun(N):-chiama_lista(X),length(X,N).

/* OP LISTA regola per determinare la lunghezza della lista di carte lun(lunghezzalista) chiama il predicaro built-in  length del prolog */
lun_utente(N):-chiama_lista_carte_utente(X),length(X,N).

/* OP LISTA regola per determinare la lunghezza della lista di carte lun(lunghezzalista) chiama il predicaro built-in  length del prolog */
lun_cpu(N):-chiama_lista_carte_cpu(X),length(X,N).

/* funzione loop fa attendere il sistema  a seconda del numero N che gli si passa in ingresso loop(N) */
loop(0).
loop(N):-N>0,M is N-1,loop(M).

/* 1 START DEL GIOCO E RICHIAMO DELLA BASE DI CONOSCENZA*/

go:-consult('briscola.pl'),write('Estraggo briscola dal mazzo attendere prego'),nl,nl,loop(3999999),carta_briscola(_),loop(1230467),nl,write('Assegno carte ai giocatori attendere prego'),nl,nl,
write('CARTE GIOCATORE: '),nl,assegna_carta_utente(_),loop(1234678),assegna_carta_utente(_),loop(1304570),assegna_carta_utente(_),nl,nl,loop(3999999),
write('CARTE CPU: '),nl,assegna_carta_cpu(_),loop(1238765),assegna_carta_cpu(_),loop(1328700),assegna_carta_cpu(_),nl,mano(1).
