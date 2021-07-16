<template>
  <v-container>
    <v-layout wrap>
      <v-flex xs12 sm8>
        <v-carousel
          :hide-controls="carouselItems.length == 1"
          :hide-delimiters="carouselItems.length == 1"
          class="v-carousel--no-shadow"
        >
          <!-- only posts with header image //-->
          <v-carousel-item
            v-for="(item, index) in carouselItems"
            :key="index"
            :src="item.header"
          >
            <v-layout fill-height align-end>
              <v-flex
                tag="a"
                :class="
                  carouselItems.length == 1 ? '' : 'iep-caption--carousel'
                "
                class="iep-caption white--text pa-3"
                @click="
                  $router.push({
                    name: 'type-id',
                    params: {
                      type: item.eventdetails ? 'events' : 'news',
                      id: item.id
                    }
                  })
                "
              >
                <div class="title">{{ item.title }}</div>
                <app-event-details
                  v-if="item.eventdetails"
                  :dark="true"
                  :event-details="item.eventdetails"
                />
              </v-flex>
            </v-layout>
          </v-carousel-item>
        </v-carousel>
      </v-flex>
      <v-flex xs12 sm4>
        <v-layout fill-height wrap>
          <v-flex xs6 sm12 class="min-h-50 white pa-3">
            <v-layout
              align-center
              fill-height
              justify-center
              class="hidden-md-and-down"
            >
              <v-flex>
                <p>
                  <v-icon large>info</v-icon>
                </p>
                <p
                  class="caption caption--spaced font-weight-bold mb-3 text-xs-justify"
                >
                  Izba Energetyki Przemysłowej i&nbsp;Odbiorców Energii jest
                  organizacją zrzeszającą podmioty związane z&nbsp;wytwarzaniem,
                  przesyłem, obrotem i&nbsp;odbiorem energii elektrycznej oraz
                  cieplnej.
                </p>
                <p class="text-xs-right">
                  <v-btn flat icon nuxt to="/about">
                    <v-icon>chevron_right</v-icon>
                  </v-btn>
                </p>
              </v-flex>
            </v-layout>
            <v-layout
              align-center
              fill-height
              justify-center
              tag="a"
              class="hidden-lg-and-up grey--text"
              @click="$router.push({ name: 'about' })"
            >
              <v-flex text-xs-center>
                <v-icon large>info</v-icon>
                <div class="headline hidden-sm-and-down">
                  O Izbie
                </div>
              </v-flex>
            </v-layout>
          </v-flex>
          <v-flex xs6 sm12 class="min-h-50 blue darken-4 pa-3 white--text">
            <v-layout
              align-center
              fill-height
              justify-center
              class="hidden-md-and-down"
            >
              <v-flex>
                <p>
                  <v-icon dark large>attach_money</v-icon>
                </p>
                <p
                  class="caption caption--spaced font-weight-bold mb-3 text-xs-justify"
                >
                  Izba Energetyki Przemysłowej i&nbsp;Odbiorców Energii skupia
                  się na prowadzeniu działań zmierzających do zredukowania
                  kosztów energii dla jej Członków.
                </p>
                <p class="text-xs-right">
                  <v-btn dark flat large nuxt icon to="/save">
                    <v-icon>chevron_right</v-icon>
                  </v-btn>
                </p>
              </v-flex>
            </v-layout>
            <v-layout
              align-center
              fill-height
              justify-center
              tag="a"
              class="hidden-lg-and-up"
              @click="$router.push({ name: 'save' })"
            >
              <v-flex class=" text-xs-center">
                <v-icon dark large>attach_money</v-icon>
                <div class="headline white--text hidden-sm-and-down">
                  Zaoszczędź
                </div>
              </v-flex>
            </v-layout>
          </v-flex>
        </v-layout>
      </v-flex>
    </v-layout>
    <v-layout wrap class="mt-5">
      <v-flex
        v-for="(post, index) in posts"
        :key="post.id"
        xs12
        sm6
        md4
        :class="index == 3 ? 'hidden-md-and-up' : ''"
      >
        <!-- with header image //-->
        <v-img v-if="post.header" :src="`${post.header}`">
          <v-layout fill-height align-end row>
            <v-flex
              tag="a"
              class="iep-caption pa-1 white--text min-h-30"
              @click="
                $router.push({
                  name: 'type-id',
                  params: {
                    type: post.eventdetails ? 'events' : 'news',
                    id: post.id
                  }
                })
              "
            >
              <div class="subheading">{{ post.title }}</div>
              <!--
              <app-event-details
                v-if="post.eventdetails"
                :dark="true"
                :event-details="post.eventdetails"
                :tooltip="true"
              />
              //-->
            </v-flex>
          </v-layout>
        </v-img>
        <!-- without header image //-->
        <v-layout
          v-else
          column
          fill-height
          justify-space-between
          class="blue darken-4 pa-1 white--text"
        >
          <v-flex>
            <div class="ma-3 title">{{ post.title }}</div>
            <!--
            <app-event-details
              v-if="post.eventdetails"
              :dark="true"
              :event-details="post.eventdetails"
              :tooltip="true"
              class="mx-3"
            />
            //-->
          </v-flex>
          <v-flex shrink text-xs-right>
            <v-btn
              dark
              icon
              nuxt
              :to="`/${post.eventdetails ? 'events' : 'news'}/${post.id}`"
            >
              <v-icon dark>chevron_right</v-icon>
            </v-btn>
          </v-flex>
        </v-layout>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
import AppEventDetails from '~/components/AppEventDetails'

const host = 'http://backend.iep.kalis.ovh/'
const baseURL = `${host}api/`
const resource = 'posts/'
export default {
  components: {
    AppEventDetails
  },
  async asyncData({ app }) {
    const data = await app.$axios.$get(`${baseURL}${resource}`)
    const posts = data.filter(item => !item.slider).slice(0, 4)
    const carouselItems = data.filter(item => item.slider && item.header)
    return { posts, carouselItems }
  },
  head() {
    return {
      title: 'IEPiOE :: Home'
    }
  }
}
</script>
