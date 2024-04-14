<script setup>
import Footer from '../shared/Footer.vue';
</script>
<template>
    <div class="form-signin  mx-auto p-5 rounded">
        <div class="image-login w-100"><img src="/images/img-login.png" alt=""></div>
        <form class="row g-3 needs-validation" novalidate>
        <div class="col-md-12">
          <label for="validationCustomUsername" class="form-label">Username</label>
          <div class="input-group has-validation">
            <input type="text" class="form-control" id="validationCustomUsername" aria-describedby="inputGroupPrepend" required>
            <div class="invalid-feedback">
              Please choose a username.
            </div>
          </div>
        </div>
        <div class="col-md-12">
          <label for="validationCustom03" class="form-label">City</label>
          <input type="text" class="form-control" id="validationCustom03" required>
          <div class="invalid-feedback">
            Please provide a valid city.
          </div>
        </div>
        <div class="col-12">
          <div class="form-check">
            <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
            <label class="form-check-label" for="invalidCheck">
              Agree to terms and conditions
            </label>
            <div class="invalid-feedback">
              You must agree before submitting.
            </div>
          </div>
        </div>
        <div class="col-12">
          <button class="btn btn-primary" type="submit">Submit form</button>
        </div>
      </form>
    </div>

  <!-- Footer -->
  <div class="footer-login">
      <div><img src="" alt=""></div>
      <div><img src="" alt=""></div>
      <Footer />
  </div>
</template>
<style lang="scss">
.form-signin {
    position: relative;
    width: 630px;
    form {
        max-width: 516px;
    }
    .image-login {
        position: absolute;
        width: 100%;
        height: 100%;
        img {
            width: 100%;
        }
    }
}
</style>
