import React from 'react';
import './Dropdown.scss';

const Dropdown = (props) => (
  <li
    className="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children dropdown"
  >
    <a href="/" className="menu-link sf-with-ul hover-green">
      <span className="text-wrap">
        {props.name}
      </span>
    </a>
    <ul className="sub-menu">
      {props.children}
    </ul>
  </li>
);

Dropdown.propTypes = {};

export default Dropdown;
