$fn=50;
rotate(90, [1, 0, 0])
	translate([0, 4, 0])
		linear_extrude(height = 30)
			import(file = "test.dxf");
cylinder(h=5, r=30);