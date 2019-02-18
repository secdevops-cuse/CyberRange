<p align="center"><img src="https://raw.githubusercontent.com/fedekau/terraform-with-circleci-example/staging/.images/gears.png" height="200px"></p>

# terraform-with-circleci-example

We all know how complex apps this days can get, so that is why I created this.

It is just minor contribution to help you achieve "The Basic 2018 Web App Architecture", which looks something like the image below.

<p align="center"><img src="https://raw.githubusercontent.com/fedekau/terraform-with-circleci-example/staging/.images/web-app.jpg" height="300px"></p>

This is an example repository that you can use to kickstart your project or to
make your current project better with some of the ideas included here.

The main purpose is to show one of the many possible ways
you could manage your infrastructure using an Infrastructure as Code (IAC) tool
like [Terraform](https://www.terraform.io/) and a continuous integration tool
like [CircleCI](https://circleci.com).

I have followed many of the good practices described in the book [Terraform: Up & Running](https://www.terraformupandrunning.com/) and in the [CircleCI 2.0 Documentation](https://circleci.com/docs/2.0/). I will also assume you have some knowledge about those tools and [Amazon Web Services](https://aws.amazon.com) in general, no need to be an expert.

## Suggested workflow

Assuming you have two environments, `production` and `staging`, when a new feature is requested you branch from `staging`, commit the code and open a PR to the `staging` branch, when you do, CircleCI will run two jobs, one for linting and one that will plan the changes to your `staging` infrastructure so you can review them (see image below).

![Image of PR creation jobs](https://raw.githubusercontent.com/fedekau/terraform-with-circleci-example/staging/.images/pr.png)

Once you merge the PR, if everything goes as planned CircleCI will run your jobs and will automatically deploy your infrastructure!

![Image of jobs after staging merge](https://raw.githubusercontent.com/fedekau/terraform-with-circleci-example/staging/.images/staging-merge.png)

After you have tested your infrastructure in `staging` you just need to open a PR from `staging` into `master` to "promote" you infrastructure into `production`.

In this case we want someone to manually approve the release into master, so after you merge you need to tell CircleCI that it can proceed and it will deploy the infrastructure after the confirmation.

![Image of jobs after master merge](https://raw.githubusercontent.com/fedekau/terraform-with-circleci-example/staging/.images/master-merge.png)

Now that you know what we want to achieve we will dive into the code...get ready!

## How is this repo structured?

I will explain each folder in the root level and dive into some of them, in another section I will explain the files contained in each folder (or at least the most important ones).

### Folder `.circleci`

This folder is where the configuration file for CircleCI is included, it usually
contains one file `config.yml`. But you can have scripts to do whatever you need to help you run your tests or checks there. In this case we only have one file: [config.yml](https://github.com/fedekau/terraform-with-circleci-example/blob/master/.circleci/config.yml).

### Folder `.keys`

It contains a public/private key pair, and before you shout at me, I know you **should never** have private keys in version control but for simplicity I have included them here.

### Folder `environments`

This folder has one folder for each environment, in this case it has `production` and `staging`, but it could have as many as you need! For example if you want each developer to have its own environment they could copy one of those folders and have one new environment, as easy as it sounds!

Each folder has some files that basically wrap the contents of the modules folder.

### Folder `modules`

Here we define all our infrastructure leaving some open parameters for customizing each environment, for example in `production` you want to run some powerful machines, but for `staging` you might want low power machines to reduce costs.

This folder has two folders, `state` which is a module for creating the required resources for managing terraform state remotely, an S3 bucket and a DynamoDB table, which we use in each environment. This is one possibility of the [many available](https://www.terraform.io/docs/backends/). The second folder `infrastructure` contains the definition of all the infrastructure which we use in each environment.

### Folder `shared`

This folder is for throwing some shared files. In order to use the files we simply create a symbolic link wherever we need to use its contents.

## Modules

Terraform allows you to create and use modules. That enables us to reuse code.

## State module

We have a `state` module which we use to encapsulate the resources for our backend of choice: S3 Bucket for the state file and DynamoDB for state locking.

The reason to have the `state` module independent of the `infrastructure` module is to give us more flexibility, for example, if you want to have one environment per developer they don't need remote storage or locking, they can simply use a local state file. See [Terraform Backends](https://www.terraform.io/docs/backends/index.html) for all the alternatives.

## Infrastructure module

Here I have used the module idea to create a `infrastructure` module that represents everything that is needed to run our apps, that means that every time you use that module you get an exact copy of your infrastructure.

In this repo I use it to create different environments, but you could also use it for creating your custom version of [Heroku's Review Apps](https://devcenter.heroku.com/articles/github-integration-review-apps)

This module is only glue for the modules it includes, in the [modules/environment/main.tf](https://github.com/fedekau/terraform-with-circleci-example/blob/staging/modules/infrastructure/main.tf) file we glue the `network`, `instances` and `databases` modules.

### Network module

It represents the "cables" of our infrastructure, it only has [one variable](https://github.com/fedekau/terraform-with-circleci-example/blob/staging/modules/infrastructure/modules/network/variables.tf) that is the name of the environment.

It outputs some other variables like the [CIDR Blocks](https://es.wikipedia.org/wiki/Classless_Inter-Domain_Routing) of the network, the ID of the VPC, and IDs of the public and private subnets.

This was inspired by [AWS VPC with Public and Private Subnets](https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Scenario2.html)

### Databases module

This module receives as input the current environment, the IDs of the private subnets and creates the required resources for a Multi AZ highly available database instance.

After creating the module it exports the endpoint of the database and some other data.

Notice that here we have some **VERY DUMMY** user and password. Ideally after you create a database you either change the password or manage the passwords in an external way.

### Instances module

The `instances` module represents the VMs that will be running the code, in this case I also include an [AWS Application Load Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/introduction.html)

As part of the creation of the instances I have used some [Terraform Provisioners](https://www.terraform.io/docs/provisioners/index.html) to execute some commands and create a dummy app to test that everything is working as expected.

## License

terraform-with-circleci-example is licensed under the MIT license.

See [LICENSE.md](https://github.com/fedekau/terraform-with-circleci-example/blob/staging/LICENSE.md) for the full license text.

## Credits

- Icons made by [Gregor Cresnar](https://www.flaticon.com/authors/gregor-cresnar) from [www.flaticon.com](https://www.flaticon.com/) is licensed by [CC 3.0 BY](http://creativecommons.org/licenses/by/3.0/)
- [WyeWorks](https://www.wyeworks.com) for allowing me to create 40% of this repository during my working hours as part of the [Continuous Learning policy](https://wyeworks.com/blog/2015/7/16/technical-thursdays-or-how-we-do-continuous-learning)

