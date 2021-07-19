<template>
  <v-container fluid>
    <h5 class="headline mb-3">
      Członkowie Izby
    </h5>
    <v-layout wrap>
      <v-flex
        v-for="member in members"
        :key="member.id"
        xs8
        sm6
        md4
        offset-xs2
        offset-sm0
        text-xs-center
        class="pa-3 mb-3"
      >
        <v-img
          :src="`${member.image}`"
          :aspect-ratio="2 / 1"
          class="grey lighten-2"
        >
          <template v-slot:placeholder>
            <v-layout fill-height align-center justify-center class="ma-0">
              <v-progress-circular
                indeterminate
                color="yellow darken-3"
              ></v-progress-circular>
            </v-layout>
          </template>
        </v-img>
        <a :href="`${member.url}`">{{ member.name }}</a>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
const host = 'http://backend.iep.kalis.ovh/'
const baseURL = `${host}api/`
const resource = 'entities/?type=member'
export default {
  async asyncData({ app }) {
    const members = await app.$axios.$get(`${baseURL}${resource}`)
    return { members }
  },
  layout: 'about',
  head() {
    return {
      title: 'IEPiOE :: Członkowie'
    }
  }
}
</script>
