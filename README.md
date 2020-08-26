# POC for gathering upstream tests into a container

We landed support for "exttests" in coreos-assembler:
https://github.com/coreos/coreos-assembler/blob/98d40e6bb13adc02bcd5f02f1d5bff7bafa0780d/mantle/kola/README-kola-ext.md

Since then we are successfully running upstream test suites using
kola on upstream pull requests.

But we also want the inverse: run upstream tests on builds outside
of PRs to those repos.

For example, I really want to run ostree's "transactionality"
test on FCOS builds so that if a kernel change breaks it, we
know that.
