# Laravel Bangladesh Geocode
[![Latest Stable Version](https://poser.pugx.org/sandofvega/bdgeocode/v/stable)](https://packagist.org/packages/sandofvega/bdgeocode)
[![Total Downloads](https://poser.pugx.org/sandofvega/bdgeocode/downloads)](https://packagist.org/packages/sandofvega/bdgeocode)
[![License](https://poser.pugx.org/sandofvega/bdgeocode/license)](https://packagist.org/packages/sandofvega/bdgeocode)
 
Division, District, Upazila and Union level fully mapped Database.

> All information, content, and spelling have been taken from the repository [nuhil/bangladesh-geocode](https://github.com/nuhil/bangladesh-geocode).

## Contents

- [Installation](#installation)
- [Configuration](#configuration)
- [Usage](#usage)
- [License](#license)
- [Contribution guidelines](#contribution-guidelines)

## Installation

In order to install Bdgeocode, just run this command in your project:

```bash
composer require sandofvega/bdgeocode
```


## Configuration

1) Run artisan migrate command:

```bash
php artisan migrate
```

After the migration, four new tables will be present:
- `divisions`
- `districts`
- `thanas`
- `unions`

2) Add Bdgeocode's seeder class to `database/seeds/DatabaseSeeder.php`:

```php
use Sandofvega\Bdgeocode\Seeds\BdgeocodeSeeder;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
        //
        $this->call(BdgeocodeSeeder::class);
    }
}
```

Now you are ready. When will you run the seed command (e.g. `db:seed` or `migrate:fresh --seed`) the Bdgeocode's data will be inserted into your database.

## Usage

You can get all data by using package's build-in models. E.g:

```php
use Sandofvega\Bdgeocode\Models\District;

$districts = District::all();
```

There are relations bitween models. E. g:

```php
use Sandofvega\Bdgeocode\Models\District;

$district = District::first(); // A district

$thanas = $district->thanas // All thana in a district

$division = $district->division // Division for a district
```

+ **Note:** There are many thanas in a district so the relation name is `thanas`(plural), not `thana`. And there is one division for a district so the relation name is `division`(singular), not `divisions`. You must follow this rule to call every relation.


## License

Laravel Bangladesh Geocode is free software distributed under the terms of the MIT license.

## Contribution guidelines

Support follows PSR-1 and PSR-4 PHP coding standards, and semantic versioning.

Please report any issue you find in the issues page.  
Pull requests are welcome.
