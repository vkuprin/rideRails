import React, { PureComponent } from 'react';
import './DetailedFeatureList.scss';
import DetailedFeatureListItem from '@atoms/DetailedFeatureListItem/DetailedFeatureListItem';
import Separator from '@atoms/Separator/Separator';
import side_image from '@images/squere-image.png';

class DetailedFeatureList extends PureComponent {
  render() {
    return (
      <div className="detailed-feature-list">
        <div className="inner-container">
          <div className="info">
            <div className="slogan">{this.props.purpose}</div>
            <Separator />
            <div className="feature-list">
              {this.props.list.map((item, index) => <DetailedFeatureListItem key={item.id} feature={item.feature} />)}
            </div>
          </div>
          <div className="side-container">
            <div className="side-image">
              <img className="side_item" src={side_image} alt="side_image" />
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default DetailedFeatureList
