import React, {PureComponent} from 'react';
import './MovingBalls.scss';

class MovingBalls extends PureComponent {
  constructor() {
    super();
    this.state = {x: 0, y: 0};
  }

  componentDidMount = (props, state) => {
    // binding mouse move on document level to not mess up calculations due to sub
    // components that affect it if we would bind it on container level.
    document.addEventListener('mousemove', this.onMouseMove)
  }

  onMouseMove = (e) => {
    // this.setState({
    //   x: e.x, y: e.y
    // })
  }

  render() {
    return (
      <div className="container">
        <div
          className="bg-ball_green_small"
          style={{transform: `translate3d(${(-650 + (this.state.x / 20))}px, ${(-300 + (this.state.y / 20))}px, 0px)`}}
        />
        <div
          className="bg-ball_blue_big"
          style={{transform: `translate3d(${(200 + (this.state.x / 7))}px, ${(-230 + (this.state.y / 15))}px, 0px)`}}
        />
        <div
          className="bg-ball_green_middle"
          style={{transform: `translate3d(${(215 + (this.state.x / 10))}px, ${(100 + (this.state.y / 11))}px, 0px)`}}
        />
        <div
          className="bg-ball_blue_middle"
          style={{transform: `translate3d(${(-690 + (this.state.x / 7))}px, ${(168 + (this.state.y / 30))}px, 0px)`}}
        />
        <div
          className="bg-ball_green_big"
          style={{transform: `translate3d(${(-50 + (this.state.x / 15))}px, ${(168 + (this.state.y / 25))}px, 0px)`}}
        />
      </div>
    );
  }
}

MovingBalls.propTypes = {};

export default MovingBalls;
