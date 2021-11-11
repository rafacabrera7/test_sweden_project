function addClickableCallback(elementID, callback) {
  document.querySelector(`#${elementID}`).addEventListener("click", callback)
  document.querySelector(`#${elementID}`).style.cursor = "pointer"
}

function editFormFromTable(number, table, form) {
  document.querySelector(`#${table}`)

  let rowInfo = Array.prototype.map.call(document.querySelectorAll(`#${table} tr`), function (tr) {
    return Array.prototype.map.call(tr.querySelectorAll('td'), function (td) {
      return td.innerHTML;
    });
  })[number];
  forminputs = document.querySelector(`#${form}`).getElementsByTagName("input")

  for (let i = 0; i < forminputs.length; i++) {
    if (forminputs[i].type === "file") { continue }
    forminputs[i].value = rowInfo[i + 1]
  }

  if (form === "insert_client_form") {
    switchNavTab("insert_client")
  }
}

function editClientBodyReport(client_id, bodymsg, client_body_id) {
  forminputs = document.querySelector("#insert_client_body_form").getElementsByTagName("input")
  forminputstextarea = document.querySelector("#insert_client_body_form").getElementsByTagName("textarea")
  forminputs[0].value = client_id
  forminputs[1].value = client_body_id
  forminputstextarea[0].value = bodymsg

  switchNavTab("client_insert_body")
}


function editJobOffer(name, description, email_joboffer, company,
  city, url, maincategory, subcategory) {
  forminputs = document.querySelector("#insert_job_form").getElementsByTagName("input")
  forminputs[0].value = name
  forminputs[1].value = description
  forminputs[2].value = email_joboffer
  forminputs[3].value = company
  forminputs[4].value = city
  forminputs[5].value = url
  forminputs[6].value = maincategory
  forminputs[7].value = subcategory

  switchNavTab("insert_job")
}


function performGetRequest(url, statusdisplay = null, successjsoncallback = null) {
  if (statusdisplay !== null) {
    statusdisplay.innerText = "..."
  }
  // authorization_header = ""
  fetch(url, {
    method: "GET",
    credentials: 'same-origin',
    // headers: {
    //   'Authorization': authorization_header
    // },
  }).then(res => {
    res.json().then(json => {

      if (json["success"]) {
        if (successjsoncallback !== null) {
          successjsoncallback(json)
        }
      }
      if (statusdisplay !== null && res.status === 200) {
        statusdisplay.innerText = json["msg"]
      } else if (res.status === 422) {
        statusdisplay.innerText = "Couldn't Process Request, Check Input"
      }
    }).catch(e => {
      if (statusdisplay !== null) {
        statusdisplay.innerText = `Invalid Server Response`
      }
    })
  }).catch(res => {
    if (statusdisplay !== null) {
      statusdisplay.innerText = "Connection Error";
    }
  })

  if (statusdisplay !== null) {
    setTimeout(() => { statusdisplay.innerText = "" }, 5000); // reset text after 5s
  }
}


function performPOSTRequest(url, reqbody, statusdisplay = null, successjsoncallback = null) {
  if (statusdisplay !== null) {
    statusdisplay.innerText = "..."
  }
  // authorization_header = ""
  fetch(url, {
    method: "POST",
    body: JSON.stringify(reqbody), headers: {
      'Content-Type': 'application/json',
      credentials: 'same-origin',
      // 'Authorization': authorization_header
    },
  }).then(res => {
    res.json().then(json => {
      if (json["success"]) {
        if (successjsoncallback !== null) {
          successjsoncallback(json)
        }
      }
      if (statusdisplay !== null && res.status === 200) {
        statusdisplay.innerText = json["msg"]
      } else if (res.status === 422) {
        statusdisplay.innerText = "Couldn't Process Request, Check Input"
      }
    }).catch(e => {
      if (statusdisplay !== null) {
        statusdisplay.innerText = `Invalid Server Response`
      }
    })
  }).catch(res => {
    if (statusdisplay !== null) {
      statusdisplay.innerText = "Connection Error";
    }
  })

  if (statusdisplay !== null) {
    setTimeout(() => { statusdisplay.innerText = "" }, 5000); // reset text after 5s
  }
}



function SubmitFormGETViaQuery(uri, form_id, display_id = null, successjsoncallback = null) {
  formData = new FormData(document.querySelector(`#${form_id}`))
  searchParams = new URLSearchParams(formData);
  queryString = searchParams.toString();
  document.querySelector(`#${form_id}`).reset()
  statusdisplay = null
  if (display_id !== null) {
    statusdisplay = document.querySelector(`#${display_id}`)
  }
  performGetRequest(uri + '?' + queryString, statusdisplay, successjsoncallback)
}

