<template>
  <v-container>
    <v-layout fill-height align-center>
      <v-flex text-xs-center>
        <h2 class="display-3 red--text text--darken-2">
          {{ `Błąd ${error.statusCode}` }}
        </h2>
        <p v-if="error.statusCode === 404" class="grey--text">
          <em>nie znaleziono strony o podanym adresie</em>
        </p>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
export default {
  props: {
    error: {
      required: true,
      type: Object
    }
  }
}
</script>
