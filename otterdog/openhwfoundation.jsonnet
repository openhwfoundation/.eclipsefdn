local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('openhw', 'openhwfoundation') {
  settings+: {
    blog: "https://www.openhwfoundation.org",
    description: "",
    members_can_change_project_visibility: false,
    members_can_change_repo_visibility: false,
    members_can_create_teams: false,
    members_can_delete_repositories: false,
    name: "OpenHW Foundation",
    packages_containers_internal: false,
    packages_containers_public: false,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('.github') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('advanced-riscv-verification-methodologies') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "Advanced Verification Methodologies for RISC-V and related IP",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('apb_interrupt_cntrl') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "Small and simple APB interrupt controller",
      has_issues: false,
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('aws-codebuild-run-build') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "Run an AWS CodeBuild project as a step in a GitHub Actions workflow job.",
      has_issues: false,
      homepage: "https://aws.amazon.com/codebuild",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('aws-infra') {
      allow_forking: false,
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "Repository for AWS Infrastructure (Docker, Documentation, etc.)",
      has_wiki: false,
      private: true,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('core-et') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "CORE-ET Silicon Platform ",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('core-et-erbium') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: " CORE-ET Silicon Platform  erbium",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('core-v-cores') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "CORE-V Family of RISC-V Cores",
      homepage: "",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('core-v-freertos') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          required_approving_review_count: 1,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('core-v-freertos-kernel') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "pulp-project-devel",
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('core-v-ide-cdt') {
      allow_merge_commit: true,
      allow_update_branch: false,
      archived: true,
      default_branch: "master",
      delete_branch_on_merge: false,
      homepage: "https://www.openhwgroup.org/",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('core-v-mcu') {
      allow_auto_merge: true,
      allow_merge_commit: true,
      allow_rebase_merge: false,
      allow_update_branch: false,
      default_branch: "master",
      description: "This is the CORE-V MCU project, hosting CORE-V's embedded-class cores.",
      homepage: "https://docs.openhwgroup.org/projects/core-v-mcu",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "microcontroller",
        "openhwgroup",
        "riscv",
        "systemverilog"
      ],
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://readthedocs.org/api/v2/webhook/core-v-mcu/151982/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
        orgs.newRepoWebhook('https://readthedocs.com/api/v2/webhook/openhw-group-core-v-mcu/5913/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
        orgs.newRepoWebhook('https://readthedocs.org/api/v2/webhook/core-v-mcu-documentation/152143/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
      ],
      secrets: [
        orgs.newRepoSecret('AWS_ROLE_TO_ASSUME') {
          value: "********",
        },
      ],
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          is_admin_enforced: true,
          required_approving_review_count: null,
          requires_pull_request: false,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
      environments: [
        orgs.newEnvironment('copilot') {
        },
      ],
    },
    orgs.newRepo('core-v-mcu-cli-test') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "Eclipse/FreeRTOS/core-v-mcu example program",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('core-v-mcu-commonio') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "CORE-V MCU DevKit drivers written with AWS CommonIO approach",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('core-v-mcu-demo') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('core-v-mcu-devkit') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "This is the CORE-V MCU DevKit project, hosting the open-source artifacts for the CORE-V MCU Development Kit.",
      has_discussions: true,
      homepage: "https://docs.openhwgroup.org/projects/core-v-mcu-devkit-user-manual/en/latest/",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://readthedocs.com/api/v2/webhook/openhw-group-core-v-mcu-devkit/10386/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
      ],
    },
    orgs.newRepo('core-v-mcu-sdk-examples') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "Example SDK applications for DevKit",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('core-v-mcu-uvm') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "CORE-V MCU UVM Environment and Test Bench",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_discussions: true,
      homepage: "https://openhwfoundation.github.io/core-v-mcu-uvm/",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      template_repository: "Datum-Technology-Corporation/mio_digital_design_project_template",
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('*') {
          required_approving_review_count: 1,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "gh-pages",
            "main"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('core-v-polara-apu') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "openpiton_polara",
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "The OpenPiton Platform",
      has_issues: false,
      homepage: "http://www.openpiton.org",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('core-v-sdk') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('core-v-sw') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "Main Repo for the OpenHW Group Software Task Group",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('core-v-trusted-mcu') {
      allow_merge_commit: true,
      allow_update_branch: false,
      archived: true,
      delete_branch_on_merge: false,
      description: "RTL code for implementation of dual-core trusted MCU ",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('core-v-verif') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "Functional verification project for the CORE-V family of RISC-V cores.",
      has_discussions: true,
      homepage: "https://docs.openhwgroup.org/projects/core-v-verif/en/latest/index.html",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "risc-v",
        "systemverilog",
        "uvm",
        "verification"
      ],
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://readthedocs.org/api/v2/webhook/core-v-verif-verification-strategy/157977/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
        orgs.newRepoWebhook('https://readthedocs.com/api/v2/webhook/openhw-group-core-v-verif/6193/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
        orgs.newRepoWebhook('https://readthedocs.com/api/v2/webhook/openhw-group-core-v-verif/7712/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
        orgs.newRepoWebhook('https://gitlab.thales-invia.fr/api/v4/projects/14/ref/master/trigger/pipeline?token=82c59d86d75bcb0fbe379a09c7a252') {
          content_type: "json",
          events+: [
            "pull_request",
            "push"
          ],
          secret: "********",
        },
      ],
      secrets: [
        orgs.newRepoSecret('AWS_ROLE_TO_ASSUME') {
          value: "********",
        },
        orgs.newRepoSecret('METRICS_CI_TOKEN') {
          value: "********",
        },
        orgs.newRepoSecret('METRICS_PROJECT_ID') {
          value: "********",
        },
      ],
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          required_approving_review_count: 1,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
        orgs.newBranchProtectionRule('cv32e40s/dev') {
          required_approving_review_count: 1,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
      rulesets: [
        orgs.newRepoRuleset('Copilot review for default branch') {
          allows_creations: true,
          include_refs+: [
            "~DEFAULT_BRANCH"
          ],
          required_pull_request: null,
          required_status_checks: null,
        },
      ],
      environments: [
        orgs.newEnvironment('copilot') {
        },
        orgs.newEnvironment('github-pages') {
        },
      ],
    },
    orgs.newRepo('core-v-xif') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "RISC-V eXtension interface that provides a generalized framework suitable to implement custom coprocessors and ISA extensions",
      homepage: "https://docs.openhwgroup.org/projects/openhw-group-core-v-xif/en",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      squash_merge_commit_message: "PR_BODY",
      squash_merge_commit_title: "PR_TITLE",
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://readthedocs.com/api/v2/webhook/openhw-group-core-v-xif/6775/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
      ],
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          is_admin_enforced: true,
          required_approving_review_count: null,
          requires_pull_request: false,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('corev-binutils-gdb') {
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "development",
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('corev-elf-psabi-doc') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('corev-gcc') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "development",
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('corev-llvm-project') {
      allow_update_branch: false,
      default_branch: "development",
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('corev-qemu') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "Official QEMU mirror. Please see http://wiki.qemu.org/Contribute/SubmitAPatch for how to submit changes to QEMU. Pull Requests are ignored. Please only use release tarballs from the QEMU website.",
      has_issues: false,
      has_wiki: false,
      homepage: "http://www.qemu.org",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('cv-hpdcache') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "RTL sources of the High-Performance L1 Dcache (HPDcache) for OpenHW CV cores",
      homepage: "https://openhw-group-cv-hpdcache.readthedocs-hosted.com/",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://readthedocs.com/api/v2/webhook/openhw-group-cv-hpdcache/13245/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
      ],
      environments: [
        orgs.newEnvironment('copilot') {
        },
      ],
    },
    orgs.newRepo('cv-hpdcache-verif') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Verification environment for the OpenHW Group's CORE-V High Performance Data Cache controller.",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('cv-mesh') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('cv-sargantana') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "CV-Sargantana project",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('cv32e20-dv') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      has_discussions: true,
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      rulesets: [
        orgs.newRepoRuleset('Copilot review for default branch') {
          allows_creations: true,
          include_refs+: [
            "~DEFAULT_BRANCH"
          ],
          required_pull_request: null,
          required_status_checks: null,
        },
      ],
      environments: [
        orgs.newEnvironment('copilot') {
        },
      ],
    },
    orgs.newRepo('cv32e40p') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "CV32E40P is an in-order 4-stage RISC-V RV32IMFCXpulp CPU based on RI5CY from PULP-Platform",
      has_discussions: true,
      homepage: "https://docs.openhwgroup.org/projects/cv32e40p-user-manual/en/latest",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "riscv",
        "riscv32imfc"
      ],
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://notify.travis-ci.org') {
          active: false,
          events+: [
            "create",
            "delete",
            "issue_comment",
            "member",
            "public",
            "pull_request",
            "push",
            "repository"
          ],
        },
        orgs.newRepoWebhook('https://readthedocs.com/api/v2/webhook/openhw-group-cv32e40p-user-manual/5932/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
      ],
      secrets: [
        orgs.newRepoSecret('AWS_ROLE_TO_ASSUME') {
          value: "********",
        },
      ],
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          is_admin_enforced: true,
          required_approving_review_count: null,
          requires_pull_request: false,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
      environments: [
        orgs.newEnvironment('copilot') {
        },
      ],
    },
    orgs.newRepo('cv32e40p-dv-review') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "CV32E40P DV environment based on cv32e20-dv",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('cv32e40s') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "4 stage, in-order, secure RISC-V core based on the CV32E40P",
      homepage: "https://docs.openhwgroup.org/projects/cv32e40s-user-manual/en/latest/",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://readthedocs.org/api/v2/webhook/cv32e40s-user-manual/150250/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
        orgs.newRepoWebhook('https://readthedocs.com/api/v2/webhook/openhw-group-cv32e40s-user-manual/5824/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
      ],
    },
    orgs.newRepo('cv32e40s-dv') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "CV32E40S Design-Verification environment",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('copilot') {
        },
      ],
    },
    orgs.newRepo('cv32e40x') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "4 stage, in-order, compute RISC-V core based on the CV32E40P",
      homepage: "https://docs.openhwgroup.org/projects/cv32e40x-user-manual/en/latest/",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://readthedocs.org/api/v2/webhook/cv32e40x-user-manual/150243/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
        orgs.newRepoWebhook('https://readthedocs.com/api/v2/webhook/openhw-group-cv32e40x-user-manual/5823/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
      ],
    },
    orgs.newRepo('cv32e40x-dv') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "CV32E40X Design-Verification environment",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('*') {
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('cv32e41p') {
      allow_merge_commit: true,
      allow_update_branch: false,
      archived: true,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "4 stage, in-order, secure RISC-V core based on the CV32E40P with Zfinx and Zce ISA extentions",
      homepage: "https://docs.openhwgroup.org/projects/cv32e41p-user-manual/",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://readthedocs.com/api/v2/webhook/openhw-group-cv32e41p/6500/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
      ],
    },
    orgs.newRepo('cva5') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "The CORE-V CVA5 is an Application class 5-stage RISC-V CPU specifically targetting FPGA implementations.",
      homepage: "",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      workflows+: {
        enabled: false,
      },
    },
    orgs.newRepo('cva5-accelerators') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('cva6') {
      allow_auto_merge: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "The CORE-V CVA6 is a highly configurable, 6-stage RISC-V core for both application and embedded applications. Application class configurations are capable of booting Linux.",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "master",
      gh_pages_source_path: "/docs",
      has_discussions: true,
      homepage: "https://docs.openhwgroup.org/projects/cva6-user-manual/",
      merge_commit_message: "BLANK",
      merge_commit_title: "PR_TITLE",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "ariane",
        "asic",
        "cpu",
        "fpga",
        "risc-v",
        "rv64gc",
        "systemverilog-hdl"
      ],
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://readthedocs.org/api/v2/webhook/cva6/128732/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
        orgs.newRepoWebhook('https://readthedocs.com/api/v2/webhook/openhw-group-cva6-user-manual/5933/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
        orgs.newRepoWebhook('https://gitlab.thales-invia.fr/api/v4/projects/14/ref/master/trigger/pipeline?token=82c59d86d75bcb0fbe379a09c7a252') {
          content_type: "json",
          events+: [
            "pull_request",
            "push"
          ],
          secret: "********",
        },
        orgs.newRepoWebhook('https://gitlab.thales-invia.fr/api/v4/projects/14/ref/master/trigger/pipeline?token=glptt-0e7ecb60e7a513a6f8687c86f17c3b5b2a2df92a') {
          events+: [
            "pull_request",
            "push"
          ],
        },
        orgs.newRepoWebhook('https://readthedocs.org/api/v2/webhook/cva6-master/294369/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
        orgs.newRepoWebhook('https://readthedocs.com/api/v2/webhook/openhw-group-cva6/13375/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
      ],
      secrets: [
        orgs.newRepoSecret('AWS_ROLE_TO_ASSUME') {
          value: "********",
        },
        orgs.newRepoSecret('GHCR_PAT') {
          value: "********",
        },
      ],
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          is_admin_enforced: true,
          required_approving_review_count: null,
          requires_pull_request: false,
          requires_status_checks: false,
          requires_strict_status_checks: true,
          restricts_pushes: true,
        },
        orgs.newBranchProtectionRule('dev') {
          lock_branch: true,
          required_approving_review_count: null,
          requires_pull_request: false,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
      rulesets: [
        orgs.newRepoRuleset('Enforce passing CI regression') {
          allows_creations: true,
          include_refs+: [
            "~DEFAULT_BRANCH"
          ],
          required_pull_request: null,
          required_status_checks+: {
            strict: true,
          },
        },
      ],
      environments: [
        orgs.newEnvironment('copilot') {
        },
        orgs.newEnvironment('github-pages') {
        },
      ],
    },
    orgs.newRepo('cva6-dcls') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Dual-Core-Lock-Step platform for the CVA6 RISC-V processor core",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('cva6-platform') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "CVA6-platform is a multicore CVA6 with CV-MESH software and regression platform",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('cva6-safe') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "A dual-core lockstep (DCLS) subsystem for the CVA6.  Also supports dual-core asymmetric multi-processing (AMP) when lockstep in not needed.",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('cva6-sdk') {
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "CVA6 SDK containing RISC-V tools and Buildroot",
      homepage: "",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          is_admin_enforced: true,
          required_approving_review_count: null,
          requires_pull_request: false,
          requires_status_checks: false,
          requires_strict_status_checks: true,
          restricts_pushes: true,
        },
      ],
    },
    orgs.newRepo('cve2') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "The CORE-V CVE2 is a small 32 bit RISC-V CPU core (RV32IMC/EMC) with a two stage pipeline, based on the original zero-riscy work from ETH Zurich and Ibex work from lowRISC.",
      has_discussions: true,
      has_wiki: false,
      homepage: "https://docs.openhwgroup.org/projects/cve2-user-manual/en/latest/",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://readthedocs.com/api/v2/webhook/openhw-group-cve2/10417/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
      ],
      branch_protection_rules: [
        orgs.newBranchProtectionRule('RequirePullRequestAndApprovals') {
          required_approving_review_count: 1,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
      environments: [
        orgs.newEnvironment('copilot') {
        },
      ],
    },
    orgs.newRepo('cvfpu') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "develop",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Parametric floating-point unit with support for standard RISC-V formats and operations as well as transprecision formats.",
      homepage: "",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          is_admin_enforced: true,
          required_approving_review_count: 1,
          requires_pull_request: true,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
        orgs.newBranchProtectionRule('develop') {
          is_admin_enforced: true,
          required_approving_review_count: 1,
          requires_pull_request: true,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
      environments: [
        orgs.newEnvironment('copilot') {
        },
      ],
    },
    orgs.newRepo('cvfpu-uvm') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "UVM Verification Environment for the CVFPU",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('copilot') {
        },
      ],
    },
    orgs.newRepo('cvw') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "CORE-V Wally is a configurable RISC-V Processor associated with RISC-V System-on-Chip Design textbook. Contains a 5-stage pipeline, support for A, B, C, D, F,  M and Q extensions, and optional caches, BP, FPU, VM/MMU, AHB, RAMs, and peripherals.",
      has_discussions: true,
      homepage: "",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          required_approving_review_count: null,
          requires_pull_request: false,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
      environments: [
        orgs.newEnvironment('copilot') {
        },
      ],
    },
    orgs.newRepo('cvw-arch-verif') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "The purpose of the repo is to support CORE-V Wally architectural verification",
      gh_pages_build_type: "workflow",
      homepage: "https://openhwfoundation.github.io/cvw-arch-verif/",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "main"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('downloads.openhwgroup.org') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "downloads.openhwgroup.org",
      homepage: "",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('embdebug-target-core-v') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('force-riscv') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "Instruction Set Generator initially contributed by Futurewei",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('infra') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "Issues related to the OpenHW Group infra (GtHub, Mattermost, ...)",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('marketing') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('meta-cva6-yocto') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "Yocto layer for CVA6",
      has_issues: false,
      homepage: "",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          required_approving_review_count: 0,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('obi') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "Repository that maintain the OpenBus Interface spec",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('openhwfoundation.org') {
      allow_update_branch: false,
      archived: true,
      delete_branch_on_merge: false,
      description: "OpenHW Group is a global, not-for-profit organization where hardware and software designers collaborate on open-source cores, IP, tools, and software. It provides infrastructure to host high-quality open-source hardware projects aligned with industry best practices.",
      homepage: "https://openhwfoundation.org/",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "hugo",
        "webdev"
      ],
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://notify.travis-ci.org') {
          events+: [
            "create",
            "delete",
            "issue_comment",
            "member",
            "public",
            "pull_request",
            "push",
            "repository"
          ],
        },
        orgs.newRepoWebhook('https://foundation.eclipse.org/ci/webdev/github-webhook/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "member",
            "public",
            "pull_request",
            "push",
            "repository"
          ],
          secret: "********",
        },
      ],
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          required_approving_review_count: null,
          requires_pull_request: false,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
      environments: [
        orgs.newEnvironment('github-pages') {
        },
      ],
    },
    orgs.newRepo('osdforum.org') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "The Open Source Developer Forum is a workshop that brings open source software and hardware (chips, boards and systems) developers together to collaborate and learn.",
      homepage: "https://www.osdforum.org",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "hugo",
        "webdev"
      ],
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://notify.travis-ci.org') {
          events+: [
            "create",
            "delete",
            "issue_comment",
            "member",
            "public",
            "pull_request",
            "push",
            "repository"
          ],
        },
        orgs.newRepoWebhook('https://foundation.eclipse.org/ci/webdev/github-webhook/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "member",
            "public",
            "pull_request",
            "push",
            "repository"
          ],
          secret: "********",
        },
      ],
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          required_approving_review_count: null,
          requires_pull_request: false,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
      environments: [
        orgs.newEnvironment('github-pages') {
        },
      ],
    },
    orgs.newRepo('programs') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "Documentation for the OpenHW Group's set of CORE-V RISC-V cores",
      homepage: "",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://readthedocs.com/api/v2/webhook/openhw-group-core-v-doc/3262/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
        orgs.newRepoWebhook('https://readthedocs.com/api/v2/webhook/openhw-group-core-v-docs/3263/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
        orgs.newRepoWebhook('https://readthedocs.org/api/v2/webhook/core-v-docs-verif-strat/117803/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
        orgs.newRepoWebhook('https://readthedocs.org/api/v2/webhook/core-v-docscv32e40p-user-manual/118976/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
        orgs.newRepoWebhook('https://readthedocs.com/api/v2/webhook/openhw-group-core-v-docs/10312/') {
          content_type: "json",
          events+: [
            "create",
            "delete",
            "pull_request",
            "push"
          ],
          secret: "********",
        },
      ],
      rulesets: [
        orgs.newRepoRuleset('BlockForcePush') {
          allows_creations: true,
          enforcement: "disabled",
          include_refs+: [
            "~ALL"
          ],
          required_pull_request: null,
          required_status_checks: null,
        },
      ],
    },
    orgs.newRepo('riscv-ovpsim-corev') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('riscv_vm') {
      allow_merge_commit: true,
      allow_update_branch: false,
      archived: true,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "Instructions to import Ubuntu guest Virtual Machine for RISC-V development for the VEGA board",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "master",
      gh_pages_source_path: "/",
      homepage: "https://openhwfoundation.github.io/riscv_vm/",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('github-pages') {
        },
      ],
    },
    orgs.newRepo('timer_unit') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('u-boot') {
      allow_update_branch: false,
      default_branch: "master",
      dependabot_alerts_enabled: false,
      description: "Unofficial development fork of U-Boot ",
      has_projects: false,
      has_wiki: false,
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          is_admin_enforced: true,
          required_approving_review_count: null,
          requires_pull_request: false,
          requires_status_checks: false,
          requires_strict_status_checks: true,
          restricts_pushes: true,
        },
      ],
    },
    orgs.newRepo('uap') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "Unified RISC-V Access Platform (UAP) project repository",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "main",
      gh_pages_source_path: "/",
      has_discussions: true,
      homepage: "https://openhwfoundation.github.io/uap/",
      private_vulnerability_reporting_enabled: true,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "main",
            "virtual_rep_improv"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
  ],
}