function SubmitFormPOST(uri, form_id, display_id = null, successjsoncallback = null) {
  formData = new FormData(document.querySelector(`#${form_id}`))
  let object = {};
  formData.forEach((value, key) => {
    if (key === "message_body_id" && value === "") { return }
    object[key] = value;
  })



  document.querySelector(`#${form_id}`).reset()
  if (display_id !== null) {
    statusdisplay = document.querySelector(`#${display_id}`)
  }

  performPOSTRequest(uri, object, statusdisplay, successjsoncallback)
}

function insert_tablerow(table_id, listtoinsert, editcallback = null) {
  let tbodyRef = document.querySelector(`#${table_id}`).getElementsByTagName('tbody')[0]
  let row = tbodyRef.insertRow()
  for (let i = 0; i < listtoinsert.length; i++) {
    row.insertCell(i).innerText = listtoinsert[i]
  }

  // insert svg icon

  if (editcallback !== null) {
    let cell = row.insertCell(listtoinsert.length)
    cell.innerHTML = `
  <image src="/web/static/icons/edit.svg" style="width: 20px; height: 20px;"></image>
  `
    cell.addEventListener("click", editcallback)
    cell.style.cursor = "pointer"
  }

}

function updateClientTables(clientlist) {
  // reset table
  let nodelist = document.querySelectorAll("#client_list_table tbody tr")
  nodelist.forEach(ele => {
    ele.remove()
  });

  // repopulate
  for (let i = 0; i < clientlist.length; i++) {
    let client = clientlist[i];
    insert_tablerow("client_list_table",
      [i + 1, client["client_id"], client["name"], client["email"],
      client["email_password"], client["date_inserted"], client["number_of_apps"]],
      () => { editFormFromTable(i + 1, "client_list_table", "insert_client_form") })
  }

}


function updateClientBodyReportTables(bodieslist, client_id) {
  // reset table
  let nodelist = document.querySelectorAll("#client_body_report_table tbody tr")
  nodelist.forEach(ele => {
    ele.remove()
  });

  // repopulate
  for (let i = 0; i < bodieslist.length; i++) {
    let body = bodieslist[i];
    insert_tablerow("client_body_report_table", [i + 1, body["id"], body["message_body"]],
      () => { editClientBodyReport(client_id, body["message_body"], body["id"]) })
  }
}


function updateJobTables(jobslist) {
  // reset table
  let nodelist = document.querySelectorAll("#joblist_table tbody tr")
  nodelist.forEach(ele => {
    ele.remove()
  });

  // repopulate
  for (let i = 0; i < jobslist.length; i++) {
    let job = jobslist[i];
    insert_tablerow("joblist_table", [i + 1, job["job_name"], job["company"], job["email"], job["url"], job["date"]])
  }

}

function updateJobOffersTables(jobofferslist) {
  // reset table
  let nodelist = document.querySelectorAll("#joboffers_table tbody tr")
  nodelist.forEach(ele => {
    ele.remove()
  });

  // repopulate
  for (let i = 0; i < jobofferslist.length; i++) {
    let joboffer = jobofferslist[i];
    insert_tablerow("joboffers_table", [i + 1, joboffer["job_name"], joboffer["description"],
    joboffer["company"], joboffer["url"], joboffer["date"], joboffer["category"], joboffer["subcategory"]],
      () => {
        editJobOffer(joboffer["job_name"], joboffer["description"], joboffer["email_joboffer"],
          joboffer["company"], joboffer["city"], joboffer["url"],
          joboffer["category"], joboffer["subcategory"]
        );
      })
  }

}


function updateCompaniesTables() {
  performGetRequest("/list_jobcompanies", null, (json) => {
    // reset table
    let nodelist = document.querySelectorAll("#company_list_table tbody tr")
    nodelist.forEach(ele => {
      ele.remove()
    });
    // repopulate
    let i = 1
    companies = json["companies"]
    for (let id in companies) {
      insert_tablerow("company_list_table", [i, id, companies[id]])
      i += 1
    }
    document.querySelector("#total_jobcompanies_display").innerText = `Total Companies: ${json["count"]}`
  })
}


function updateCompanyJobTable(jobslist) {
  // reset table
  let nodelist = document.querySelectorAll("#company_joblist_table tbody tr")
  nodelist.forEach(ele => {
    ele.remove()
  });

  // repopulate
  for (let i = 0; i < jobslist.length; i++) {
    let job = jobslist[i];
    insert_tablerow("company_joblist_table", [i + 1, job["job_name"], job["company"], job["url"], job["city"],
    job["date"], job["category"], job["subcategory"]])
  }

}


