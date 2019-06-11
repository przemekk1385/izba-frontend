<template>
  <v-app>
    <app-header />
    <nuxt />
    <app-footer />
  </v-app>
</template>

<script>
import AppFooter from '~/components/AppFooter'
import AppHeader from '~/components/AppHeader'

export default {
  components: {
    AppFooter,
    AppHeader
  },
  data() {
    return {
      top: [
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
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="scss">
// custom
.iep-brand {
  display: flex;
  height: inherit;
  &__image {
    align-self: center;
    height: 48px;
    margin-right: 1em;
    width: 48px;
  }
  &__text {
    align-self: center;
  }
}
.iep-caption {
  &--carousel {
    margin-bottom: 50px;
  }
  background-color: black;
  opacity: 0.75;
}
.min-h {
  &-50 {
    min-height: 50%;
  }
  &-30 {
    min-height: 30%;
  }
}

// extends existing
.caption {
  &--spaced {
    letter-spacing: 0.1em;
  }
}
.v-carousel {
  &--no-shadow {
    box-shadow: none !important;
  }
}
</style>
