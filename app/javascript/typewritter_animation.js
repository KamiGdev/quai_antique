window.addEventListener("turbo:load", () => {
    // h1 Typewriter effect on: Sign in, sign out, registration, contact and menu pages
    let el = document.querySelector(`#typewriterEffect`)
    let messageArray = [el.innerText];
    let textPosition = 0;
    const speed = 100;

    function typewriter() {
        const element = document.querySelector("#typewriterEffect")
        element.innerHTML = messageArray[0].substring(0, textPosition) + '<span>|</span>'; /* substring function will make the typewriter effect and span will make the blinker effect */

        if (textPosition++ != messageArray[0].length)
            setTimeout(typewriter, speed) /* Call function until the end of the sentence */
    }

    typewriter()
})


