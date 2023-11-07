<script setup>
import { ref, onMounted, onBeforeUnmount } from "vue";
import { RouterLink } from "vue-router";

const menus = ref([
  {
    id: 1,
    title: "DANH SÁCH CHIẾN DỊCH",
    to: "/danh-sach-chien-dich",
    child: [],
  },
  {
    id: 2,
    title: "KẾT QUẢ BÁN HÀNG",
    to: "/ket-qua-ban-hang",
  },
  {
    id: 3,
    title: "THEO DÕI HOA HỒNG",
    to: "/theo-doi-hoa-hong",
  },
  {
    id: 4,
    title: "SẢN PHẨM",
    to: "/san-pham",
    child: [
      {
        title: "Gói cước",
        to: "",
      },
      {
        title: "Bộ hòa mạng",
        to: "",
      },
      {
        title: "VieOn",
        to: "",
      },
      {
        title: "Bảo hiểm",
        to: "",
      },
    ],
  },
]);

const handleEventScroll = () => {
  var headerHeight = document.querySelector("header").offsetHeight;
  const header = document.querySelector("header");
  const toggleClass = "sticky";
  const currentScroll = window.pageYOffset;
  if (currentScroll > headerHeight) {
    header.classList.add(toggleClass);
  } else {
    header.classList.remove(toggleClass);
  }
};

onMounted(() => {
  window.addEventListener("scroll", handleEventScroll);
});

onBeforeUnmount(() => {
  window.removeEventListener("scroll", handleEventScroll);
});
</script>
<template>
  <header class="header">
    <div class="container container-custom">
      <div class="header-section">
        <div class="header-section__left">
          <div class="logo d-flex align-items-center">
            <a href="/">
              <img src="/images/logo.png" alt="logo" />
            </a>
          </div>
          <ul class="menu" v-for="menu in menus" :key="menu.id">
            <li class="menu__item">
              <RouterLink class="menu__item__name" :to="menu.to">
                {{ menu.title }}
              </RouterLink>
              <ul
                class="menu__item__sub"
                v-if="menu.child && menu.child.length"
              >
                <li
                  class="menu__item__sub__item"
                  v-for="child in menu.child"
                  :key="child.title"
                >
                  <a href="" class="menu__item__sub__name">
                    {{ child.title }}</a
                  >
                </li>
              </ul>
            </li>
          </ul>
        </div>
        <div class="header-section__right flex-grow-1">
          <div class="search d-flex justify-content-end align-items-center">
            <div class="position-relative">
              <form id="search-form">
                <input
                  type="text"
                  class="search__input w-100"
                  id="search-input"
                  placeholder="Nhập từ khóa tìm kiếm"
                />
                <div class="search__icon">
                  <button type="submit" class="border-0 bg-transparent">
                    <img src="/images/kính lúp.png" alt="search-icon" />
                  </button>
                </div>
              </form>
              <div
                class="position-absolute bg-color-10 w-100 d-none"
                id="search-results"
              ></div>
            </div>

            <img
              class="search__logo"
              src="/images/search@2x.png"
              alt="search-icon"
            />
          </div>
          <div class="delivery">
            <img
              class="delivery__icon"
              src="/images/Vector Smart Object.png"
              alt="delivery-icon"
            />
          </div>
          <div class="cart">
            <a href="/wishlist">
              <img
                class="cart__icon"
                src="/images/nut gio hang.png"
                alt="cart-icon"
              />
            </a>
          </div>
        </div>
      </div>
      <div class="row mobile">
        <div class="header-section">
          <div class="menu">
            <img
              src="/images/menu chinh@2x.png"
              class="menu__icon"
              data-bs-toggle="offcanvas"
              data-bs-target="#offcanvasTop"
              aria-controls="offcanvasTop"
            />
            <div
              class="offcanvas offcanvas-top"
              tabindex="-1"
              id="offcanvasTop"
              aria-labelledby="offcanvasTopLabel"
            >
              <ul class="menu__list d-flex flex-column" id="menu">
                <li
                  class="menu__list__item"
                  v-for="menu in menus"
                  :key="menu.id"
                >
                  <div class="d-flex position-relative">
                    <a class="menu__list__item__name" :href="menu.to">
                      >{{ menu.title }}
                    </a>
                    <div class="menu__list__item__down"></div>
                  </div>
                  <ul
                    class="menu__list__item__sub"
                    v-if="menu.child && menu.child.length"
                  >
                    <li
                      class="menu__list__item__sub__item"
                      v-for="child in menu.child"
                      :key="child.title"
                    >
                      <a href="" class="menu__list__item__sub__item__name">
                        {{ child.title }}
                      </a>
                    </li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
          <div class="logo">
            <a href="/" class="logo__link">
              <img src="/images/logo.png" class="logo__img" alt="logo" />
            </a>
          </div>
          <div class="operation">
            <div class="operation__search">
              <img
                class="operation__search__logo"
                src="/images/search.png"
                alt="search-icon"
              />
            </div>
            <div class="operation__delivery">
              <img
                class="operation__delivery__logo"
                src="/images/nut ship.png"
                alt="delivery-icon"
              />
            </div>
            <div class="operation__cart">
              <img
                class="operation__cart__logo"
                src="/images/nut gio hang.png"
                alt="cart-icon"
              />
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>
</template>
