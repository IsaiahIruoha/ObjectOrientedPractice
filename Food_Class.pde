
class Food {
  
  float Foodx, Foody;
  float amount;
  
  Food() {
    this.Foodx = floor(random(width));
    this.Foody = floor(random(height));
    this.amount = 10;
  }
  
  void sketch() {
    
    fill(0);
    rect(this.Foodx, this.Foody, amount, amount); 
    
  }
  
}
