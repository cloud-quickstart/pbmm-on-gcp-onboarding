/**
 * Copyright 2021 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

##### Org policy to enforce resource deployment locations


module "org-policy" {
  source  = "terraform-google-modules/org-policy/google"
  version = "~> 3.0.2"

  constraint        = "constraints/gcp.resourceLocations"
  policy_type       = "list"
  organization_id   = var.org_id
  allow             = ["northamerica-northeast1"]
  allow_list_length = 1
  policy_for = "organization"
}
