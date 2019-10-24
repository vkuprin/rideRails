import React, { Component } from 'react';
import Tabs from '@molecules/Tabs/Tabs';
import './Video.scss';
import Modal from '@atoms/Modal/Modal';

class Video extends Component {
  state = { isModalOpen: false };

  openModal() {
    this.setState({ isModalOpen: true })
  }

  closeModal() {
    this.setState({ isModalOpen: false })
  }
  render() {
    return (
      <div>
        <Tabs>
          <div label="Audio Conference">
            <h1 className="tab_title">Please click on the links below to view training videos:</h1>
            <ul className="tab_inside">
              <li onClick={() => this.openModal()}>Audio Conferencing – Introduction</li>
              <li>Audio Conferencing – Overview</li>
              <li>Audio Conferencing – Set up Conference Room</li>
              <li>Audio Conferencing – Set up Conference Room, Cont.</li>
            </ul>
          </div>
          <div label="Firebar Conferencing">
            <h1 className="tab_title">Please click on the links below to view training videos:</h1>
            <ul className="tab_inside">
              <li>Audio Conferencing – Set up Conference Room</li>
              <li>Audio Conferencing – Set up Conference Room, Cont.</li>
            </ul>
          </div>
          <div label="Hoot-N-Holler">
            <h1 className="tab_title">Please click on the links below to view training videos:</h1>
            <ul className="tab_inside">
              <li>Audio Conferencing – Introduction</li>
              <li>Audio Conferencing – Set up Conference Room, Cont.</li>
            </ul>
          </div>
          <div label="Mass Notification">
            <h1 className="tab_title">Please click on the links below to view training videos:</h1>
            <ul className="tab_inside">
              <li>Audio Conferencing – Introduction</li>
              <li>Audio Conferencing – Set up Conference Room, Cont.</li>
            </ul>
          </div>
          <div label="Web Conference">
            <h1 className="tab_title">Please click on the links below to view training videos:</h1>
            <ul className="tab_inside">
              <li>Audio Conferencing – Set up Conference Room, Cont.</li>
            </ul>
          </div>
        </Tabs>
        <Modal
             width={950}
             height={340}
             noBackdrop={true}
             isOpen={this.state.isModalOpen}
             onClose={() => this.closeModal()}
            >
            <iframe width="100%" height="100%" src="https://www.youtube.com/embed/YAxGrx9oSGk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          </Modal>
      </div>
    );
  }
}

Video.propTypes = {

};

export default Video;
