<template>
  <v-container fluid text-xs-justify>
    <h5 class="headline mb-3">
      Jak zostać Członkiem?
    </h5>
    <p>
      <strong>
        Aby zostać Członkiem Izby Energetyki Przemysłowej i Odbiorców Energii
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
    <about-documents />
  </v-container>
</template>

<script>
import AboutDocuments from '~/components/AboutDocuments'

export default {
  components: {
    AboutDocuments
  },
  layout: 'about',
  head() {
    return {
      title: 'IEPiOE :: Jak zostać Członkiem?'
    }
  }
}
</script>
