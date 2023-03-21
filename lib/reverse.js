function reverse(items) {
  let stringItems = items.map(i => i.toString());
  let split = stringItems.join('').split('');
  for (let i = 0; i < split.length / 2; i++) {
    [split[i], split[split.length - i - 1]] = [split[split.length - i - 1], split[i]];
  }
  return split.map(i => parseInt(i));
}
