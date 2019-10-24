// require('turbolinks').start();
// require("@rails/activestorage").start()

import ReactOnRails from 'react-on-rails';

// atoms components
import ScrollButton from '@atoms/ScrollButton/ScrollButton';
import Separator from '@atoms/Separator/Separator';

// molecules components
import OverviewText from '@molecules/OverviewText/OverviewText';
import PageTitle from '@molecules/PageTitle/PageTitle';
import FeatureProducts from '@molecules/FeatureProducts/FeatureProducts';
import News from '@molecules/News/News';
import Head from '@molecules/Head/Head';
import Applications from '@molecules/Applications/Applications';
import SectionPDF from '@molecules/SectionPDF/SectionPDF';
import SloganWithRedirect from '@molecules/SloganWithRedirect/SloganWithRedirect';
import TestimonialsCarousel from '@molecules/TestimonialsCarousel/TestimonialsCarousel';
import DetailedFeatureList from '@molecules/DetailedFeatureList/DetailedFeatureList';
import BigBox from '@molecules/BigBox/BigBox';
import PageIntroduction from '@molecules/PageIntroduction/PageIntroduction';
import FileDownload from '@molecules/FileDownload/FileDownload';
import SmallTextWithImg from '@molecules/SmallTextWithImg/SmallTextWithImg';
import ContactForm from '@molecules/ContactForm/ContactForm';

// organisms components
import Header from '@organisms/Header/Header';
import BlueSection from '@organisms/BlueSection/BlueSection';
import TeamList from '@organisms/TeamList/TeamList';
import Contacts from '@organisms/Contacts/Contacts';
import Faq from '@organisms/Faq/Faq';
import Footer from '@organisms/Footer/Footer';
import Blog from '@organisms/Blog/Blog';
import Video from '@organisms/Video/Video'
import General from '../packs/index'

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  General,
  Blog,
  BigBox,
  Header,
  Footer,
  Head,
  FeatureProducts,
  BlueSection,
  News,
  Applications,
  SectionPDF,
  TestimonialsCarousel,
  SloganWithRedirect,
  PageTitle,
  OverviewText,
  DetailedFeatureList,
  TeamList,
  PageIntroduction,
  FileDownload,
  SmallTextWithImg,
  Separator,
  Contacts,
  ContactForm,
  Faq,
  ScrollButton,
  Video
});
