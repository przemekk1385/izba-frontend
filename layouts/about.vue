<template>
  <v-app>
    <app-header />
    <v-container>
      <v-card>
        <v-card-text>
          <v-layout fill-height wrap>
            <v-flex xs12 sm12 md2>
              <v-list dense class="hidden-sm-and-down mt-3">
                <v-list-tile
                  v-for="(item, index) in items"
                  :key="index"
                  exact-active-class="blue lighten-4"
                  :to="`${item.href}`"
                  nuxt
                >
                  <v-list-tile-content>
                    <v-list-tile-title>{{ item.text }}</v-list-tile-title>
                  </v-list-tile-content>
                </v-list-tile>
              </v-list>
              <v-breadcrumbs
                :items="items"
                class="hidden-md-and-up"
              ></v-breadcrumbs>
            </v-flex>
            <v-flex xs12 sm12 md10>
              <nuxt />
            </v-flex>
          </v-layout>
          <app-button-go-up />
        </v-card-text>
      </v-card>
    </v-container>
    <app-footer />
  </v-app>
</template>

<script>
import AppFooter from '~/components/AppFooter'
import AppHeader from '~/components/AppHeader'
import AppButtonGoUp from '~/components/AppButtonGoUp'

export default {
  components: {
    AppButtonGoUp,
    AppFooter,
    AppHeader
  },
  data() {
    return {
      items: [
        {
          text: 'Partnerzy',
          href: '/about/partners'
        },
        {
          text: 'Członkowie',
          href: '/about/members'
        },
        {
          text: 'Władze',
          href: '/about/board'
        },
        {
          text: 'Jak zostać członkiem?',
          href: '/about/membership'
        }
      ]
    }
  }
}
</script>
