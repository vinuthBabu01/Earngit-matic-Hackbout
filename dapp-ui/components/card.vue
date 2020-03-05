<template>
  <div>
    <div class="card" style="width: 18rem;">
      <img class="card-img-top" src="~/assets/default.png" alt="Card image cap" />
      <div class="card-body">
       <!--  <h4 class="card-title">: {{propObject.price}}</h4>-->
        <h5 class="card-title">Project Name: {{propObject.name}}</h5>
        <p class="card-text">Project Description: {{propObject.description}}</p>
        <button class="btn btn-primary" v-on:click="displayDetails">View</button>
      </div>
    </div>
    <details-modal v-if="showModal" :propData="propObject">
    </details-modal>
  </div>
</template>




<script>
import DetailsModal from "~/components/detailsModal.vue";

export default {
  name: "SimpleUpload",
  props: ["propObject"],
  data() {
    return {
      showModal: false,
      file: ""
    }
  },
  components: {
    DetailsModal
  },
  methods: {
    displayDetails() {
      this.showModal = !this.showModal;
    },
    selectFile() {
this.file=this.$refs.file.files[0];
},

async sendFile() {
const formData =new FormData();
formData.append('file', this.file);

try{
await axios.post('/upload',formData);
}catch(err)
{
console.log(err);
}
}
  }





};
</script>

