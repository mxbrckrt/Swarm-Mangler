/**
 * =============================================================================
 * SWARM-MANGLER MANUAL - INTERACTIVE NAVIGATION & BILINGUAL ENGINE
 * Author: Max Bruckert (2026)
 * =============================================================================
 */

document.addEventListener("DOMContentLoaded", function () {
  const topBtn = document.getElementById("floating-top-btn");
  const navLinks = document.querySelectorAll(".nav-item a");
  const sections = document.querySelectorAll("section.chapter");
  const searchInput = document.getElementById("nav-search-input");
  const langEnBtn = document.getElementById("btn-lang-en");
  const langFrBtn = document.getElementById("btn-lang-fr");

  // 1. Language Toggle System
  function setLanguage(lang) {
    if (lang !== "en" && lang !== "fr") lang = "en";
    document.body.setAttribute("data-lang", lang);

    if (lang === "fr") {
      if (langFrBtn) langFrBtn.classList.add("active");
      if (langEnBtn) langEnBtn.classList.remove("active");
    } else {
      if (langEnBtn) langEnBtn.classList.add("active");
      if (langFrBtn) langFrBtn.classList.remove("active");
    }

    try {
      localStorage.setItem("sm_manual_lang", lang);
    } catch (e) {}
  }

  if (langEnBtn) {
    langEnBtn.addEventListener("click", function () {
      setLanguage("en");
    });
  }

  if (langFrBtn) {
    langFrBtn.addEventListener("click", function () {
      setLanguage("fr");
    });
  }

  // Restore saved language or default to French if browser prefers French
  let initialLang = "fr";
  try {
    const saved = localStorage.getItem("sm_manual_lang");
    if (saved === "en" || saved === "fr") {
      initialLang = saved;
    } else if (navigator.language && navigator.language.startsWith("en")) {
      initialLang = "en";
    }
  } catch (e) {}
  setLanguage(initialLang);

  // 2. Show/Hide Floating Top Button on Scroll
  window.addEventListener("scroll", function () {
    if (window.scrollY > 350) {
      if (topBtn) topBtn.style.display = "flex";
    } else {
      if (topBtn) topBtn.style.display = "none";
    }

    // Active Section Tracking
    let currentId = "";
    const scrollPos = window.scrollY + 140;

    sections.forEach(function (sec) {
      const top = sec.offsetTop;
      const height = sec.offsetHeight;
      if (scrollPos >= top && scrollPos < top + height) {
        currentId = sec.getAttribute("id");
      }
    });

    if (currentId) {
      navLinks.forEach(function (link) {
        link.classList.remove("active");
        if (link.getAttribute("href") === "#" + currentId) {
          link.classList.add("active");
        }
      });
    }
  });

  // Top button click
  if (topBtn) {
    topBtn.addEventListener("click", function () {
      window.scrollTo({ top: 0, behavior: "smooth" });
    });
  }

  // 3. Quick Section Search Filter
  if (searchInput) {
    searchInput.addEventListener("input", function (e) {
      const query = e.target.value.toLowerCase().trim();
      const groups = document.querySelectorAll(".nav-group");

      groups.forEach(function (grp) {
        const items = grp.querySelectorAll(".nav-item");
        let hasVisible = false;

        items.forEach(function (item) {
          const text = item.textContent.toLowerCase();
          if (query === "" || text.includes(query)) {
            item.style.display = "block";
            hasVisible = true;
          } else {
            item.style.display = "none";
          }
        });

        grp.style.display = hasVisible ? "block" : "none";
      });
    });
  }
});
