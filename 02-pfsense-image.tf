/*
Copyright 2023 Schwarz IT KG <markus.brunsch@mail.schwarz>
Copyright 2024-2025 STACKIT GmbH & Co. KG <markus.brunsch@stackit.cloud>

Use of this source code is governed by an MIT-style
license that can be found in the LICENSE file or at
https://opensource.org/licenses/MIT.
*/

# Upload VPN Appliance Image to STACKIT
resource "stackit_image" "opnsense_image" {
  project_id      = var.STACKIT_PROJECT_ID
  name            = "opnsense-25.7-nano-amd64"
  local_file_path = "./OPNsense-25.7-nano-amd64.qcow2"
  disk_format     = "qcow2"
  min_disk_size   = 10
  min_ram         = 2
  config = {
    uefi = false
  }
}
