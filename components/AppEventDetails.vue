<template>
  <div>
    <v-layout row>
      <v-flex shrink class="mr-1">
        <v-icon :dark="dark" small>event</v-icon>
      </v-flex>
      <v-flex>
        <span class="caption">{{ datetime }}</span>
      </v-flex>
    </v-layout>
    <v-layout row>
      <v-flex shrink class="mr-1">
        <v-icon :dark="dark" small>location_on</v-icon>
      </v-flex>
      <v-flex>
        <span class="caption">
          <v-tooltip v-if="tooltip" bottom>
            <template v-slot:activator="{ on }">
              <span v-on="on">
                {{ `${place.substr(0, 24)}...` }}
              </span>
            </template>
            <span>{{ place }}</span>
          </v-tooltip>
          <span v-else>{{ place }}</span>
        </span>
      </v-flex>
    </v-layout>
  </div>
</template>

<script>
export default {
  props: {
    dark: {
      default: false,
      type: Boolean
    },
    eventDetails: {
      required: true,
      type: Object
    },
    tooltip: {
      default: false,
      type: Boolean
    }
  },
  computed: {
    datetime() {
      const s = new Date(this.eventDetails.start.replace(/-/g, '/'))
      const e = new Date(this.eventDetails.end.replace(/-/g, '/'))
      const startDate = s.toLocaleDateString()
      const startTime = s.toLocaleTimeString().slice(0, -3)
      const endDate = e.toLocaleDateString()
      const endTime = e.toLocaleTimeString().slice(0, -3)
      let dt = ''
      if (startDate === endDate) {
        dt = `${startDate} ${startTime}-${endTime}`
      } else if (
        s.getMonth() === e.getMonth() &&
        s.getFullYear() === e.getFullYear()
      ) {
        dt = `${s.getDate()}-${endDate}`
      } else {
        dt = `${startDate}-${endDate}`
      }
      return dt.replace(' 00:00-23:59', '')
    },
    place() {
      return this.eventDetails.place
    }
  }
}
</script>
