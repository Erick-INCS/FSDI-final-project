import React, { useEffect } from "react";
import { InertiaLink } from "@inertiajs/inertia-react";
import { useTranslation } from 'react-i18next';

export default function Layout({ title, children }) {
    useEffect(() => {
        document.title = title;
    }, [title]);

    const { t, i18n } = useTranslation()

    const changeLanguage = (event) => {
        i18n.changeLanguage(event.target.value)
    }

    return (
            <div>
                <nav className="navbar navbar-expand-lg navbar-light bg-light">
                    <div className="container-fluid">
                        <InertiaLink
                            className="navbar-brand"
                            href="\"
                        >
                            Appname
                        </InertiaLink>
                        <button
                            className="navbar-toggler"
                            type="button"
                            data-bs-toggle="collapse"
                            data-bs-target="#navbarNav"
                            aria-controls="navbarNav"
                            aria-expanded="false"
                            aria-label="Toggle navigation"
                        >
                            <span className="navbar-toggler-icon"></span>
                        </button>
                        <div className="collapse navbar-collapse" id="navbarNav">
                            <ul className="navbar-nav me-auto">
                                <li className="nav-item">
                                    <InertiaLink className="nav-link" href="#">
                                        DIET & NUTRITION
                                    </InertiaLink>
                                </li>
                                <li className="nav-item">
                                    <InertiaLink className="nav-link" href="#">
                                        FITNESS
                                    </InertiaLink>
                                </li>
                                <li className="nav-item">
                                    <InertiaLink className="nav-link" href="#">
                                        NEWS
                                    </InertiaLink>
                                </li>
                            </ul>
                            <section className="navbar-text lang-section">
                                <h6>
                                    {/* @if (Route::has('login'))
                                        @auth
                                            <InertiaLink href="{{ url('dashboard') }}" className="text-sm text-gray-700 underline">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" className="bi bi-gear" viewBox="0 0 16 16">
                                                    <path d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z"/>
                                                    <path d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z"/>
                                                </svg>
                                            </InertiaLink>
                                        @else
                                            <InertiaLink href="{{ url('login') }}" className="text-sm text-gray-700 underline">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" className="bi bi-door-open" viewBox="0 0 16 16">
                                                    <path d="M8.5 10c-.276 0-.5-.448-.5-1s.224-1 .5-1 .5.448.5 1-.224 1-.5 1z"/>
                                                    <path d="M10.828.122A.5.5 0 0 1 11 .5V1h.5A1.5 1.5 0 0 1 13 2.5V15h1.5a.5.5 0 0 1 0 1h-13a.5.5 0 0 1 0-1H3V1.5a.5.5 0 0 1 .43-.495l7-1a.5.5 0 0 1 .398.117zM11.5 2H11v13h1V2.5a.5.5 0 0 0-.5-.5zM4 1.934V15h6V1.077l-6 .857z"/>
                                                </svg>
                                            </InertiaLink> 
                                            &nbsp;&nbsp;&nbsp;
                                            @if (Route::has('register'))
                                            @endif
                                        @endauth
                                @endif */}
                                    <a
                                        href="/#"
                                        className={i18n.language == 'en' ? 'active' : ''}
                                        onClick={()=>i18n.changeLanguage('en')}
                                    >
                                        En
                                    </a>
                                    |
                                    <a
                                        href="/#"
                                        className={i18n.language == 'es' ? 'active' : ''}
                                        onClick={()=>i18n.changeLanguage('es')}
                                    >
                                        Es
                                    </a>
                                </h6>
                            </section>
                        </div>
                    </div>
                </nav>

                <div className="d-flex bg-light" id="usrLevels">
                    <div>
                        <p>Basic</p>
                    </div>
                    <div className="selected">
                        <p>Intermediate</p>
                    </div>
                    <div>
                        <p>Advanced</p>
                    </div>
                </div>

                {children}

                <footer className="bg-dark text-white text-center p-2">
                    <h1 className="mt-1">Appname</h1>
                    <div className="mt-3 footer-links d-flex flex-column flex-md-row">
                        <InertiaLink>Privacy</InertiaLink>
                        <InertiaLink>Terms of Service</InertiaLink>
                        <InertiaLink>Ad Choices</InertiaLink>
                        <InertiaLink>Web Accessibility</InertiaLink>
                    </div>
                </footer>
            </div>
    );
}
