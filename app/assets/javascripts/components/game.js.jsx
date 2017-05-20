var Game = React.createClass({
  propTypes: {
    cells: React.PropTypes.string
  },

  render: function() {
    var cells = JSON.parse(this.props.cells);

    var cellsList = cells.map(function(cell){
      return <p key={cell.id}>{cell.living}</p>;
    })

    console.log(cellsList);

    return (
      <div>
        <div>Cells: {cellsList}</div>
      </div>
    );
  }
});
