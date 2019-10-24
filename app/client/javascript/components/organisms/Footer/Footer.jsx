import React, { PureComponent } from 'react';
import {
  Facebook, Instagram, Twitter, Youtube,
} from 'react-feather';
import './Footer.scss';
import logo from '@images/footer-logo.png';


class Footer extends PureComponent {
  render() {
    return (
      <footer className="footer">
        <div className="inner-container">
          <img className="footer_logo" src={logo} alt="logo" />
          <div className="footer_container">
            <div className="footer_items first_box">
              <div className="footer_title">
                <div className="footer_title">Contacts:</div>
                <ul className="footer_group">
                  <li>
                    <span className="green">Phone:</span>
                    972-590-0200
                  </li>
                  <li>
                    <span className="green">Fax:</span>
                    972-535-0364
                  </li>
                  <li>
                    <span className="green">Location:</span>
                    17218 Preston RD. Suite 2400, Dallas, Texas. 75252
                  </li>
                  <li>
                    <span className="green">Email:</span>
                    sales@xopnetworks.com
                  </li>
                </ul>
              </div>
            </div>

            <div className="footer_items">
              <div className="footer_title">Menu:</div>
              <ul className="footer_group col-xs">
                <li className="footer_subtitle">Home</li>
                <li className="footer_subtitle">About</li>
                <li className="footer_subtitle">Products</li>
                <li className="footer_subtitle">Applications</li>
                <li className="footer_subtitle">Literature</li>
                <li className="footer_subtitle">Contacts</li>
              </ul>
            </div>

            <div className="footer_items">
              <div className="footer_title">Resources:</div>
              <ul className="footer_group">
                <li className="footer_subtitle">Blog</li>
                <li className="footer_subtitle">Press Releases</li>
                <li className="footer_subtitle">FAQs</li>
                <li className="footer_subtitle">Training Videos</li>
                <li className="footer_subtitle">Quick Start Guides</li>
                <li className="footer_subtitle">Brochures</li>
              </ul>
            </div>

            <div className="footer_items">
              <div className="footer_title">Follow Us:</div>
              <div className="footer_social">
                <div className="footer_icon">
                  <Facebook />
                </div>
                <div className="footer_icon">
                  <Instagram />
                </div>
                <div className="footer_icon">
                  <Twitter />
                </div>
                <div className="footer_icon">
                  <Youtube />
                </div>
              </div>
            </div>
          </div>
        </div>
        <div className="footer_copyright">
          <div className="footer_copyright_text">Copyright © 2019 XOP Networks</div>
        </div>
      </footer>
    );
  }
}

export default Footer;
