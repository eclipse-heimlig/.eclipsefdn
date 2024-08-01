local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-heimlig') {
  settings+: {
    description: "",
    name: "Eclipse Heimlig",
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('heimlig') {
      allow_update_branch: false,
      web_commit_signoff_required: false,
    },
  ],
}
