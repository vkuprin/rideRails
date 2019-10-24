import React from 'react';
import './PageTitle.scss';

const PageTitle = (props) => {
  const { title } = props;
  return (
    <header className="pageHeader">
      <div className="inner-container">
        <h1>{title}</h1>
      </div>
    </header>
  );
};

export default PageTitle;
