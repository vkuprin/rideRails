import React from 'react';
import './OverviewText.scss';
import Separator from '@atoms/Separator/Separator';

const OverviewText = (props) => {
  const { description, title } = props;
  return (
    <div className="overview-text">
      <div className="title">
        {title}
      </div>
      <Separator />
      <div className="description">
        {description}
      </div>
    </div>
  );
};

export default OverviewText;
