import React from 'react';
import './FileDownload.scss';
import { File } from 'react-feather';
import Separator from '@atoms/Separator/Separator';
import Button from '@atoms/Button/Button';


const FileDownload = (props) => {
  const { subject, text } = props;
  return (
    <div className="file-download">
      <div className="file-name">{subject}</div>
      <Separator />
      <div className="file-description">{text}</div>
      <div className="file-footer">
        <div className="icon">
          <File size={35} />
        </div>
        <Button name="Download" />
      </div>
    </div>
  );
};

FileDownload.propTypes = {};

export default FileDownload;
