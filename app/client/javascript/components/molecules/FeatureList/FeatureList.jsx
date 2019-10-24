import React from 'react';
import './FeatureList.scss';
import FeatureListItem from '@atoms/FeatureListItem/FeatureListItem';

const FeatureList = (props) => {
  const { list } = props;
  return (
    <div className="feature-list">
      {list.map((item, index) => (
        <FeatureListItem
          key={item.id}
          icon={item.icon}
          feature={item.feature}
          description={item.description}
        />
      ))}
    </div>
  );
};

export default FeatureList;
