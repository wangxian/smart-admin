<template>
  <div>
    <iframe :src="url" frameborder="0" height="800" scrolling="yes" width="100%"></iframe>
  </div>
</template>

<script>
  import config from '@/config';

  const baseUrl = config.baseUrl.apiUrl;
  export default {
    name: 'Swagger',
    components: {},
    props: {},
    data () {
      return {
        url: baseUrl + '/swaggerApi'
      };
    },
    computed: {},
    watch: {},
    filters: {},
    created () {
    },
    mounted () {
    },
    beforeCreate () {
    },
    beforeMount () {
    },
    beforeUpdate () {
    },
    updated () {
    },
    beforeDestroy () {
    },
    destroyed () {
    },
    activated () {
    },
    methods: {}
  };
</script>
