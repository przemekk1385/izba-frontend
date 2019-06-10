<template>
  <v-container fluid>
    <h5 class="headline mb-3">
      Zarząd Izby
    </h5>
    <v-layout align-center wrap>
      <v-flex text-xs-center xs12>
        <h6 class="title mb-3">Prezes Zarządu</h6>
        <p>
          Henryk Kaliś<br />
          <small><em>ZGH Bolesław S.A.</em></small>
        </p>
      </v-flex>
      <v-flex xs12>
        <v-layout justify-space-between wrap>
          <v-flex text-xs-center class="mt-5">
            <h6 class="title mb-3">Członek Zarządu</h6>
            <p>
              Elżbieta Rozmus
            </p>
          </v-flex>
          <v-flex text-xs-center class="mt-5">
            <h6 class="title mb-3">Członek Zarządu</h6>
            <p>
              Krzysztof Kidawa
            </p>
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
      title: 'IEPiOE :: Władze Izby'
    }
  }
}
</script>
