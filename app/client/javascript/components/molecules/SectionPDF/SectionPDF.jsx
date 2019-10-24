import React from 'react';
import { File } from 'react-feather';
import './SectionPDFStyles.scss';
import img from '@images/usecase-image.png';
import Button from '@atoms/Button/Button';
import Separator from '@atoms/Separator/Separator';

const SectionPDF = () => (
  <section className="pdf-blue-section">
    <div className="inner-container">
      <div className="flex-box">
        <div className="use-case-information">
          <div className="use-case-head">
            <div className="title">Possible use Case</div>
            <div className="sub-title">Universal Service Nodes</div>
          </div>
          <div className="pdf-separator">
            <Separator />
          </div>
          <p className="description">
              Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem
              Ipsum has been the industry's standard dummy text ever since the 1500s, when an
              unknown printer took a galley of type and scrambled it to make a type specimen book.
              It has survived not only five centuries, but also the leap into electronic
              typesetting, remaining essentially unchanged. It was popularised in the 1960s with
              the release of Letraset sheets containing Lorem Ipsum passages, and more recently
              with desktop publishing software like Aldus PageMaker including versions of Lorem
              Ipsum.
          </p>
          <div className="pdf-footer">
            <div className="download-file">
              <a href="/">
                <File className="icon" />
                  Download PDF
              </a>
            </div>
            <div className="pdf-button">
              <Button name="More Literature" />
            </div>
          </div>
        </div>
        <div className="use-case-image">
          <img src={img} alt="" />
        </div>
      </div>
    </div>
  </section>
);

SectionPDF.propTypes = {};

export default SectionPDF;
