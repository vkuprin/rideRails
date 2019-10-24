import React from 'react';
import { MoreHorizontal } from 'react-feather';
import './FeatureProductsStyles.scss';
import UniversalIcon from '@images/universal-service-node.svg';
import DigitalIcon from '@images/digital-collaboration-bridge.svg';
import FirebarIcon from '@images/ring-down-firebar.svg';

const FeatureProducts = () => (
  <div className="feature_products">
    <div className="feature_title">Featured Products</div>
    <div className="separator" />
    <div className="feature_boxes">
      <div className="feature_box zoom">
        <embed className="feature_icon" src={UniversalIcon} />
        <div className="feature_box_title">
            Universal Services Node
        </div>
        <div className="feature_icon_horizontal">
          <MoreHorizontal className="feature_icon_horizontal" color="#b0be36" size={38} />
        </div>
        <div className="feature_box_subtitle">
            The Universal Service Node (USN) enables improved productivity
            by providing multiple value added service applications on a single platform.
        </div>
        <div className="feature_learnmore">learn more</div>
      </div>
      <div className="feature_box zoom">
        <embed className="feature_icon" src={DigitalIcon} />
        <div className="feature_box_title">
            Digital Collaboration Bridge
        </div>
        <MoreHorizontal className="feature_icon_horizontal" color="#b0be36" size={38} />
        <div className="feature_box_subtitle">
            Digital Collaboration Bridge (DCB) addresses the needs of demanding conferencing
            users.
            This appliance integrates with an organization’s existing telephone and data network.
        </div>
        <div className="feature_learnmore">learn more</div>
      </div>
      <div className="feature_box zoom">
        <embed className="feature_icon" src={FirebarIcon} />
        <div className="feature_box_title">
            Ringdown Firebar Conference Server
        </div>
        <div className="feature_icon_horizontal">
          <MoreHorizontal className="feature_icon_horizontal" color="#b0be36" size={38} />
        </div>
        <div className="feature_box_subtitle">
            Ringdown Firebar Crash Net Conference Server scales from 8 ports to 96 ports.
            It provides direct termination for analog (Red) phones
        </div>
        <div className="feature_learnmore">learn more</div>
      </div>
    </div>
  </div>
);

FeatureProducts.propTypes = {};

export default FeatureProducts;
