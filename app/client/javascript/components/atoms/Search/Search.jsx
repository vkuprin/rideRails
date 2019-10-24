import React from 'react';
import { Search } from 'react-feather';

const Searcher = () => (
  <li className="search-toggle-li">
    <a href="/" className="site-search-toggle search-dropdown-toggle">
      <span className="icon-magnifier">
        <Search size={18} />
      </span>
    </a>
  </li>
);

export default Searcher;
