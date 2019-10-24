import React from 'react';
import './TeamMemberPreview.scss';
import image from '@images/user-img.png';
import Buttons from '@atoms/Button/Button';

const TeamMemberPreview = (props) => {
  const {
    about, position, name, id,
  } = props;
  return (
    <div className="team-member">
      <div className="icon">
        <img src={image} alt="" />
      </div>
      <div className="name">
        {name}
      </div>
      <div className="position">
        {position}
      </div>
      <div className="about">
        {about.substring(0, 190)}
        ..
      </div>
      <Button
        name="Read More"
        color="blue"
        link={`/team/member/${id}-${name.replace(/\s/g, '-')
          .toLowerCase()}`}
      />
    </div>
  );
};

export default TeamMemberPreview;
