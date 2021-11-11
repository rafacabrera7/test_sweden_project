"use strict";

const tabs = ["scrape", "apply", "insert_client", "client_list", "client_report", "client_insert_body", "client_body_report", "client_upload_cv", "client_cv_report",
  "insert_job", "job_offer", "job_companies_list", "job_companies_report"];
function switchNavTab(tabname) {
  // Disable all tabs
  tabs.forEach(element => {
    document.querySelector(`#${element}_tab`).classList.remove("active")
    document.querySelector(`#${element}_card`).hidden = true
  });
  document.querySelector(`#client_tab`).classList.remove("active")
  document.querySelector(`#job_tab`).classList.remove("active")

  // Enable specific tab
  if (tabname.includes("client")) {
    document.querySelector(`#client_tab`).classList.add("active")
  }
  else if (tabname.includes("job")) {
    document.querySelector(`#job_tab`).classList.add("active")
  }
  else {
    document.querySelector(`#${tabname}_tab`).classList.add("active")
  }

  document.querySelector(`#${tabname}_card`).hidden = false
}



function onNavStart() {
  tabs.forEach(element => {
    document.querySelector(`#${element}_tab`).style.cursor = "pointer" // make hand icon clickable
    // add onclick switch function
    document.querySelector(`#${element}_tab`).addEventListener("click", () => {
      switchNavTab(`${element}`);
    })
  });

  switchNavTab("scrape") // set starting tab
}


function InitializeNavigation() {
  onNavStart()
  // When the user clicks on the button, scroll to the top of the document
  //Get the button
  let mybutton = document.getElementById("btn-back-to-top");
  // back to top
  mybutton.addEventListener("click", () => {
    document.body.scrollTop = 0
    document.documentElement.scrollTop = 0
  });

  // When the user scrolls down 20px from the top of the document, show the button
  window.onscroll = () => {
    if (
      document.body.scrollTop > 20 ||
      document.documentElement.scrollTop > 20
    ) {
      mybutton.style.display = "block";
    } else {
      mybutton.style.display = "none";
    }
  }
}



