castle = {
	'dungeon' => [
		'rats',
		'torches',
		'shackles'],
	'main hall' => [
		'table',
		'fireplace',
		'dias'],
	'bed chamber' => [
		'bed',
		'parlor',
		'walk in closet'],
	'attic' => []
}

p castle['dungeon'].last
p castle['main hall'][0]
castle['bed chamber'].delete("parlor")
p castle['bed chamber']
castle['attic'].push("treasure chest")
p castle['attic']