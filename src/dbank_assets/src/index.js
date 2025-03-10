import { dbank } from "../../declarations/dbank";
console.log("DBank import:", dbank);

window.addEventListener("load", async () => {
  try {
    update();
  } catch (error) {
    console.error("Error calling checkBalance:", error);  
  }
});

document.querySelector("form").addEventListener("submit", async (e) => {
  e.preventDefault();

  const button = e.target.querySelector("#submit-btn");

  const inputAmount = parseFloat(document.getElementById("input-amount").value);
  const outputAmount = parseFloat(document.getElementById("withdrawal-amount").value);

  button.setAttribute("disabled", true);

  if (document.getElementById("input-amount").value.length != 0) {
    await dbank.topUp(inputAmount);
  }

  if (document.getElementById("withdrawal-amount").value.length != 0) {
    await dbank.withdraw(outputAmount);
  }

  await dbank.compound();
    
    update();

    document.getElementById("input-amount").value = "";
    document.getElementById("withdrawal-amount").value = "";
    button.removeAttribute("disabled");
});

const update = async() => {
  const currentAmount = await dbank.checkBalance();
  document.getElementById("value").innerText = Math.round(currentAmount * 100) / 100;
};