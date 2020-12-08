package a3_40176765;

public class Rectangle {
	
	private double width,height;
	
	public Rectangle(double width, double height) {
		this.width = width;
		this.height = height;
	}
	
	public double getPerimeter() {
		return 2 * (this.width + this.height);
	}
	
	public double getArea() {
		return this.height*this.width;
	}
	
}

