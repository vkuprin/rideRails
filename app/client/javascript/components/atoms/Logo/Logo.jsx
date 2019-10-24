import React from 'react';
import logo from '@images/logo_xop.png';

const Logo = () => (
    <div id="site-logo" className="clr">
      <div id="site-logo-inner" className="clr">
        <a href="/" className="custom-logo-link" rel="home">
          <img
            width="474"
            height="250"
            src={logo}
            className="custom-logo"
            alt="XOP Networks"
            sizes="(max-width: 474px) 100vw, 474px"
          />
        </a>
      </div>
    </div>
);

export default Logo;
