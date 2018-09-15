#!/bin/sh

export B2_ACCOUNT_ID="<B2_ACCOUNT_ID>"
export B2_ACCOUNT_KEY="<B2_ACCOUNT_KEY>"
export RESTIC_PASSWORD="<RESTIC_PASSWORD>"

/opt/restic -r "b2:<B2_BUCKET_NAME>:/restic" backup "<DATA_DIR>"
/opt/restic -r "b2:<B2_BUCKET_NAME>:/restic" forget --keep-daily 7 --keep-weekly 4 --keep-monthly 12 --host "$(hostname)"
/opt/restic -r "b2:<B2_BUCKET_NAME>:/restic" prune
