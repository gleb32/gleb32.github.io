const observer = new IntersectionObserver(entries => {
  entries.forEach(e => e.isIntersecting && e.target.classList.add('visible'));
});

document.querySelectorAll('.wow-slide').forEach(el => observer.observe(el));

document.addEventListener('keydown', e => {
  if (e.key === 'd') document.body.classList.toggle('dark');
});
