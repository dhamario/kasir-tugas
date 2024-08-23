<template>
  <Head>
    <title>Dashboard - Aplikasi Kasir</title>
  </Head>

  <main class="c-main">
    <div class="container-fluid">
      <div class="fade-in">
        <div class="row">
          <div class="col-md-8">
           
          </div>
          
        </div>

        <div class="row">
         
          <div class="col-md-6">
            <div
              v-if="hasAnyPermission(['dashboard.product_stock'])"
              class="card border-0 rounded-3 shadow border-top-danger"
            >
              <div class="card-header">
                <span class="font-weight-bold"
                  ><i class="fa fa-box-open"></i> PRODUCT STOCK</span
                >
              </div>
              <div class="card-body">
                <div v-if="products_limit_stock.length > 0">
                  <ol class="list-group list-group-numbered">
                    <li
                      v-for="product in products_limit_stock"
                      :key="product.id"
                      class="
                        list-group-item
                        d-flex
                        justify-content-between
                        align-items-start
                      "
                    >
                      <div class="ms-2 me-auto">
                        <div class="fw-bold">{{ product.title }}</div>
                        <div class="text-muted">
                          Category : {{ product.category.name }}
                        </div>
                      </div>
                      <span class="badge bg-dark rounded-pill">{{
                        product.stock
                      }}</span>
                    </li>
                  </ol>
                </div>
                <div
                  v-else
                  class="alert alert-danger border-0 shadow rounded-3"
                >
                  Data Tidak Tersedia!.
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
</template>

<script>
//import layout
import LayoutApp from "../../../Layouts/App.vue";

//import Heade and useForm from Inertia
import { Head } from "@inertiajs/inertia-vue3";

//import ref from vue
import { ref } from "vue";

//chart
import { BarChart, DoughnutChart } from "vue-chart-3";
import { Chart, registerables } from "chart.js";

//register chart
Chart.register(...registerables);

export default {
  //layout
  layout: LayoutApp,

  //register component
  components: {
    Head,
    BarChart,
    DoughnutChart,
  },
  props: {
    //total penjualan hari ini
    count_sales_today: Number,

    //jumlah (Rp.) penjualan hari ini
    sum_sales_today: Number,

    //jumlah profit/laba hari ini
    sum_profits_today: Number,

    //chart sales
    sales_date: Array,
    grand_total: Array,

    //produk terlaris
    product: Array,
    total: Array,

    //produk limit stock
    products_limit_stock: Array,
  },
  setup(props) {
    //method random color
    function randomBackgroundColor(length) {
      var data = [];
      for (var i = 0; i < length; i++) {
        data.push(getRandomColor());
      }
      return data;
    }

    //method generate random color
    function getRandomColor() {
      var letters = "0123456789ABCDEF".split("");
      var color = "#";
      for (var i = 0; i < 6; i++) {
        color += letters[Math.floor(Math.random() * 16)];
      }
      return color;
    }

    //option chart
    const options = ref({
      responsive: true,
      plugins: {
        legend: {
          display: false,
        },
        title: {
          display: false,
        },
      },
      beginZero: true,
    });

    //chart sell week
    const chartSellWeek = {
      labels: props.sales_date,
      datasets: [
        {
          data: props.grand_total,
          backgroundColor: randomBackgroundColor(props.sales_date.length),
        },
      ],
    };

    //chart produk terlaris
    const chartBestProduct = {
      labels: props.product,
      datasets: [
        {
          data: props.total,
          backgroundColor: randomBackgroundColor(5),
        },
      ],
    };

    return {
      options,
      chartSellWeek,
      chartBestProduct,
    };
  },
};
</script>

<style>
</style>