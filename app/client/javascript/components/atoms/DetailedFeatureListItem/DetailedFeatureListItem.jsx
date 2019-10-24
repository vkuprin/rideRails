import React from 'react';
import './DetailedFeatureListItem.scss';
import { ChevronRight } from 'react-feather';

const DetailedFeatureListItem = (props) => (
  <div className="detailed-feature-list-item">
    <ChevronRight size="40" className="icon" />
    <div className="text">{props.feature}</div>
  </div>
);

export default DetailedFeatureListItem;
