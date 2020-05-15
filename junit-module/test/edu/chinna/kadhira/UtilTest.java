package edu.chinna.kadhira;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
import static edu.chinna.kadhira.util.Util.sayHello;

public class UtilTest{
	
	@Test
	public void canaryTest(){
		assertTrue(true);
	}
	
	@Test
	public void sayHelloTest(){
		assertEquals("Hello Ram",sayHello("Ram"));
	}
}