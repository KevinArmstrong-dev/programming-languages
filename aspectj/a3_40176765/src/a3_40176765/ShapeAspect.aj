package a3_40176765;

public privileged aspect ShapeAspect {
	declare parents : Circle implements Shape;
	declare parents : Rectangle implements Shape;


	public String Circle.getName() {
		return "Circle";
	}
	
	public String Rectangle.getName(){
		return "Rectangle";
	}
	
	public String Circle.toString(){
		return this.getName() + "("+this.radius + ")";
	}
	
	public String Rectangle.toString(){
		return this.getName()+ "("+this.width + "," +this.height + ")";
	}

	public double getArea(double radius){
		if(radius < 0)
			return 0.0;
		return Math.PI * radius * radius;
	}
	
	pointcut circleArea(Circle c):
		execution(* Circle.getArea())&&
		this(c);
	
	pointcut circlePerimeter(Circle c):
		execution(* Circle.getPerimeter())&&
		this(c);
	
	pointcut rectanglePerimeter(Rectangle r):
		execution(* Rectangle.getPerimeter())&&
		this(r);
	
	double around(Circle c): circleArea(c) {
		return getArea(c.radius);
	}
	
	double around(Circle c): circlePerimeter(c) {
		if(c.radius < 0) {
			return 0.0;
		}else {
			return proceed(c);
		}
	}
	
	double around(Rectangle r): rectanglePerimeter(r) {
		if(r.width < 0 || r.height <0) {
			return 0.0;
		}else {
			return proceed(r);
		}
	}
	
//	private static int counter =1;
//	public int Shape.getId() {
//		return this.counter += 1;
//	}
//	
//	pointcut shapeCounter() : 
//		call (Shape.new());

}
