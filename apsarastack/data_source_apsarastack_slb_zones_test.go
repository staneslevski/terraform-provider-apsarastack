package apsarastack

import (
	"github.com/hashicorp/terraform-plugin-sdk/helper/resource"
	"testing"
)

func TestAccApsaraStackSlbZonesDataSource_basic(t *testing.T) {
	resource.Test(t, resource.TestCase{
		PreCheck: func() {
			testAccPreCheck(t)
		},
		Providers: testAccProviders,
		Steps: []resource.TestStep{
			{
				Config: testAccCheckApsaraStackzones,
				Check: resource.ComposeTestCheckFunc(
					testAccCheckApsaraStackDataSourceID("data.apsarastack_slb_zones.zone"),
					resource.TestCheckResourceAttr("data.apsarastack_slb_zones.zone", "zones.#", "0"),
					resource.TestCheckNoResourceAttr("data.apsarastack_slb_zones.zone", "zones.0.slb_slave_zone_ids"),
					resource.TestCheckNoResourceAttr("data.apsarastack_slb_zones.zone", "zones.0.local_name"),
					resource.TestCheckResourceAttrSet("data.apsarastack_slb_zones.default", "ids.#"),
				),
			},
		},
	})
}

const testAccCheckApsaraStackzones = `
data "apsarastack_instance_types" "zone" {
enable_details = true
	
}
`
