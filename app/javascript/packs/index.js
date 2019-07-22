// const roomId = /\d$/.exec(window.location)[0];

// window.setInterval(fetchStatus, 1000);

// function fetchStatus() {
//   window.fetch("/statuses/" + roomId).then(response => {
//     response.json().then(data => {
//       updateTicketTitle(data.ticket.title);
//       updateVoteUI(data.votes, data.currentUser);
//     });
//   });
// }

// function updateTicketTitle(title) {
//   const titleElement = document.getElementById("ticket-title");
//   if (title !== titleElement.dataset.value) {
//     titleElement.dataset.value = title;
//     document.getElementById("ticket-title-value").textContent = title;
//   }
// }

// function updateVoteUI(votes, currentUser) {
//   debugger;
// }
