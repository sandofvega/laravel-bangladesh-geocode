# Laravel Bangladesh Geocode
[![Latest Stable Version](https://poser.pugx.org/sandofvega/bdgeocode/v/stable)](https://packagist.org/packages/sandofvega/bdgeocode)
[![Total Downloads](https://poser.pugx.org/sandofvega/bdgeocode/downloads)](https://packagist.org/packages/sandofvega/bdgeocode)
[![License](https://poser.pugx.org/sandofvega/bdgeocode/license)](https://packagist.org/packages/sandofvega/bdgeocode)
[![Twitter Follow](https://img.shields.io/twitter/follow/sandofvega.svg?label=Follow&style=social)](https://twitter.com/intent/follow?screen_name=sandofvega)
 
8 Division, 64 District, 491 Thana and 4541 Union fully mapped laravel package. Easy to install & config. All data is accessible from database using laravel eloquent ORM.

> All information, content, and spelling have been taken from https://bangladesh.gov.bd

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

1) Publish models and migration file:

```bash
php artisan vendor:publish --provider="Sandofvega\Bdgeocode\BdgeocodeServiceProvider"
```

2) Run artisan migrate command:

```bash
php artisan migrate
```

After the migration, four new tables will be present:
- `divisions`
- `districts`
- `thanas`
- `unions`

3) Add Bdgeocode's seeder class to `database/seeds/DatabaseSeeder.php`:

```php
use Sandofvega\Bdgeocode\Seeds\BdgeocodeSeeder;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
        $this->call(BdgeocodeSeeder::class);
        //
    }
}
```

Now you are ready. When you run the seed command (e.g. `db:seed` or `migrate:fresh --seed`) the Bdgeocode's data will be inserted into your database.

## Usage

You can get all data by using those models. E.g:

```php
use App\District;

$districts = District::all();
```

There are relations bitween models. E. g:

```php
use App\District;

$district = District::first(); // A district

$division = $district->division // Division for a district

$thanas = $district->thanas // All thana in a district
```

+ **Note:** There is one division for a district so the relation name is `division`(singular), not `divisions`. And there are many thanas in a district so the relation name is `thanas`(plural), not `thana`. You must follow this rule to call every relation.


## License

Laravel Bangladesh Geocode is free software distributed under the terms of the MIT license.

## Contribution guidelines

We follow [PSR-2](https://www.php-fig.org/psr/psr-2/) and [PSR-4](https://www.php-fig.org/psr/psr-4/) PHP coding standards and [Semantic Versioning](https://semver.org/).

Please report any issue you find. And pull requests are welcome.

## Donation

[![Support me on Patreon](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Fshieldsio-patreon.vercel.app%2Fapi%3Fusername%3Dsandofvega%26type%3Dpledges&style=for-the-badge)](https://patreon.com/sandofvega)
