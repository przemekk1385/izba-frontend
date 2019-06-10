<template>
  <v-footer dark height="100%" class="mt-2">
    <v-container fluid>
      <v-layout row class="caption grey--text">
        <v-flex>
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
        <v-spacer></v-spacer>
        <v-flex shrink class="caption grey--text">
          <nuxt-link :to="{ name: 'privacy' }">Polityka prywatności</nuxt-link>
          <br />
          <nuxt-link :to="{ name: 'contact' }">Kontakt</nuxt-link>
        </v-flex>
      </v-layout>
    </v-container>
  </v-footer>
</template>
