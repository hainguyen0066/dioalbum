<div class="menu-main-menu-container">
    <ul id="menu-main-menu" class="menu">
        <li class="{{ Request::is('home*') ? 'current-menu-parent' : '' }}">
            <a href="/home"><span>Home</span></a>
        </li>
        <li class="{{ Request::is('photography*') ? 'current-menu-parent' : '' }}">
            <a href="/photography"><span>Photography</span></a>
        <li class="{{ Request::is('films*') ? 'current-menu-parent' : '' }}"><a href="/films"><span>Films</span></a></li>
        </li>
        <li class="{{ Request::is('about*') ? 'current-menu-parent' : '' }}"><a href="/about"><span>About</span></a></li>
        <li class="{{ Request::is('contact*') ? 'current-menu-parent' : '' }}">
            <a href="/contact"><span>Contact</span></a>
        </li>
    </ul>
</div>