"Gofer new
	repository: (MCHttpRepository location: 'http://3g2k.localtunnel.com/ss/foobar/' user: '' password: ''); 
	package: String cr, 'foobar';
 	load."
Gofer new
	repository: (MCHttpRepository location: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/CITest14' user: 'hubert.hesse' password: '02e33236'); 
 	package: String cr, 'CiTest14';
 	load.
!
"
| testSuite testResult |
	testSuite := TestSuite named: 'test'.
	Test addToSuiteFromSelectors: testSuite.
	testResult := TestResult new.
	testSuite run: testResult."
