import React from 'react';
import PropTypes from 'prop-types';
import PageTitle from '@molecules/PageTitle/PageTitle';
import PageIntroduction from '@molecules/PageIntroduction/PageIntroduction';
import BlueSection from '@organisms/BlueSection/BlueSection';
// import TeamList from '@molecules/TeamList/TeamList';
import SloganWithRedirect from '@molecules/SloganWithRedirect/SloganWithRedirect';
import { Link } from 'react-router-dom'


const AboutUs = (props) => {
  return (
    <div>
      <PageTitle title="About Us"/>
      <PageIntroduction
          title="A group of telecom hardened engineers based in Dallas, Texas"
          text="<p>We are a group of telecom hardened engineers with distinguished backgrounds. Each one of our team members brings valuable experience gained at companies such as Alcatel, Lucent, DSC Communications, MCI, Cisco, Toshiba, NEC and several startups. The “XOP” in our company’s name signifies “Everything Over Packets”.</p><p>With advances in voice over packet technologies and the continued growth of the Internet, the stage has been set for a revolution of new applications and services. We continue to add innovative applications and features to our Value Added Service applications that are supported on legacy TDM and VOIP networks.</p><p>XOP Networks was founded in January 2003 and is a privately held corporation. We market our products worldwide through our OEM partners, re-sellers/channel partners & direct sales.</p>"
          />
      <BlueSection
          molecule="SloganDescription"
          backgroundImg="false"
          btnName="Read More"
          slogan="Slogan text for the company"
      />
      <SloganWithRedirect
        btnText="Contact Us"
        slogan="Do not wait any longer get in touch now."
        textPos="right"
        link="/contact-us"
      />
      <Link to="/">Home</Link>
    </div>
  )
}

AboutUs.propTypes = {

};

export default AboutUs;

