<script setup>
  import { ref } from "vue";
  import { VueUiSparkline } from "vue-data-ui";
  
  import "vue-data-ui/style.css";
  const dataset = ref([
  {
    "period": "period 1",
    "value": 0
  },
  {
    "period": "period 2",
    "value": 1
  },
  {
    "period": "period 3",
    "value": 0
  },
  {
    "period": "period 4",
    "value": 2
  },
  {
    "period": "period 5",
    "value": 1
  },
  {
    "period": "period 6",
    "value": 3
  },
  {
    "period": "period 7",
    "value": 2
  },
  {
    "period": "period 8",
    "value": 5
  },
  {
    "period": "period 9",
    "value": 3
  },
  {
    "period": "period 10",
    "value": 8
  },
  {
    "period": "period 11",
    "value": 5
  },
  {
    "period": "period 12",
    "value": 13
  },
  {
    "period": "period 13",
    "value": 8
  },
  {
    "period": "period 14",
    "value": 21
  },
  {
    "period": "period 15",
    "value": 13
  },
  {
    "period": "period 16",
    "value": 34
  },
  {
    "period": "period 17",
    "value": 21
  }
]); 

 const config = ref({
  "type": "line",
  "style": {
    "backgroundColor": "#2A2A2A",
    "area": {
      "color": "#5f8bee"
    },
    "line": {
      "smooth": true,
      "color": "#5f8bee"
    },
    "dataLabel": {
      "show": false
    },
    "title": {
      "show": false
    },
    "zeroLine": {
      "color": "#5A5A5A"
    }
  }
}); 
</script>

<template>
  <div style="width:1200px;">
    <VueUiSparkline
    :dataset="dataset"
    :config="config"
    @selectDatapoint="selectDatapoint"
  />
  </div>
</template>