Velcro.js – Ajax bliss
======================

Velcro can be considered an evolution of Chris Wanstrath’s [PJAX](...).

Like PJAX, Velcro is used for seamlessly changing a part (or, with Velcro, multiple parts) of a page instead of reloading and re-rendering a whole new page.

However, Velcro differs from PJAX on some fundamental aspects.

# Principles

- The true benefit of Velcro is the fact that CSS and JS assets aren’t reloaded nor re-executed. This greatly speeds up rendering.
- Transferring only the piece of content needed (without the layout) is considered micro-optimization. As long as only one HTTP request is done, transferring the extra bytes of your layout is less of a big deal that you might think.
- There is no reason for all this to require a `history.pushState` context. In any AJAX context, Velcro can be of good help.

# Benefits

- No server-side tweaks needed. Completely drop-in.
- You can update multiple parts of a page as easily. No need for additional JavaScript called on a `complete` event or the like.
- You can use Velcro without pushState.
