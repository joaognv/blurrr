import "bootstrap";
import { initChat } from "../components/chat.js";
import { initSlider } from "../components/sliders.js";
import { submitQuestion } from "../components/questions.js";

initSlider();
if (document.getElementsByClassName("chat-page")[0]) {
  initChat();
}
if (document.getElementsByClassName("chat-page")[0]) {
  submitQuestion();
}
