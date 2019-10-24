import React, { PureComponent } from 'react';
import './BlueSection.scss';
import SloganWithDescription from '@molecules/SloganWithDescription/SloganWithDescription';
import FeatureList from '@molecules/FeatureList/FeatureList';

class BlueSection extends PureComponent {
  render() {
    const {
      slogan, list, molecule, btnName, description, backgroundImg,
    } = this.props;
    return (
      <section className="blue-section">
        {
          backgroundImg !== false ? <div className="outer-background" /> : ''
}
        <div className="inner-container">
          {molecule === 'SloganDescription' ? (
            <SloganWithDescription
              slogan={slogan}
              description={description}
              btnName={btnName}
            />
          )
            : <FeatureList list={list} />}
        </div>
      </section>
    );
  }
}

export default BlueSection;
