# CipherStash Rails App Demo

This repo contains a Rails app which can be used to demonstrate how to configure CipherStash Protect for a Rails app.

The demo app is an admin view of generated fake medical data for patients.

## Running the Demo

### Prerequisites

Follow the rails [getting started guide](https://guides.rubyonrails.org/v5.1/getting_started.html) for installing Ruby and Rails.

This demo also requires a working version of [PostgreSQL](https://www.postgresql.org/download/).

### Get started

1. Install dependancies:

```bash
bundle install
```

2. Create db, run migrations and seed db with dummy patient data:

```bash
rails db:setup
```

3. Run rails server:

```bash
rails s
```

4. Go to the [patients dashboard](http://localhost:3000/admin/patients).

5. [Follow this getting started guide](https://docs.cipherstash.com/tutorials/rails-getting-started/index.html) to learn how to configure this demo rails app to use CipherStash Protect and encrypt the patient data.
