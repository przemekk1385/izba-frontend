<template>
  <v-container>
    <v-card>
      <v-img v-if="post.header" :src="post.header">
        <v-layout column fill-height class="white--text">
          <v-spacer></v-spacer>
          <v-flex shrink class="iep-caption pa-3">
            <div class="headline">{{ post.title }}</div>
            <app-event-details
              v-if="post.eventdetails"
              :dark="true"
              :event-details="post.eventdetails"
            />
          </v-flex>
        </v-layout>
      </v-img>
      <v-responsive v-else :aspect-ratio="16 / 9">
        <v-layout column fill-height class="blue darken-4 white--text">
          <v-spacer></v-spacer>
          <v-flex shrink class="pa-3">
            <div class="headline">{{ post.title }}</div>
            <app-event-details
              v-if="post.eventdetails"
              :dark="true"
              :event-details="post.eventdetails"
            />
          </v-flex>
        </v-layout>
      </v-responsive>
      <v-card-text>
        <v-layout justify-end wrap>
          <v-flex
            xs12
            sm12
            text-xs-justify
            class="mb-3 pr-3"
            :class="
              post.attachment_set.length || post.eventparticipants_set.length
                ? 'md8'
                : 'md12'
            "
            v-html="post.content"
          ></v-flex>
          <v-flex
            v-if="
              post.attachment_set.length || post.eventparticipants_set.length
            "
            xs12
            sm12
            md4
          >
            <v-layout column>
              <v-flex v-if="post.attachment_set.length">
                <h5 class="headline blue--text text--darken-1">
                  Pobierz
                </h5>
                <v-list dense>
                  <v-list-tile
                    v-for="attachment in post.attachment_set"
                    :key="attachment.file"
                    :href="attachment.file"
                    target="_blank"
                  >
                    <v-list-tile-action>
                      <v-icon>attach_file</v-icon>
                    </v-list-tile-action>
                    <v-list-tile-content>
                      <v-list-tile-title>
                        {{ attachment.name }}
                      </v-list-tile-title>
                    </v-list-tile-content>
                  </v-list-tile>
                </v-list>
              </v-flex>
              <v-flex v-if="post.eventparticipants_set.length">
                <v-layout
                  v-for="(eventparticipants,
                  index) in post.eventparticipants_set"
                  :key="eventparticipants.id"
                  :class="post.attachment_set.length || index > 0 ? 'my-3' : ''"
                >
                  <v-flex xs12>
                    <h5 class="headline blue--text text--darken-1">
                      {{ eventparticipants.label }}
                    </h5>
                    <v-layout wrap>
                      <v-flex
                        v-for="entity in eventparticipants.entities"
                        :key="entity.id"
                        xs4
                        md6
                        class="pa-1"
                      >
                        <v-card flat tile class="d-flex">
                          <a :href="`${entity.url}`">
                            <v-img
                              :aspect-ratio="2 / 1"
                              :lazy-src="entity.image"
                              :src="entity.image"
                              class="grey lighten-2"
                              :title="entity.name"
                            >
                              <template v-slot:placeholder>
                                <v-layout
                                  align-center
                                  fill-height
                                  justify-center
                                  ma-0
                                >
                                  <v-progress-circular
                                    indeterminate
                                    color="grey lighten-5"
                                  ></v-progress-circular>
                                </v-layout>
                              </template>
                            </v-img>
                          </a>
                        </v-card>
                      </v-flex>
                    </v-layout>
                  </v-flex>
                </v-layout>
              </v-flex>
            </v-layout>
          </v-flex>
        </v-layout>
      </v-card-text>
    </v-card>
  </v-container>
</template>

<script>
import AppEventDetails from '~/components/AppEventDetails'

const extraClass = (text, tag, className) => {
  const re = new RegExp(`<${tag}>`, 'g')
  return text.replace(re, `<${tag} class="${className}">`)
}

const host = 'http://backend.izba.iep.megiteam.pl/'
const baseURL = `${host}api/`
export default {
  components: {
    AppEventDetails
  },
  data() {
    return {}
  },
  async asyncData({ app, params }) {
    const { id } = params
    const post = await app.$axios.$get(`${baseURL}posts/${id}/?markdownify`)
    const allEntities = await app.$axios.$get(`${baseURL}entities/?type=other`)
    // fills missing entities data
    post.eventparticipants_set = post.eventparticipants_set.map(ep => {
      const { label } = ep
      let { entities } = ep
      entities = entities.map(id => allEntities.find(e => e.id === id))
      return {
        entities,
        label
      }
    })
    post.content = extraClass(post.content, 'blockquote', 'blockquote')
    post.content = extraClass(post.content, 'ol', 'mb-3')
    post.content = extraClass(post.content, 'ul', 'mb-3')
    return { post }
  },
  validate({ params }) {
    return /^\d+$/.test(params.id)
  },
  head() {
    return {
      title: `IEPiOE :: ${this.post.title}`
    }
  }
}
</script>
