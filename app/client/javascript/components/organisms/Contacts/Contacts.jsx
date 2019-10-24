import React, { PureComponent } from 'react';
import './ContactsStyles.scss';
import sideImage from '@images/side_image.png';
import GoogleIframe from '@atoms/GoogleIframe/GoogleIframe';
import ContactForm from '@molecules/ContactForm/ContactForm';
import top_corner from '@images/blue-bottom.png';

class Contacts extends PureComponent {
  render() {
    return (
      <div className="contacts">
        <div className="customer-support-side-container">
          <img className="contact_side_item" src={sideImage} alt="side_image" />
        </div>
        <div className="inner-container">
          <div className="customer_title">GET IN TOUCH!</div>
          <div className="separator-test" />
          <div className="customer_title_bold">
            <div className="customer_title_phone">Call Us now:</div>
            <div className="contact_phone">972-590-0200</div>
          </div>
          <p className="contact_subtitle">
            Questions not answered, we are here to help! Please fill out the form
            and one of our associates will get back to you!
          </p>
          <ContactForm />
          <div className="customer_title customer_title_requisites">Requisites:</div>
          <div className="separator-test" />
          <div className="customer_support_text">
            <p className="contact_requisites">
              <div>
                <span className="contact_requisites_title">XOP Networks Ltd</span>
                  17218 Preston RD. Suite 2400
                  Dallas, Texas. 75252
              </div>
              <div className="contact_email">
                Email: sales@xopnetworks.com
              </div>
            </p>
          </div>
        </div>
        <img className="contact_top_corner" src={top_corner} alt="top_corner" />
        <GoogleIframe />
      </div>
    );
  }
}

export default Contacts;
