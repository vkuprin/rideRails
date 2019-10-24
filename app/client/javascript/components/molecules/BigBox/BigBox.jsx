import React from 'react';
import './BigBoxStyles.scss';
import image from '@images/user-img.png';

const BigBox = (props) => (
  <div className="container-box-big">
    <img src={image} alt="" />
    <div className="wrapper-box-big">
      <div className="subject-box-big">{props.article.subject}</div>
      <div className="description-box-big">{props.article.text.substring(0, 250) + '...'}</div>
      <div className="news_button">Read More</div>
    </div>
  </div>
);

export default BigBox;
