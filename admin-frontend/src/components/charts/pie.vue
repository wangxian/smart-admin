<template>
  <div ref="dom" class="charts chart-pie"></div>
</template>

<script>
  import echarts from 'echarts';
  import tdTheme from './theme.json';
  import { off, on } from '@/lib/util';

  echarts.registerTheme('tdTheme', tdTheme);
  export default {
    // 饼图
    name: 'chartPie',
    props: {
      // 数据集合
      value: {
        type: Array,
        require: true
      }, // 标题
      text: {
        type: String,
        require: true,
        default: ''
      }, // 子标题
      subtext: {
        type: String,
        require: true,
        default: ''
      }
    },
    data () {
      return {
        dom: null
      };
    },
    methods: {
      resize () {
        this.dom.resize();
      }
    },
    mounted () {
      this.$nextTick(() => {
        let legend = this.value.map(_ => _.name);
        let option = {
          title: {
            text: this.text,
            subtext: this.subtext,
            x: 'center'
          },
          tooltip: {
            trigger: 'item',
            formatter: '{a} <br/>{b} : {c} ({d}%)'
          },
          legend: {
            orient: 'vertical',
            left: 'left',
            data: legend
          },
          series: [{
            type: 'pie',
            radius: '55%',
            center: ['50%', '60%'],
            data: this.value,
            itemStyle: {
              emphasis: {
                shadowBlur: 10,
                shadowOffsetX: 0,
                shadowColor: 'rgba(0, 0, 0, 0.5)'
              }
            }
          }]
        };
        this.dom = echarts.init(this.$refs.dom, 'tdTheme');
        this.dom.setOption(option);
        on(window, 'resize', this.resize);
      });
    },
    beforeDestroy () {
      off(window, 'resize', this.resize);
    }
  };
</script>
