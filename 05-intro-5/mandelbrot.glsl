vec2 calc(vec2 z, vec2 c) {
  return vec2(z.x * z.x - z.y * z.y, 2.0 * z.x * z.y) + c;
}

bool mandelbrotConverges(vec2 z) {
  return length(z) < 2.0;
}

bool mandelbrot(vec2 c) {

	vec2 result = vec2(0, 0);

	for(int i=0; i<100; ++i) {
	  result = calc(result, c);
	}

  return mandelbrotConverges(result);
}

//Do not change this line or the name of the above function
#pragma glslify: export(mandelbrot)
