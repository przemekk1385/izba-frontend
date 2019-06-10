<template>
  <nav>
    <v-toolbar color="white" flat>
      <div class="iep-brand">
        <nuxt-link to="/">
          <img
            class="iep-brand__image"
            src="~/assets/iepioe-logo-blank.svg"
            alt="Logo"
          />
        </nuxt-link>
        <span class="hidden-sm-and-down iep-brand__text">
          Izba Energetyki Przemysłowej<br />i Odbiorców Energii
        </span>
      </div>
      <v-spacer></v-spacer>
      <v-toolbar-items class="hidden-sm-and-down">
        <v-btn
          v-for="(item, index) in items"
          :key="index"
          exact-active-class="yellow darken-3 white--text"
          flat
          nuxt
          :to="item.href"
        >
          {{ item.text }}
        </v-btn>
      </v-toolbar-items>
      <v-menu class="hidden-md-and-up">
        <v-toolbar-side-icon slot="activator"></v-toolbar-side-icon>
        <v-list>
          <v-list-tile
            v-for="(item, index) in items"
            :key="index"
            exact-active-class="blue lighten-4"
            nuxt
            :to="`${item.href}`"
          >
            <v-list-tile-content>
              <v-list-tile-title>{{ item.text }}</v-list-tile-title>
            </v-list-tile-content>
          </v-list-tile>
        </v-list>
      </v-menu>
    </v-toolbar>
  </nav>
</template>

<script>
export default {
  data() {
    return {
      items: [
        {
          text: 'O Izbie',
          href: '/about'
        },
        {
          text: 'Aktualności',
          href: '/news'
        },
        {
          text: 'Wydarzenia',
          href: '/events'
        },
        {
          text: 'Fundusze',
          href: '/funds'
        }
      ]
    }
  },
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
