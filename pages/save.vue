<template>
  <v-container>
    <v-card>
      <v-card-text text-xs-justify>
        <h5 class="headline mb-3">
          Zaoszczędź
        </h5>
        <h6 class="title mb-3">Oszczędzanie energii</h6>
        <p>
          Energia oraz surowce energetyczne są w Unii Europejskiej jednymi z
          najdroższych na świecie. Wynika to za równo z braku lub ograniczonych
          zasobów surowcowych na Starym Kontynencie, ale także z polityki
          energetyczno-klimatycznej prowadzonej zarówno przez Unię Europejską,
          jak i poszczególne państwa. Wysokie koszty energii elektrycznej, gazu
          i innych surowców powodują osłabienie konkurencyjności i tym samym
          spowalniają rozwój przemysłu energochłonnego.
        </p>
        <p>
          Izba Energetyki Przemysłowej i Odbiorców Energii skupia się na
          prowadzeniu działań zmierzających do zredukowania kosztów energii dla
          jej Członków. Z jednej strony IEPiOE promuje prowadzanie rozwiązań
          liberalizujących rynki, dywersyfikujących źródła dostaw, a tym samym
          dających pozytywne impulsy cenowe.
        </p>
        <p>
          Wiedza i doświadczenie Członków IEPiOE oraz konkretne przykłady wpływu
          opracowywanych rozwiązań na przedsiębiorstwa pozawala Nam wypracowywać
          i promować rozwiązania, które mają realne pozytywne skutki dla
          objętych nimi podmiotów. Z drugiej strony bezpośrednia współpraca
          pomiędzy Członkami, wymiana doświadczeń i budowa unikalnych w skali
          światowej rozwiązań dedykowanych dla konkretnych podmiotów pozawalają
          zredukować zużycie energii i surowców energetycznych, a przez to
          obniżyć całkowity ich koszt.
        </p>
        <h6 class="title mb-3">
          Redukcja kosztów wsparcia odnawialnych źródeł energii
        </h6>
        <p>
          W 2015 r. polski rząd wprowadza dwa niezwykle ważne rozwiązania, o
          które zabiegała Izba Energetyki Przemysłowej i Odbiorców Energii w
          koalicji z innymi Członkami Forum Odbiorców Energii Elektrycznej i
          Gazu. Dotyczą redukcji kosztów wsparcia odnawialnych źródeł energii
          (tzw. zielone certyfikaty) oraz kosztów podatku akcyzowego od energii
          elektrycznej dla przedsiębiorstw energochłonnych. Rozwiązania te
          dedykowane są zarówno największym, jak i małym odbiorcom przemysłowym,
          zakładom energochłonnym, przedsiębiorstwom stosującym energochłonne
          technologie produkcji oraz producentom wydobywającym, przerabiającym i
          odgazowującym wyroby węglowe.
        </p>
        <p>
          Szacuje się, że z redukcji kosztów OZE w całym kraju powinno
          skorzystać ponad 1000 przedsiębiorstw, tymczasem jak dotąd swoje
          oświadczenia warunkujące uzyskanie uprawnień odbiorcy przemysłowego,
          zgłosiło jedynie 317. Oznacza to że blisko 70% uprawnionych odbiorców
          funkcjonuje poza tym systemem redukcji. Z kolei parametry uprawniające
          do redukcji kosztów podatku akcyzowego dla zakładów i procesów
          energochłonnych spełnia ok. 600 firm, ale część z nich nie będzie
          mogła swoich uprawnień wykorzystać, bo nie jest podatnikiem podatku
          akcyzowego. Dotyczy to również producentów wydobywających,
          przerabiających i odgazowujących wyroby węglowe.
        </p>
        <h6 class="title mb-3">Pomoc od Izby</h6>
        <p>
          FOEEiG oferuje małym i średnim przedsiębiorstwom wsparcie w optymalnym
          skorzystaniu z wprowadzonych rozwiązań. Deklarujemy pomoc ze strony
          biura Izby, ekspertów współpracujących z IEPiOE oraz wsparcia
          wyspecjalizowanej kancelarii prawnej
          <a href="https://echw.pl/">Elżanowski Cherka i Wąsowski</a>, która od
          lat współpracuje z FOEEiG. Skorzystanie zarówno z redukcji kosztów
          systemu wsparcia OZE oraz podatku akcyzowego od energii elektrycznej,
          wymaga od uprawnionego odbiorcy przemysłowego podjęcia działań, do
          których może on nie mieć niezbędnej wiedzy i zasobów. IEPiOE zaprasza
          do współpracy wszystkie zakłady przemysłowe zainteresowane uzyskaniem
          profesjonalnego wsparcia umożliwiającego skorzystanie z opisanych
          wyżej rozwiązań.
        </p>
        <app-button-go-up />
      </v-card-text>
    </v-card>
  </v-container>
</template>

<script>
import AppButtonGoUp from '~/components/AppButtonGoUp'

export default {
  components: {
    AppButtonGoUp
  },
  head() {
    return {
      title: 'IEPiOE :: Zaoszczędź'
    }
  }
}
</script>
