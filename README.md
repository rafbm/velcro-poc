Velcro.js – Ajax bliss (Proof of concept)
=========================================

Velcro can be considered an evolution of Chris Wanstrath’s [PJAX](http://pjax.heroku.com/).

Like PJAX, Velcro is used for seamlessly changing a part of a page instead of reloading and re-rendering a whole new page.

However, Velcro differs from PJAX on some fundamental aspects.

# Principles

- The true benefit of Velcro is that CSS and JS assets aren’t reloaded nor re-executed. This greatly speeds up rendering.
- Transferring only the piece of content needed (without the layout) is considered micro-optimization. As long as only one HTTP request is made, transferring the extra bytes of your layout is less of a big deal than you might think.
- There is no reason for all this to require the use of `history.pushState`. In any AJAX context, including operations made in browsers not supporting `history.pushState`, Velcro can be of good help.

# Benefits

- No server-side tweaks needed. Completely drop-in.
- Can update multiple parts of a page at a time.
- Doesn’t require the use of `history.pushState`.

# Proof of concept setup
    git clone git@github.com:rafBM/velcro-poc.git
    cd velcro-poc
    gem install sinatra sprockets coffee-script shotgun
    shotgun
