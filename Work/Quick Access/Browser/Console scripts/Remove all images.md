```js
$$('img,picture,svg').forEach(e=>e.style.display='none');
```  

Future proof
```js
// Hide all existing and future images
const hideImages = (root) => {
  if (root.matches?.('img, picture, svg')) {
    root.style.setProperty('display', 'none', 'important');
  }

  root.querySelectorAll?.('img, picture, svg').forEach(e => {
    e.style.setProperty('display', 'none', 'important');
  });
};

// Hide images already present
hideImages(document);

// Watch for newly added images
const observer = new MutationObserver(mutations => {
  mutations.forEach(mutation => {
    mutation.addedNodes.forEach(node => {
      if (node.nodeType === 1) {
        hideImages(node);
      }
    });

    // Also handle images whose attributes change
    if (mutation.type === 'attributes' &&
        mutation.target.matches?.('img, picture, svg')) {
      hideImages(mutation.target);
    }
  });
});

observer.observe(document.documentElement, {
  childList: true,
  subtree: true,
  attributes: true,
  attributeFilter: ['src', 'srcset', 'style', 'class']
});
```  
- disable it
```js
observer.disconnect();
```  