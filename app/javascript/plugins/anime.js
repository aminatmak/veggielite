import anime from 'animejs/lib/anime.es.js';

const triggerAnimation = () => {
  const path = document.querySelector('#container path');

  if (path){
    const path = anime.path('#container path');

    anime({
      targets: '#container .square',
      translateX: path('x'),
      translateY: path('y'),
      rotate: path('angle'),
      easing: 'linear',
      duration: 3000,
      loop: true
    });
  }
}

export { triggerAnimation }
