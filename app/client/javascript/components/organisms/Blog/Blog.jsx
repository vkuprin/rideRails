import React, { Component } from 'react';
import BigBox from '@molecules/BigBox/BigBox';
import Pagination from '@atoms/Pagination/Pagination';
import './BlogStyles.scss';

class Blog extends Component {
  constructor(props) {
    super(props);
  }

  render() {
    const {
      articles, currentPage, perPage, totalCount,
    } = this.props;

    return (
      <div className="container-blog">
        <ul>
          {articles.map((article, index) => <li><BigBox key={index} article={article} /></li>)}
        </ul>

        <Pagination currentPage={currentPage} totalRecords={totalCount} perPage={perPage} />
      </div>
    );
  }
}

export default Blog;
