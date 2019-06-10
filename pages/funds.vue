<template>
  <v-container>
    <v-card>
      <v-card-text>
        <h5 class="headline mb-3">
          Fundusz i dotacje
        </h5>
        <p>
          Izba Energetyki Przemysłowej i Odbiorców Energii rozpoczęła współpracę
          z firmą
          <a href="http://www.dsekomat.pl/"
            >Doradztwo Strategiczne EKOMAT Sp. z o.o.</a
          >
          zajmującą się m.in. wsparciem podmiotów gospodarczych z naszego
          sektora w uzyskaniu dotacji unijnych.
        </p>
        <p>
          W ramach tej współpracy na stronie internetowej Izby będą zamieszczane
          materiały informacyjne dotyczące funduszy, dotacji i pożyczek, które
          są wspierane dofinansowaniem ze środków unijnych, norweskich oraz
          środków krajowych <a href="https://www.nfosigw.gov.pl/">NFOŚiGW</a>.
        </p>
        <p>
          Materiały te będą aktualizowane w momencie ogłoszenia nowych
          konkursów. Jeżeli są Państwo zainteresowani skorzystaniem z wiedzy i
          doświadczenia
          <a href="http://www.dsekomat.pl/"
            >Doradztwa Strategicznego EKOMAT Sp. z o.o.</a
          >, poniżej przekazujemy dane kontaktowe:
        </p>
        <p>
          <strong>Doradztwo Strategiczne EKOMAT Sp. z o.o.</strong>
        </p>
        <v-layout row>
          <v-flex shrink class="mr-3">
            <v-icon small>location_on</v-icon>
          </v-flex>
          <v-flex>
            XI piętro Warsaw Financial Centre<br />
            ul. Emilii Plater 53<br />
            00-113 Warszawa
          </v-flex>
        </v-layout>
        <v-layout row>
          <v-flex shrink class="mr-3">
            <v-icon small>phone</v-icon>
          </v-flex>
          <v-flex>
            +48 22 242 84 71
          </v-flex>
        </v-layout>
        <v-layout row>
          <v-flex shrink class="mr-3">
            <v-icon small>alternate_email</v-icon>
          </v-flex>
          <v-flex>
            <a href="mailto:biuro@dsekomat.pl">biuro@dsekomat.pl</a>
          </v-flex>
        </v-layout>
        <v-layout row>
          <v-flex shrink class="mr-3">
            <v-icon small>link</v-icon>
          </v-flex>
          <v-flex>
            <a href="http://www.dsekomat.pl/">http://www.dsekomat.pl/</a>
          </v-flex>
        </v-layout>
        <h5 class="headline my-3">Dotacje</h5>
        <p>
          <a
            href="/funds/dotacje-z-pois-dzialanie-1-5-efektywna-dystrybucja-ciepła-i-chlodu.docx"
            >Dotacje z POIŚ – Działanie 1.5 Efektywna dystrybucja ciepła i
            chłodu</a
          ><br />
          <a
            href="/funds/dotacje-z-wfosigw-dzialanie-1-7-2-efektywna-dystrybucja-ciepla-i-chlodu-w-wojewodztwie-slaskim.docx"
            >Dotacje z WFOŚiGW – Działanie 1.7.2 Efektywna dystrybucja ciepła i
            chłodu w województwie śląskim</a
          >
        </p>
        <h5 class="headline mb-3">
          Pożyczka z NFOŚiGW<br />
          <small>
            <em>
              Wsparcie przedsięwzięć w zakresie niskoemisyjnej i
              zasobooszczędnej gospodarki
            </em>
          </small>
        </h5>
        <p>
          <a
            href="/funds/karta-informacyjna-nfosigw-krajowe-czesc-1-e-kumulator.docx"
            ><em>Część 1)</em> E-KUMULATOR – Ekologiczny Akumulator dla
            Przemysłu</a
          ><br />
          <a
            href="/funds/karta-informacyjna-nfosigw-krajowe-czesc-2-wspolfinansowanie-pois.docx"
            ><em>Część 2)</em> Współfinansowanie projektów POIiŚ w ramach I osi
            priorytetowej</a
          ><br />
          <a
            href="/funds/karta-informacyjna-nfosigw-krajowe-czesc-3-efektywne-systemy-cieplownicze.docx"
            ><em>Część 3)</em> Efektywne systemy ciepłownicze i chłodnicze</a
          >
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
      title: 'IEPiOE :: Fundusze i dotacje'
    }
  }
}
</script>
