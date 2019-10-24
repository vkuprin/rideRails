import React, { PureComponent } from 'react';
import './HeaderStyles.scss';
import HeaderItem from '@atoms/HeaderItem/HeaderItem';
import Logo from '@atoms/Logo/Logo';
import Dropdown from '@molecules/Dropdown/Dropdown';
import Searcher from '@atoms/Search/Search';
import MobileMenu from '@atoms/MobileMenu/MobileMenu';
import MobileMenuItems from '@molecules/MobileMenuItems/MobileMenuItems';
import MobileMenuItem from '@molecules/MobileMenuItem/MobileMenuItem';
import { Link } from 'react-router-dom';

class Header extends PureComponent {
  constructor(props) {
    super(props);
    this.state = {
      hover: false,
    };
    this.hoverOn = this.hoverOn.bind(this);
    this.hoverOff = this.hoverOff.bind(this);
  }

  hoverOn() {
    this.setState({ hover: true });
  }

  toggleHover() {
    this.setState({ hover: !this.state.hover });
  }

  toSnakeCase = string => {
    let s;
    s = string.replace(/[^\w\s]/g, '');
    s = s.replace(/\s+/g, ' ');
    return s.toLowerCase().split(' ').join('-');
  };

  hoverOff() {
    this.setState({ hover: false });
  }

  handleClick() {
    this.setState({
      open: !this.state.open
    });
  }

  render() {
    const { product_links, literature_links } = this.props;
    const menu = ['Home', 'About', 'Products', 'Applications', 'Literature', 'Support', 'Contact Us', 'Our Blog']
    const menuItems = menu.map((val,index)=>{
      return (
        <MobileMenuItem
          key={index}
          delay={`${index * 0.1}s`}
          onClick={()=>{this.handleLinkClick();}}>{val}</MobileMenuItem>)
    });
    return (
      <header id="site-header" className="minimal-header clr inner-container" data-height="99">
        <div id="site-header-inner" className="clr">
          <Logo />
          <div id="site-navigation-wrap" className="no-top-border clr">
            <nav id="site-navigation" className="navigation main-navigation clr">
              <ul id="menu-xop-main-menu-2" className="main-menu dropdown-menu sf-menu sf-js-enabled">
                <HeaderItem route="/" name="Home" />
                <HeaderItem route="/about-us" name="About Us" />
                <Dropdown name="Products">
                  {product_links.map((item, index) => (
                    <HeaderItem key={index} route={`/product/${item.id}-${this.toSnakeCase(item.name)}`} name={item.name} />
                  ))}
                </Dropdown>
                <Dropdown name="Applications">
                  <HeaderItem route="/" name="Audio Conferencing" />
                  <HeaderItem route="/" name="Mission Critical Conferencing" />
                  <HeaderItem route="/" name="Secure Audio Conferencing" />
                  <HeaderItem route="/" name="Mobile Conferencing" />
                  <HeaderItem route="/" name="Instant Conferencing" />
                  <HeaderItem route="/" name="Hoot-n-Holler Conferencing" />
                  <HeaderItem route="/" name="Firebar Conferencing" />
                  <HeaderItem route="/" name="Web Conferencing" />
                  <HeaderItem route="/" name="Desktop Video Conferencing" />
                  <HeaderItem route="/" name="Enhanced Voicemail" />
                  <HeaderItem route="/" name="Mass Notification" />
                </Dropdown>
                <Dropdown name="Literature">
                  {literature_links.map((item, index) => (
                    <HeaderItem key={index} route={`/literature/${item.id}-${this.toSnakeCase(item.name)}`} name={item.name} />
                  ))}
                </Dropdown>
                <Dropdown name="Support">
                  <HeaderItem route="/training-videos" name="Training Videos" />
                  <HeaderItem route="/literature/testimonials" name="Testimonials" />
                  <HeaderItem route="/faq" name="Faq" />
                </Dropdown>
                <HeaderItem route="/contact-us" name="Contact Us" />
                <HeaderItem route="/blog" name="Our Blog" />
                {/* <Searcher /> */}
              </ul>
            </nav>
          </div>
          <div className="header_burger">
            <MobileMenu
                isOpen={this.state.open}
                menuClicked={this.handleClick.bind(this)}
                width={46}
                height={20}
                strokeWidth={2}
                rotate={0}
                color='#aabe00'
                borderRadius={0}
                animationDuration={0.5}
            />
          </div>
          <MobileMenuItems open={this.state.open}>
            {menuItems}
          </MobileMenuItems>
        </div>
      </header>
    );
  }
}

export default Header;
