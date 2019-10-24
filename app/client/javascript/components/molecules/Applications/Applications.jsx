import React from 'react';
import Separator from '@atoms/Separator/Separator';
import ApplicationItem from '@atoms/ApplicationItem/ApplicationItem';
import './ApplicationsStyles.scss';

const Applications = (props) => {
  const { list } = props;
  const half_list_length = Math.ceil(list.length / 2);

  return (
    <div className="application">
      <div className="application_title">
        Applications
      </div>
      <Separator topLineColor="#fff" bottomLineColor="#fff" />
      <div className="application_items">

        <div className="application_first">
          {list.slice(half_list_length)
            .map((item, index) => <ApplicationItem feature={item.feature} key={index} />)}
        </div>

        <div className="application_second">
          {list.splice(0, half_list_length)
            .map((item, index) => <ApplicationItem feature={item.feature} key={index} />)}
        </div>

      </div>
    </div>
  );
};

Applications.propTypes = {};

export default Applications;
