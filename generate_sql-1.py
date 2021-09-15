import random
import datetime
from datetime import date, timedelta
import os


def employees(limit: int = 20):
	names = [
		'Alex',
		'Susan',
		'Temmyzeus',
		'Jeph',
		'Doyin',
		'Evans',
		'Priscilla',
		'Blessing',
		'Uchenna',
		'Flourish'
	]

	surname = [
		'John',
		'Felix',
		'Adebayo',
		'Wellington',
		'Ezekiel',
		'Houston',
		'James',
		'Ose',
		'Great',
		'Awoyele'
	]

	departments = [
		'Finance',
		'Auditing',
		'Admin',
		'Research and Development',
		'workshop',
		'Customer care',
		'Product management',
		'IT management',
		'Finance',
		'Auditing',
	]

	birth_date = [
		date(1978, 4 ,9 ),
		date(1998, 9 ,19 ),
		date(1968, 5 ,7 ),
		date(1993, 3 ,19 ),
		date(1996, 8 ,20 ),
		date(1968, 2, 20 ),
		date(1988, 4 , 9 ),
		date(1970, 3 ,19 ),
		date(1980, 10 ,31),
		date(1997, 4 ,21 )

	]

	sex = [
		'M',
		'F',
		'M',
		'M',
		'F',
		'M',
		'F',
		'F',
		'M',
		'F'
	]



	template = '(\'%s\',\'%s\',\'%s\',\'%s\', \'%s\' ),\n'

	file_name = 'employees.txt'

	if os.path.exists(file_name):
		os.remove(file_name)

	for i in range(limit):

		with open(file_name, mode='a') as r:
			product_model_zip = list(zip(names,surname, departments,birth_date,sex))

			r.write(template % (random.choice(product_model_zip)))



def employees(limit: int = 20):
	branch_name =[
		'Clifton',
		'Schford',
		'Rutherford',
		'Scott'
	]

	manager_start_date = [
		date(2005, 4 ,9 ),
		date(2008, 9 ,19 ),
		date(2006, 5 ,7 ),
		date(2003, 3 ,19 ),
		date(2016, 8 ,20 ),
		date(2018, 2, 20 ),
		date(2020, 4 , 9 ),
		date(2021, 3 ,19 ),
		date(2010, 10 ,31),
		date(2017, 4 ,21 )

	]



	template = '(\'%s\',\'%s\' ),\n'

	file_name = 'employees.txt'

	if os.path.exists(file_name):
		os.remove(file_name)

	for i in range(limit):

		with open(file_name, mode='a') as r:
			product_model_zip = list(zip(branch_name,manager_start_date))

			r.write(template % (random.choice(product_model_zip)))


def create_readings(limit: int = 20):
	# code snippet by rg3915 https://gist.github.com/rg3915/db907d7455a4949dbe69
	def gen_datetime(min_year=2021, max_year=datetime.now().year):
	    # generate a datetime in format yyyy-mm-dd hh:mm:ss.000000
	    start = datetime(min_year, 1, 1, 00, 00, 00)
	    years = max_year - min_year + 1
	    end = start + timedelta(days=365 * years)
	    return start + (end - start) * random.random()

	file_name = 'readings.sql'

	if os.path.exists(file_name):
		os.remove(file_name)

	for i in range(limit):
		log_time = gen_datetime()
		location = int(random.randint(1, limit))
		temp = random.randrange(30.0, 50.0)
		pm_25 = random.randint(30, 70)

		# remove microseconds
		log_time = log_time.replace(microsecond=0)

		template = '(\'%s\', %.0f,\'%.2f\' , \'%.2f\'),\n'

		with open(file_name, mode='a') as f:

			f.write(template % (log_time, location, temp, pm_25))

def create_locations(limit: int = 20):
	'''Generate random latitude, longitude and altitude and write to sql file'''
	file_name = 'locations.sql'

	if os.path.exists(file_name):
		os.remove(file_name)

	for i in range(limit):
		lat  = random.randrange(-90., 90.)
		long = random.randrange(-180., 180.)
		alt = random.randrange(5., 50.)

		template = '(\'%.2f\', \'%.2f\' , \'%.2f\'),\n'

		with open(file_name, mode='a') as r:

			r.write(template % (lat, long, alt))

if __name__ == '__main__':
	# create_sensors()
	employees()
	# create_locations()