import React, { Component } from 'react';

class Pagination extends Component {
  constructor(props) {
    super(props);

    const { totalRecords, perPage } = props;

    this.totalPages = Math.ceil(totalRecords / perPage) + 1;
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(event) {
    // TODO: redirecting to next page.
  }

  render() {
    const { currentPage } = this.props;
    const renderPageNumbers = Array.from(Array(this.totalPages).keys()).slice(1).map((number) => (
      <li
        className={`page-number-blog ${currentPage === number ? 'active' : ''}`}
        key={number}
        id={`blogPage${number}`}
        data-page={number}
        onClick={this.handleClick}
      >
        {number}
      </li>
    ));

    return (
      <ul className="pagination-blog" id="page-numbers">
        {renderPageNumbers}
      </ul>
    );
  }
}

export default Pagination;
