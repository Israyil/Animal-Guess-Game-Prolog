go :- nl,
      write('Aklinizda bir hayvan tutun.'),
      nl,
      write('Siradaki sorulara sadece yes/no cevalari verin lutden:'),
      nl, nl,
      guess(Animal),
      write('Bu hayvan bir '),
      write(Animal),
      nl,
      undo.

/* test olunmasi gereken hipotezler */
guess(aslan)        :- aslan, !.
guess(geyik)        :- geyik, !.
guess(inek)			:- inek, !.
guess(ayi)        :- ayi, !.
guess(zebra)        :- zebra, !.
guess(at)        :- at, !.
guess(zurafa)      :- zurafa, !.
guess(koyun)        :- koyun, !.
guess(koala)        :- koala, !.
guess(kangaroo)     :- kangaroo, !.
guess(tavshan)       :- tavshan, !.
guess(sincap)     :- sincap, !.
guess(gorilla)      :- gorilla, !.
guess(balina)        :- balina, !.
guess(yunus)      :- yunus, !.
guess(domuz_baligi)     :- domuz_baligi, !.
guess(mors)       :- mors, !.
guess(fok_baligi)         :- fok_baligi, !.
guess(shimpanze)   :- shimpanze, !.
guess(fare)        :- fare, !.
guess(kedi)          :- kedi, !.
guess(kopek)          :- kopek, !.
guess(insan)        :- insan, !.
guess(sahin)         :- sahin, !.
guess(baykus)          :- baykus, !.
guess(guvercin)         :- guvercin, !.
guess(vahsi_guvercin)       :- vahsi_guvercin, !.
guess(penguen)      :- penguen, !.
guess(devekusu)      :- devekusu, !.
guess(tavuk)      :- tavuk, !.
guess(semender)   :- semender, !.
guess(karakurbagasi)         :- karakurbagasi, !.
guess(kurbaga)         :- kurbaga, !.
guess(timsah)    :- timsah, !.
guess(alligator)    :- alligator, !.
guess(tatlisu_kurbagasi)     :- tatlisu_kurbagasi, !.
guess(kaplumbaga)     :- kaplumbaga, !.
guess(yilan)        :- yilan, !.
guess(kertenkele)       :- kertenkele, !.
guess(kopekbaligi)        :- kopek_baligi, !.
guess(yilanbaligi)          :- yilan_baligi, !.
guess(gunesbaligi)      :- gunes_baligi, !.
guess(unknown).             

/* hayvan tanimlama kurallari */
aslan :- sicak_kanli, memeli, etobur, verify(ormanin_krali).
inek:- sicak_kanli, memeli, otobur,toynaklari_var, verify(boynuz).
geyik:- sicak_kanli, memeli, otobur, verify(Noel_babanin_arabasini_ceker).
ayi :- sicak_kanli, memeli, etobur, kahverengi.
zebra :- sicak_kanli, memeli, otobur, toynakli, verify(siyah_cizgili).
at :- sicak_kanli, memeli, otobur, toynakli, verify(rodeoya_ait).
zurafa :- sicak_kanli, memeli, otobur, toynakli, verify(boynu_uzun).
koyun :- sicak_kanli, memeli, otobur, toynakli.
koala :- sicak_kanli, memeli, otobur, keseli, verify(agaclarda_yashar).
kangaroo :- sicak_kanli, memeli, otobur, keseli,ziplar.
tavshan :- sicak_kanli, memeli, otobur, ziplar.
sincap :- sicak_kanli, memeli, otobur, verify(tuylu_kuyrugu_var).
gorilla :- sicak_kanli, memeli, otobur.
balina :- sicak_kanli, memeli, denize_ait, yuzgec, verify(buyuk_bedeni_var).
yunus :- sicak_kanli, memeli, denize_ait, yuzgec, verify(gaga).
domuz_baligi :- sicak_kanli, memeli, denize_ait, yuzgec.
mors :- sicak_kanli, memeli, denize_ait, verify(uzun_dishleri).
fok_baligi :- balik, sicak_kanli, memeli, denize_ait.
shimpanze :- sicak_kanli, memeli, kuyruk, kahverengi, verify(muz_seviyor).
fare :- sicak_kanli, memeli, kuyruk, kahverengi.
kedi :- sicak_kanli,etobur, memeli, kuyruk, verify(miyavlar).
kopek :- sicak_kanli,etobur, memeli, kuyruk, yuzer.
insan :- sicak_kanli, memeli, yuzer.
sahin :- sicak_kanli, uchuyor, avlanir, verify(uzun_kanatlari_var).
baykus :- sicak_kanli, uchuyor, avlanir.
guvercin :- sicak_kanli, uchuyor, verify(barish_temsilcisi).
vahsi_guvercin :- sicak_kanli, uchuyor.
penguen :- sicak_kanli,yuzer, verify(Antarcticada_yashiyor).
devekusu :- sicak_kanli, verify(uzun_boynu_ve_bacaklari_var).
tavuk :- sicak_kanli.
semender :- amfibi, kuyruk.
karakurbagasi :- amfibi, verify(sighilli_kuru_derisi_var).
kurbaga :- amfibi,yuzer, ziplar.
timsah :- surungen,yuzer, guclu_chene, verify(V_shekilli_burnu_var).
alligator :- surungen,yuzer, guclu_chene.
tatlisu_kurbagasi :- surungen, kabuklu,yuzer, verify(suda_kuruda_yashayan).
kaplumbaga :- surungen, kabuklu, yuzer.
yilan :- surungen, verify(surunerek_haraket_eder).
kertenkele :- surungen.
kopekbaligi :- balik, verify(jaws_filminde_bash_rolde).
yilanbaligi :- balik, verify(uzun_yilan_gibi_vucudu_var).
gunesbaligi :- balik, verify(vucudu_yildiza_benzer). 

/* siniflandirma */
yuzer:- verify(yuzer).
ziplar:- verify(ziplayarak_haraket_eder).
etobur :- verify(bashka_hayvanlarla_beslenir).
sicak_kanli :- verify(sicak_kanli).
memeli    :- verify(dishisi_sut_verir).
otobur :- verify(sadece_bitkiyle_beslenir).
amfibi :- verify(suda_hayata_bashlayip_sonradan_cigher_gelishtirir).
surungen :- verify(pullu_ve_ya_sert_kabuklu_derisi_var).
balik :- verify(solungachlari_var).
kuyruk :- verify(kuyrughu_var).
kahverengi :- verify(coghu_zaman_kahverengi_kurku_var).
denize_ait :- verify(denizde_yashar).
yuzgec :- verify(yuzgeci_var).
avlanir :- verify(kucuk_hayvanlarla_beslenir).
toynakli  :- verify(toynaklari_var	).
keseli :- verify(yavrusunu_kesesinde_tashir).
uchuyor :- verify(uchuyor).
guclu_chene :- verify(avlanmak_icin_cok_guclu_chenesini_kjullanir).
kabuklu :- verify(vucuduna_birleshik_sert_kabughu_var).

/* soru sorma  */
ask(Question) :-
    write('Hayvan '),
    write(Question),
    write(' mi? '),
    read(Response),
    nl,
    ( (Response == yes ; Response == y)
      ->
      assert(yes(Question)) ;
       assert(no(Question)), fail).

:- dynamic yes/1,no/1.


verify(S) :-
   (yes(S) 
    ->
    true ;
    (no(S)
     ->
     fail ;
     ask(S))).


undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail.
undo.
