// Open all details tags when printing.
window.addEventListener( 'beforeprint', () => {
    [].forEach.call( document.querySelectorAll( 'details' ), el => el.setAttribute( 'open', '' ) )
} )

// Close all details tags after printing.
window.addEventListener( 'afterprint', () => {
    [].forEach.call( document.querySelectorAll( 'details' ), el => el.removeAttribute( 'open' ) )
} )