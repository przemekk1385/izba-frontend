<template>
  <v-layout row class="hidden-md-and-up">
    <v-spacer></v-spacer>
    <v-flex shrink>
      <v-btn dark icon large color="amber darken-1" @click="goUp">
        <v-icon large>keyboard_arrow_up</v-icon>
      </v-btn>
    </v-flex>
  </v-layout>
</template>

<script>
export default {
  methods: {
    goUp() {
      this.$vuetify.goTo(0, {
        duration: 500,
        easing: 'easeInQuad',
        offset: 0
      })
    }
  }
}
</script>
