<template>
  <v-container fluid text-xs-justify>
    <h5 class="headline mb-3">
      O Izbie Energetyki Przemysłowej i Odbiorców Energii
    </h5>
    <p>
      <strong>
        Izba Energetyki Przemysłowej i Odbiorców Energii jest organizacją
        samorządu gospodarczego zrzeszającą podmioty związane z wytwarzaniem,
        przesyłem, obrotem i odbiorem energii elektrycznej oraz cieplnej.
      </strong>
    </p>
    <h5 class="headline mb-3">
      Cele Izby Energetyki Przemysłowej i Odbiorców Energii
    </h5>
    <p>
      Najważniejszym celem Izby jest poprawa pozycji konkurencyjnej jej Członków
      poprzez obniżanie kosztów związanych z pozyskiwaniem i wykorzystywaniem
      energii. Cel ten realizowany jest poprzez wspieranie usuwania barier
      administracyjnych i nadmiernych obciążeń fiskalnych, udział w
      konsultacjach publicznych i edukowanie przedstawicieli administracji
      publicznej w obszarze energetyki przemysłowej i przemysłów
      energochłonnych, organizację szkoleń i warsztatów dla Członków oraz inne
      działania mające na celu podniesienie świadomości w obszarze znaczenia,
      wyzwań i problemów reprezentowanych przez Izbę podmiotów.
    </p>
    <h5 class="headline mb-3">
      Funkcja reprezentatywna Izby Energetyki Przemysłowej i Odbiorców Energii
    </h5>
    <p>
      <strong
        >IEPiOE reprezentuje swoich Członków przed krajowymi urzędami
        centralnymi</strong
      >
      oraz <strong>międzynarodowymi instytucjami i organizacjami</strong> w
      zakresie zagadnień związanych z energią elektryczną, gazem i efektywnością
      energetyczną,
      <strong
        >stara się o zapewnienie stabilnego rozwoju energochłonnych sektorów
        polskiej gospodarki</strong
      >
      w kontekście postanowień polityki klimatyczno-energetycznej Unii
      Europejskiej oraz wymagań określonych przez Globalne Porozumienie
      Klimatyczne i ich implementacje w Polsce.
    </p>
    <h5 class="headline mb-3">
      Inicjatywy Izby Energetyki Przemysłowej i Odbiorców Energii
    </h5>
    <p>
      Z inicjatywy Izby powstały
      <a href="http://odbiorcyenergii.pl/">FORUM<sup>CO2</sup></a> oraz
      <a href="http://odbiorcyenergii.pl/"
        >Forum Odbiorców Energii Elektrycznej i Gazu (FOEEiG)</a
      >, które zrzeszają organizacje i stowarzyszenia branżowe polskiego
      przemysłu energochłonnego. Celem obu Forów jest utrzymanie
      konkurencyjności polskiego przemysłu oraz wspierania kształtowania zasad
      funkcjonowania rynków: energii elektrycznej, gazu oraz ciepła. Fora są
      platformą do dyskusji i uzgadniania stanowisk w sprawach szeroko
      rozumianej polityki energetyczno-klimatycznej.
    </p>
    <h5 class="headline mb-3">Targi Energii</h5>
    <p>
      Izba jest organizatorem Targów Energii – wydarzenia z wieloletnią
      tradycją, w którym uczestniczą kluczowi przedstawiciele wszystkich
      najważniejszych podmiotów na rynkach energii. Co roku w Jachrance
      spotykają się producenci, odbiorcy, sprzedawcy, dystrybutorzy oraz
      wysokiego szczebla przedstawiciele administracji publicznej, związani. W
      ciągu dwóch dni równolegle omawiane są najważniejsze bieżące zagadnienia w
      branży energetycznej oraz prowadzone są rozmowy biznesowe.
    </p>
    <h6 class="title mb-3">
      Zapraszamy do przystąpienia do Izby Energetyki Przemysłowej i Odbiorców
      Energii.
    </h6>
    <p>
      W razie wszelkich pytań zachęcamy do kontaktu z
      <a href="mailto:iep@iep.org.pl">biurem Izby</a>.
    </p>
    <h5 class="headline indigo--text text--darken-1 mb-3 mt-5">
      Pobierz
    </h5>
    <v-layout fill-height wrap>
      <v-flex
        v-for="(item, index) in assets"
        :key="index"
        xs6
        sm4
        md4
        class="pa-1"
      >
        <v-layout row>
          <v-flex shrink><v-icon left>attach_file</v-icon></v-flex>
          <v-flex>
            <a :href="`${item.href}`">{{ item.text }}</a>
          </v-flex>
        </v-layout>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
export default {
  layout: 'about',
  head() {
    return {
      title: 'IEPiOE :: O Izbie'
    }
  },
  data() {
    return {
      assets: [
        {
          href: '/documents/statut-iepioe.pdf',
          text: 'Statut'
        },
        {
          href: '/documents/ordynacja-wyborcza.pdf',
          text: 'Ordynacja wyborcza'
        },
        {
          href: '/documents/regulamin-obrad.pdf',
          text: 'Regulamin obrad'
        },
        {
          href: '/documents/deklaracja-przystapienia.pdf',
          text: 'Deklaracja przystąpienia'
        },
        {
          href: '/documents/ankieta.pdf',
          text: 'Ankieta'
        }
      ]
    }
  }
}
</script>
