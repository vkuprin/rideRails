import React from 'react';
import './TeamList.scss';
import TeamMemberPreview from '@molecules/TeamMemberPreview/TeamMemberPreview';
import Separator from '@atoms/Separator/Separator';

const TeamList = (props) => {
  const { teamList } = props;
  return (
    <div className="team-list">
      <div className="inner-container">
        <div className="title">Meet Our Team</div>
        <Separator />
        <div className="team-list-container">
          {teamList.map((item) => (
            <TeamMemberPreview
              key={item.id}
              img={item.img}
              name={item.name}
              about={item.about}
              position={item.position}
              id={item.id}
            />
          ))}
        </div>
      </div>
    </div>
  );
}

export default TeamList;
