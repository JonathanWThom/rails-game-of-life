var Game = React.createClass({
  propTypes: {
    cells: React.PropTypes.string
  },

  render: function() {
    return (
      <div>
        <div>Cells: {this.props.cells}</div>
      </div>
    );
  }
});

