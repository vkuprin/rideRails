import React from 'react';
import './PageIntroduction.scss';
import ReactHtmlParser from 'react-html-parser';
import Separator from '@atoms/Separator/Separator';
import sideImage from '@images/squere-image.png';

const PageIntroduction = (props) => {
  const { text, title, subtitle } = props;
  return (
    <div className="page-introduction-container">
      <div className="inner-container">
        <div className="page-introduction">
          <h2>{title}</h2>
          {subtitle ? <h3>{subtitle}</h3> : ''}
          <Separator />
          <div className="text">
            {ReactHtmlParser(text)}
          </div>
        </div>
        <div className="side-container">
          <div className="side-image">
            <img className="side_item" src={sideImage} alt="side_image" />
          </div>
        </div>
      </div>
    </div>
  );
};

export default PageIntroduction;
