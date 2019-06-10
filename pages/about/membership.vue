<template>
  <v-container fluid text-xs-justify>
    <h5 class="headline mb-3">
      Jak zostać członkiem?
    </h5>
    <p>
      <strong>
        Aby zostać członkiem Izby Energetyki Przemysłowej i Odbiorców Energii
        należy przejść cztery proste kroki:
      </strong>
    </p>
    <ul>
      <li>
        Zapoznać się ze Statutem Izby i pozostałymi dokumentami dostępnymi na
        stronie.
      </li>
      <li>
        Wypełnić deklarację przystąpienia do Izby, oraz Ankietę dla
        przystępujących Członków.
      </li>
      <li>
        Wysłać wypełnione dokumenty na adres biura Izby.
      </li>
      <li>
        Po otrzymaniu dokumentów skontaktujemy się z Państwem celem finalizacji
        procesu.
      </li>
    </ul>
    <p class="mt-3">
      Po otrzymaniu dokumentów skontaktujemy się z Państwem celem finalizacji
      procesu.
    </p>
    <p>
      W razie wszelkich pytań i wątpliwości prosimy o kontakt z Biurem IEPiOE:
    </p>
    <p>
      <v-icon small class="mr-3">phone</v-icon>
      +48 22 875 91 10<br />
      <v-icon small class="mr-3">alternate_email</v-icon>
      <a href="mailto:iep@iep.org.pl">iep@iep.org.pl</a>
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
      title: 'IEPiOE :: Jak zostać członkiem?'
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
