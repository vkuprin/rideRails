import React from 'react';
import { PhoneCall } from 'react-feather';
import './ApplicationItem.scss';

const ApplicationItem = (props) => (
  <div className="application_item">
    <div className="application_icon"><PhoneCall /></div>
    {props.feature}
  </div>
);

export default ApplicationItem;
