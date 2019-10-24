import React from 'react';
import './SmallTextWithImg.scss';
import pic from '@images/keith-norman.png';


const SmallTextWithImg = (props) => {
  const { subText, subject, text } = props;
  return (
    <div className="text-description">
      <div className="image">
        <img src={pic} alt="User image" />
      </div>
      <div className="text-container">
        <div className="subject">{subject}</div>
        <div className="subText">{subText}</div>
        <div className="text">{text}</div>
      </div>
    </div>
  );
};

SmallTextWithImg.propTypes = {};

export default SmallTextWithImg;
