<template>
  <div>
    <h5 class="headline indigo--text text--darken-1 mb-3 mt-5">
      Pobierz
    </h5>
    <v-layout fill-height wrap>
      <v-flex
        v-for="(item, index) in items"
        :key="index"
        xs6
        sm4
        md4
        class="pa-1"
      >
        <v-layout row>
          <v-flex shrink><v-icon left>attach_file</v-icon></v-flex>
          <v-flex>
            <a :href="`${item.href}`" target="_blank">{{ item.text }}</a>
          </v-flex>
        </v-layout>
      </v-flex>
    </v-layout>
  </div>
</template>

<script>
export default {
  data() {
    return {
      items: [
        {
          href: '/documents/statut-iepioe.pdf',
          text: 'Statut'
        },
        {
          href: '/documents/ordynacja-wyborcza.pdf',
          text: 'Ordynacja wyborcza'
        },
        {
          href: '/documents/regulamin-obrad.pdf',
          text: 'Regulamin obrad'
        },
        {
          href: '/documents/deklaracja-przystapienia.pdf',
          text: 'Deklaracja przystąpienia'
        },
        {
          href: '/documents/ankieta.pdf',
          text: 'Ankieta'
        }
      ]
    }
  }
}
</script>
