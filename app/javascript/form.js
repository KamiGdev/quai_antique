function onChange(event) {
    const people_el = document.getElementById('people')
    const date_el = document.getElementById('date')
    // On récupère le champs
    const people = people_el.value
    const date = date_el.value
    // On envoie la valeur au serveur
    fetch('/reservations/refresh_date?date=' + date + '&people_number=' + people)
        .then(res => res.text())
        .then(html => Turbo.renderStreamMessage(html))
    // On remplace avec la nouvelle valeur
}

// Launch functions at each calling events
document.addEventListener('turbo:load', () => {
    // Turbo script for the date refresh on reservation's page
    // Alert message script when the phone number is not typed correctly on reservation's page
    const phone_number = document.getElementById('reservation_phone_number')

    let el
    phone_number.oninput =  (e) => {
        const value = e.target.value
        if (!value.match(/^\+?[0-9]{10,50}$/)) {
            if (el) return

            e.target.style.marginBottom = 0
            e.target.classList.add('bg-red-100')
            el = document.createElement('p')
            el.innerText = "Merci de saisir au minimum 10 chiffres, sans espaces. L'indicatif avec + est optionnel."
            el.classList.add('text-red-500', 'text-left')
            console.log('element', e.target)
            console.log('parent', e.target.parentElement)
            e.target.parentElement.appendChild(el)
        } else {
            if (!el) return

            e.target.classList.remove('bg-red-100')
            el.remove()
            el = null
        }
    }
})



