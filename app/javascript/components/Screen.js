import React from 'react'

export default class Screen extends React.Component {

  renderSeatColor(i) {
    if (this.props.selects.some((element) => element === i)) {
      return ("yellow");
    } else {
      return ("red");
    }
  }

  renderSeat(i) {
    return (
      <Seat
        number={i}
        onClick={() => this.props.onClick(i)}
        color={this.renderSeatColor(i)}
      />
    );
  }
    
  nullSeat() {
    return (
      <button className="null-seat"　disabled>
      </button>
    );
  }

  render() {
      
    const status = "SCREEN2";

    return (
      <div>
        <div className="screen">{status}</div>
        <div style={{margin:'auto',width:'50%'}}>
          <div className="board-row">
            {this.nullSeat("A1")}
            {this.nullSeat("A2")}
            {this.renderSeat("A3")}
            {this.renderSeat("A4")}
            {this.renderSeat("A5")}
            {this.renderSeat("A6")}
            {this.renderSeat("A7")}
            {this.renderSeat("A8")}
            {this.renderSeat("A9")}
            {this.renderSeat("A10")}
            {this.renderSeat("A11")}
            {this.renderSeat("A12")}
            {this.renderSeat("A13")}
            {this.renderSeat("A14")}
            {this.renderSeat("A15")}
          </div>
          <div className="board-row">
            {this.nullSeat("B1")}
            {this.nullSeat("B2")}
            {this.renderSeat("B3")}
            {this.renderSeat("B4")}
            {this.renderSeat("B5")}
            {this.renderSeat("B6")}
            {this.renderSeat("B7")}
            {this.renderSeat("B8")}
            {this.renderSeat("B9")}
            {this.renderSeat("B10")}
            {this.renderSeat("B11")}
            {this.renderSeat("B12")}
            {this.renderSeat("B13")}
            {this.renderSeat("B14")}
            {this.renderSeat("B15")}
          </div>
          <div className="board-row">
            {this.nullSeat("C1")}
            {this.nullSeat("C2")}
            {this.renderSeat("C3")}
            {this.renderSeat("C4")}
            {this.renderSeat("C5")}
            {this.renderSeat("C6")}
            {this.renderSeat("C7")}
            {this.renderSeat("C8")}
            {this.renderSeat("C9")}
            {this.renderSeat("C10")}
            {this.renderSeat("C11")}
            {this.renderSeat("C12")}
            {this.renderSeat("C13")}
            {this.renderSeat("C14")}
            {this.renderSeat("C15")}
          </div>
          <div className="board-row">
            {this.nullSeat("D1")}
            {this.nullSeat("D2")}
            {this.nullSeat("D3")}
            {this.nullSeat("D4")}
            {this.renderSeat("D5")}
            {this.renderSeat("D6")}
            {this.renderSeat("D7")}
            {this.renderSeat("D8")}
            {this.renderSeat("D9")}
            {this.renderSeat("D10")}
            {this.renderSeat("D11")}
            {this.renderSeat("D12")}
            {this.renderSeat("D13")}
            {this.renderSeat("D14")}
            {this.renderSeat("D15")}
          </div>
          <div className="board-row">
            {this.nullSeat("E1")}
            {this.nullSeat("E2")}
            {this.nullSeat("E3")}
            {this.nullSeat("E4")}
            {this.renderSeat("E5")}
            {this.renderSeat("E6")}
            {this.renderSeat("E7")}
            {this.renderSeat("E8")}
            {this.renderSeat("E9")}
            {this.renderSeat("E10")}
            {this.renderSeat("E11")}
            {this.renderSeat("E12")}
            {this.renderSeat("E13")}
            {this.renderSeat("E14")}
            {this.renderSeat("E15")}
          </div>
          <div className="board-row">
            {this.nullSeat("F1")}
            {this.nullSeat("F2")}
            {this.nullSeat("F3")}
            {this.nullSeat("F4")}
            {this.renderSeat("F5")}
            {this.renderSeat("F6")}
            {this.renderSeat("F7")}
            {this.renderSeat("F8")}
            {this.renderSeat("F9")}
            {this.renderSeat("F10")}
            {this.renderSeat("F11")}
            {this.renderSeat("F12")}
            {this.renderSeat("F13")}
            {this.renderSeat("F14")}
            {this.renderSeat("F15")}
          </div>
          <div className="board-row">
            {this.nullSeat("G1")}
            {this.nullSeat("G2")}
            {this.nullSeat("G3")}
            {this.nullSeat("G4")}
            {this.renderSeat("G5")}
            {this.renderSeat("G6")}
            {this.renderSeat("G7")}
            {this.renderSeat("G8")}
            {this.renderSeat("G9")}
            {this.renderSeat("G10")}
            {this.renderSeat("G11")}
            {this.renderSeat("G12")}
            {this.renderSeat("G13")}
            {this.renderSeat("G14")}
            {this.renderSeat("G15")}
          </div>
          <div className="board-row">
            {this.nullSeat("H1")}
            {this.nullSeat("H2")}
            {this.nullSeat("H3")}
            {this.nullSeat("H4")}
            {this.renderSeat("H5")}
            {this.renderSeat("H6")}
            {this.renderSeat("H7")}
            {this.renderSeat("H8")}
            {this.renderSeat("H9")}
            {this.renderSeat("H10")}
            {this.renderSeat("H11")}
            {this.renderSeat("H12")}
            {this.renderSeat("H13")}
            {this.renderSeat("H14")}
            {this.renderSeat("H15")}
          </div>
          <div className="board-row">
            {this.renderSeat("I1")}
            {this.renderSeat("I2")}
            {this.nullSeat("I3")}
            {this.nullSeat("I4")}
            {this.renderSeat("I5")}
            {this.renderSeat("I6")}
            {this.renderSeat("I7")}
            {this.renderSeat("I8")}
            {this.renderSeat("I9")}
            {this.renderSeat("I10")}
            {this.renderSeat("I11")}
            {this.renderSeat("I12")}
            {this.renderSeat("I13")}
            {this.renderSeat("I14")}
            {this.renderSeat("I15")}
          </div>
          <div className="board-row">
            {this.renderSeat("J1")}
            {this.renderSeat("J2")}
            {this.renderSeat("J3")}
            {this.renderSeat("J4")}
            {this.renderSeat("J5")}
            {this.renderSeat("J6")}
            {this.renderSeat("J7")}
            {this.renderSeat("J8")}
            {this.renderSeat("J9")}
            {this.renderSeat("J10")}
            {this.renderSeat("J11")}
            {this.renderSeat("J12")}
            {this.renderSeat("J13")}
            {this.renderSeat("J14")}
            {this.renderSeat("J15")}
          </div>
        </div>
      </div>
    );
  }
}

class Seat extends React.Component {

  render() {
    return (
      <button
        className="seat"
        onClick={() => this.props.onClick()}
        style={{background: this.props.color}}
      >
        {this.props.number}
      </button>
    );
  }
}