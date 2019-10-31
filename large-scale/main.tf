provider "aws" {
  region = "${var.region}"
}


module "autoscaling groups" {
    source = "./autoscaling_groups"
    public_subnet_id = "${module.site.public_subnet_id}"
    webapp_lc_id = "${module.launch_configurations.webapp_lc_id}"
    webapp_lc_name = "${module.launch_configurations.webapp_lc_name}"
    webapp_elb_name = "${module.load_balancers.webapp_elb_name}"
}