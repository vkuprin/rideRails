import React from 'react';
import './FeatureListItem.scss';
import { Box } from 'react-feather';

const FeatureListItem = (props) => (
  <div className="feature-list-item">
    <div className="icon">
      <Box size="90" />
    </div>
    <div className="feature">{props.feature}</div>
    <div className="description">{props.description}</div>
  </div>
);

export default FeatureListItem;