function updateCVReportTable(cvs) {
  let nodelist = document.querySelectorAll("#cv_report_table tbody tr")
  nodelist.forEach(ele => {
    ele.remove()
  });

  // repopulate
  for (let i = 0; i < cvs.length; i++) {
    let cv = cvs[i];
    insert_tablerow("cv_report_table", [i + 1, cv["id_cv"], cv["cv_name"]],
      () => { editFormFromTable(i + 1, "cv_report_table", "cv_submit_form"); switchNavTab("client_upload_cv"); })
  }
}


function uploadCV() {
  let client_id = document.querySelector("#cv_client_id").value
  let cv_name = document.querySelector("#cv_name").value
  let fileInput = document.querySelector("#cvfile_input")

  let statusdisplay = document.querySelector("#upload_cv_status_report")

  let data = new FormData()
  if (fileInput.value !== '') {
    data.append('CVfile', fileInput.files[0])
  } else {
    data.append('CVfile', "");
  }

  statusdisplay.innerText = "..."

  fetch(`/uploadCV/?client_id=${client_id}&cv_name=${cv_name}`, {
    method: 'POST',
    body: data,
    credentials: 'same-origin',
  }).then((res) => {
    if (res.status === 200) {
      document.querySelector("#cv_submit_form").reset()
      res.json().then((json) => {
        statusdisplay.innerText = json["msg"]
      }).catch((e) => { statusdisplay.innerText = "Couldn't Understand Server Response" })
    } else {
      statusdisplay.innerText = "Couldn't Process Request, Check Input"
    }

  }).catch((e) => {
    statusdisplay.innerText = "Connection Error"
  })

  setTimeout(() => { statusdisplay.innerText = "" }, 5000); // reset text after 5s
}

// On Init
function Initialize() {
  InitializeNavigation()

  // Scrape
  addClickableCallback("submit_scrape", () => {
    SubmitFormGETViaQuery("/scrape/", "scrape_form", "scrape_status_report")
  })

  // Clients Functionalities
  addClickableCallback("submit_insert_client", () => {
    SubmitFormPOST("/insert_client", "insert_client_form", "insert_client_status_report")
  })

  addClickableCallback("update_client_list", () => {
    performGetRequest("/list_clients", null, (json) => {
      document.querySelector("#total_clients_display").innerText = `Total Clients: ${json["count"]} `
      updateClientTables(json["clients"])
    })
  })

  addClickableCallback("search_client_report", () => {
    SubmitFormGETViaQuery("/client_report/", "client_report_form", null, (json) => {
      updateJobTables(json["jobs"])
      document.querySelector("#max_client_report_display").innerText = `Max Applications for that client: ${json["max_applications"]} `
    })
  })

  addClickableCallback("submit_insert_client_body", () => {
    SubmitFormPOST("/client_insert_body/", "insert_client_body_form", "insert_client_body_status_report")
  })

  addClickableCallback("search_client_body_report", () => {
    SubmitFormGETViaQuery("/client_body_report/", "client_body_report_form", null, (json) => {
      updateClientBodyReportTables(json["bodies"], json["client_id"])
    })
  })


  // Job Offers Functionalities
  addClickableCallback("submit_insert_job", () => {
    SubmitFormPOST("/insert_job_offer", "insert_job_form", "insert_job_status_report")
  })

  addClickableCallback("search_job_offers", () => {
    performGetRequest("/list_job_offer", null, (json) => {
      updateJobOffersTables(json["joboffers"])
    })
  })

  addClickableCallback("update_jobcompanies_list", () => {
    updateCompaniesTables()
  })

  addClickableCallback("search_company_report", () => {
    SubmitFormGETViaQuery("/company_report/", "company_report_form", null, (json) => {
      updateCompanyJobTable(json["jobs"])
    })
  })

  // Apply functionality
  addClickableCallback("submit_apply", () => {
    SubmitFormPOST("/apply", "apply_form", "apply_status_report")
  })


  addClickableCallback("cv_upload_submit", () => {
    uploadCV()
  })

  addClickableCallback("search_cv_report", () => {
    SubmitFormGETViaQuery("/cv_report/", "client_cv_report_form", null, (json) => {
      updateCVReportTable(json["cvs"])
    })
  })

}


if (document.readyState !== 'loading') {
  Initialize();
} else {
  document.addEventListener('DOMContentLoaded', function () {
    Initialize();
  });
}
