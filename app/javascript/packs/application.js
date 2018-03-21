import "bootstrap";
import { initChat } from "../components/chat.js";
import { chatValidator} from "../components/chatValidator.js";
import { blur } from "../components/blur.js";
import { initSlider } from "../components/sliders.js";
import { submitQuestion } from "../components/questions.js";

if (document.getElementsByClassName("chat-page")[0]) {
  initChat();
  chatValidator();
  blur();
}
if (document.getElementsByClassName("prof-new-form")[0]) {
  initSlider();
}
if (document.getElementsByClassName("Qpage")[0]) {
  submitQuestion();
}

