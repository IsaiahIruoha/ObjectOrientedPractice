
class Ant {

  float Antx, Anty;
  Food enemy;

  Ant() {
    this.Antx = floor(random(width));
    this.Anty = floor(random(height));
  }

  void sketch() {

    fill(120);
    ellipse(this.Antx, this.Anty, 10, 10);

    if (this.enemy == null) {
      this.enemy = apples[floor(random(apples.length))];
    } else {
      if (this.Antx > this.enemy.Foodx) Antx -= 2;
      if (this.Antx < this.enemy.Foodx) Antx += 2;
      if (this.Anty > this.enemy.Foody) Anty -= 2;
      if (this.Anty < this.enemy.Foody) Anty += 2;

      if (dist(Antx, Anty, enemy.Foodx, enemy.Foody) < 5) {
        this.enemy.amount--;
        if (this.enemy.amount < 0) {
          this.enemy.amount = 0;
        }

        if (this.enemy.amount <= 0) {
          this.enemy = null;
        }
      }
    }
  }
}
