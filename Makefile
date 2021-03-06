pep8:
	pep8  --ignore=E501 eukalypse/eukalypse.py tests/*.py tests/features/*.py example/eukalypse_now/*.py

start_server_selenium:
	cd tests/assets/ && java -Dwebdriver.chrome.driver=chromedriver -jar selenium*.jar

start_server_web:
	cd tests/assets/webroot && python -m SimpleHTTPServer 8400
generate_reference_screenshots:
	python tests/generate_test_images.py --log=INFO
