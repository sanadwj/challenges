def lineup_generator(list, &block)
  list.map.with_index(1) do |player, index|
    yield(index, player)
  end
end

describe 'lineup generator' do
  before do
    @player = ["player1", "player2", "player3"]
  end

  it 'can build a list driven lineup' do
    lineup = lineup_generator(@player) { |x, y| "#{x}. #{y}" }
    expect(lineup).to eq(["1. player1", "2. player2", "3. player3"])
  end

  it 'can build html driven lineup' do
    lineup = lineup_generator(@player) { |x, y| "<p>#{x}<p> <div>#{y}<div>" }
    expect(lineup).to eq(["<p>1<p> <div>player1<div>", "<p>2<p> <div>player2<div>", "<p>3<p> <div>player3<div>"])
  end
end
