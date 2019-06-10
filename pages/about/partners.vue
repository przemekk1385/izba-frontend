<template>
  <v-container fluid>
    <h5 class="headline mb-3">
      Partnerzy Izby
    </h5>
    <v-layout wrap>
      <v-flex xs8 offset-xs2 sm6 offset-sm0 md4 text-xs-center class="mb-3">
        <img src="~/assets/partners/arp.png" alt="" width="100%" />
        <a href="http://www.arp.pl/">Agencja Rozwoju Przemysłu S.A.</a>
      </v-flex>
      <v-flex xs8 offset-xs2 sm6 offset-sm0 md4 text-xs-center class="mb-3">
        <img src="~/assets/partners/info-engine.png" alt="" width="100%" />
        <a href="http://infoengine.pl/">WSE Info Engine S.A.</a>
      </v-flex>
      <v-flex xs8 offset-xs2 sm6 offset-sm0 md4 text-xs-center class="mb-3">
        <img src="~/assets/partners/sep.png" alt="" width="100%" />
        <a href="http://www.sep.com.pl/">Stowarzyszenie Elektryków Polskich</a>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
export default {
  layout: 'about',
  head() {
    return {
      title: 'IEPiOE :: Partnerzy Izby'
    }
  }
}
</script>
