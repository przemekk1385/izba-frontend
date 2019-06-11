<template>
  <v-container>
    <v-card>
      <v-card-text>
        <h5 class="headline mb-3">
          Kontakt
        </h5>
        <v-layout wrap>
          <v-flex xs12 md6 class="pa-3">
            <v-responsive aspect-ratio="1">
              <iframe
                allowfullscreen
                height="100%"
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2443.817782859618!2d21.013071215006153!3d52.22852826554241!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x471ecce63c7a1429%3A0xfc194e63aa4a1fea!2sIzba+Energetyki+Przemys%C5%82owej+i+Odbiorc%C3%B3w+Energii!5e0!3m2!1spl!2spl!4v1559503233037!5m2!1spl!2spl"
                style="border:0"
                width="100%"
              ></iframe>
            </v-responsive>
          </v-flex>
          <v-flex xs12 md6 class="pa-3">
            <h6 class="title my-3">Biuro IEPiOE</h6>
            <p>
              <strong>Agata Uba</strong><br />
              Kierownik Biura Izby
            </p>
            <p>
              <strong>Elwira Teodorowicz</strong><br />
              Specjalista ds. kadrowo-finansowych
            </p>
            <p>
              <strong>Natalia Podkomorzy-Goralewska</strong><br />
              Specjalista ds. obsługi biura
            </p>
            <h6 class="title mb-3">Dane teleadresowe</h6>
            <strong>
              Izba Energetyki Przemysłowej<br />
              i Odbiorców Energii
            </strong>
            <v-layout row class="mt-3">
              <v-flex shrink class="mr-3">
                <v-icon small>location_on</v-icon>
              </v-flex>
              <v-flex>
                ul. Żurawia 24 lok. 6<br />
                00-515 Warszawa
              </v-flex>
            </v-layout>
            <v-layout row>
              <v-flex shrink class="mr-3">
                <v-icon small>phone</v-icon>
              </v-flex>
              <v-flex>
                +48 22 875 91 10
              </v-flex>
            </v-layout>
            <v-layout row>
              <v-flex shrink class="mr-3">
                <v-icon small>alternate_email</v-icon>
              </v-flex>
              <v-flex>
                <a href="mailto:iep@iep.org.pl">iep@iep.org.pl</a>
              </v-flex>
            </v-layout>
          </v-flex>
        </v-layout>
      </v-card-text>
    </v-card>
  </v-container>
</template>

<script>
export default {
  head() {
    return {
      title: 'IEPiOE :: Kontakt'
    }
  }
}
</script>
