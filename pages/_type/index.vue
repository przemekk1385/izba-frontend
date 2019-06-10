<template>
  <v-container>
    <v-layout wrap>
      <v-flex
        v-for="post in paginated"
        :key="post.id"
        xs12
        sm12
        md6
        class="pa-3"
      >
        <v-card>
          <v-img v-if="post.header" :src="`${post.header}`" class="white--text">
            <v-layout align-end fill-height>
              <v-flex xs12>
                <v-container class="iep-caption">
                  <div class="title">{{ post.title }}</div>
                </v-container>
              </v-flex>
            </v-layout>
          </v-img>
          <v-responsive v-else :aspect-ratio="16 / 9">
            <v-layout align-end fill-height class="indigo darken-1 white--text">
              <v-flex class="pa-3">
                <div class="title">{{ post.title }}</div>
              </v-flex>
            </v-layout>
          </v-responsive>
          <v-card-text v-if="post.eventdetails">
            <app-event-details :event-details="post.eventdetails" />
          </v-card-text>
          <v-card-actions>
            <v-btn
              flat
              color="indigo darken-1"
              nuxt
              :to="`/${$route.params.type}/${post.id}`"
            >
              Czytaj dalej
            </v-btn>
          </v-card-actions>
        </v-card>
      </v-flex>
    </v-layout>
    <v-layout v-if="pagination">
      <v-flex text-xs-center>
        <v-pagination
          v-model="page"
          color="yellow darken-3"
          :length="length"
        ></v-pagination>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
import AppEventDetails from '~/components/AppEventDetails'

const itemsPerPage = 6
const host = 'http://backend.izba.iep.megiteam.pl/'
const baseURL = `${host}api/`
const resource = 'posts/'
export default {
  components: {
    AppEventDetails
  },
  computed: {
    length() {
      return Math.ceil(this.posts.length / itemsPerPage)
    },
    page: {
      get() {
        const { page } = this.$route.query
        return parseInt(page, 10) || 1
      },
      set(num) {
        const { type } = this.$route.params
        this.$router.push({
          name: 'type',
          params: { type: type },
          query: { page: num }
        })
      }
    },
    paginated() {
      let start
      if (this.page > 1) {
        start = (this.page - 1) * itemsPerPage
      } else {
        start = 0
      }
      let posts
      const end = start + itemsPerPage
      if (end > this.posts.length) {
        posts = this.posts.slice(start)
      } else {
        posts = this.posts.slice(start, end)
      }
      return posts
    },
    pagination() {
      return Math.ceil(this.posts.length / itemsPerPage) > 1
    }
  },
  async asyncData({ app, params, query: { page } }) {
    let posts = await app.$axios.$get(`${baseURL}${resource}`)
    posts = posts.filter(post => {
      return {
        events: post.eventdetails,
        news: !post.eventdetails
      }[params.type]
    })
    return { posts }
  },
  head() {
    return {
      title: `IEPiOE :: ${
        this.$route.params.type === 'news' ? 'Aktualności' : 'Wydarzenia'
      }`
    }
  },
  validate({ params }) {
    return ['news', 'events'].includes(params.type)
  },
  watchQuery: ['page']
}
</script>
