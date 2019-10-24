import React from 'react';
import './GoogleIframeStyles.scss';

const GoogleIframe = () => (
  <div className="google_maps">
    <iframe
      src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3346.708025343481!2d-96.80534688481268!3d32.98510418090972!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x864c23d821e19b71%3A0xfce88e21f504d5cc!2s17218%20Preston%20Rd%20%232400%2C%20Dallas%2C%20TX%2075252%2C%20USA!5e0!3m2!1sen!2slv!4v1568971301083!5m2!1sen!2slv"
      width="100%"
      height="551"
      frameBorder="0"
      allowFullScreen=""
    />
  </div>
);

GoogleIframe.propTypes = {};

export default GoogleIframe;
