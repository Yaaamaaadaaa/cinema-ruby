import React, { Component } from 'react';
import ReactDOM from 'react-dom';
import Screen from './Screen'

export default class CinemaApp extends Component {
  constructor(props) {
    super(props);
    this.state = {
      selects: [],
      screen: [this.props.screen],
      schedule: [this.props.schedule]
    };
  }

  handleClick(i) {
    const selects = this.state.selects.slice();
    if (selects.some((element) => element === i)) {
      const index = selects.findIndex((element) => element === i);
      selects.splice(index, 1);
    } else if (selects.length >= 5) {
      return true;
    } else {
      selects.push(i);
    }
    this.setState({selects: selects});
  }

  resetSelects() {
    const selects = this.state.selects.slice();
    selects.splice(0);
    this.setState({selects: selects});
  }

  returnNumberOfSeats(i) {
    if (i == 1) {
      return "スクリーン1　全208席";
    } else if (i == 2) {
      return "スクリーン2　全123席";
    } else if (i == 3) {
      return "スクリーン3　全178席";
    } else if (i == 4) {
      return "スクリーン4　全178席";
    } else if (i == 5) {
      return "スクリーン5　全178席";
    } else if (i == 6) {
      return "スクリーン6　全164席";
    } else if (i == 7) {
      return "スクリーン7　全123席";
    } else {
      return "スクリーン8　全123席";
    }
  }

  render() {
    return (
      <div className="reservation">
        <div>{this.returnNumberOfSeats(this.state.screen)}</div>
        <Screen
          onClick={(i) => this.handleClick(i)}
          screen={this.state.screen}
          selects={this.state.selects}
        />
        <div>選択中の座席</div>
        <Selects
          number={this.state.selects}
        />
        <button onClick={() => this.resetSelects() }>リセット</button>
        <button>次へ</button>
      </div>
    );
  }
}

class Selects extends Component {
  render() {
    return (
      <div  className="board-row">
        <button className="seat">{this.props.number[0]}</button>
        <button className="seat">{this.props.number[1]}</button>
        <button className="seat">{this.props.number[2]}</button>
        <button className="seat">{this.props.number[3]}</button>
        <button className="seat">{this.props.number[4]}</button>
      </div>
    );
  }
}

if (document.getElementById('cinemaApp')) {
  ReactDOM.render(<CinemaApp />, document.getElementById('cinemaApp'));
}