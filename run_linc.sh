#!/bin/bash

cwltool --no-container --preserve-entire-environment --outdir results --leave-tmpdir --tmpdir-prefix run_hba_calibrator/ $EBROOTLINC/share/linc/workflows/HBA_target.cwl test_jobs/HBA_target.json
