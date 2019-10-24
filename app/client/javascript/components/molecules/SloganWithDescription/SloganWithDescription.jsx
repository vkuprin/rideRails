import React from 'react';
import './SloganWithDescription.scss';
import ReactHtmlParser from 'react-html-parser';
import Button from '@atoms/Button/Button';
import Separator from '@atoms/Separator/Separator';

const SloganWithDescription = (props) => {
  const { btnName, description, slogan } = props;
  return (
    <div className="slogan-with-description">
      <h1 className="slogan">
        {slogan}
      </h1>
      <Separator topLineColor="#fff" bottomLineColor="#fff" />
      <div className="description">
        {ReactHtmlParser(description)}
      </div>
      <Button name={btnName} />
    </div>
  );
};

SloganWithDescription.propTypes = {};

export default SloganWithDescription;
