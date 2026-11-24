# Security policy

## Reporting

Please do not open a public issue for a security problem. Send a private report to the
maintainers through GitHub (repository → **Security** → **Report a vulnerability**) and
include the version, the platform, and the steps to reproduce.

## Scope

This plugin copies DSH data and can overwrite `DSH_HOME`. Reports that matter most:

- reading or writing outside `DSH_HOME` and the workspace backup folder;
- requests to `/dsh-backup/api` that a cross-site page can trigger;
- credential or session data leaking into a place it was not opted into;
- the offline PowerShell program acting on paths other than `DSH_HOME`.

## Handling of user data

- Restore points contain private session, attachment, and configuration data.
- Sign-in records (`.credentials.yaml`) are copied **only** when the user enables the
  option, and then in plain text.
- Never attach a `dsh-backups` folder to an issue, a pull request, or a chat. Reproduce with
  a synthetic `DSH_HOME` instead (see `test/`).

## Supported versions

Security fixes target the latest `1.x` release on the current DSH line (`>= 0.2.2-rc.5`).
