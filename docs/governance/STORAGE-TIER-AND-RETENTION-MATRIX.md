# Storage Tier and Retention Matrix

| Artifact class | Active copy | Backup requirement | Default retention | Cleanup rule |
|---|---:|---|---|---|
| Unique source or decision record | 1 canonical | 2 verified locations | Indefinite while authoritative | Never delete without successor, recovery test and CEO approval |
| Approved baseline ZIP | Current plus one known-good | 1 independent verified backup | Until superseded and recovery tested | Older versions become deletion candidates |
| Review Candidate ZIP | Active candidate plus last USER TEST PASSED | 1 verified backup before removal | Until approval or rejection is closed | Do not delete while integration or testing is pending |
| Manifest and SHA-256 | With corresponding artifact | Same location as artifact backup | Same as artifact | Delete only with the artifact it verifies |
| Personal PDF manual | Current version; optional previous known-good | Local backup recommended | Current operational version | Superseded copies may be consolidated after verification |
| Screenshots and evidence | Only evidence needed by active matter | Backup based on criticality | Until decision, claim or audit closes | Remove duplicate or irrelevant copies after review |
| Temporary renders and conversions | Only during generation and QA | None if reconstructible | Until final output is verified | First cleanup priority |
| Extracted or unpacked duplicate trees | Only while inspecting | None if original package is verified | Until analysis is completed | Delete after findings are preserved |
| Rejected specialist artifacts | None in active workspace | Archive only if unique lessons/evidence | Until offboarding and lessons are closed | Then propose for deletion |
| Repository clone | One active clone per active workspace | Remote/manual backup policy applies | While project is active | Remove abandoned clones only after branch and uncommitted work checks |
| ChatGPT Library copy | Only when needed for active retrieval | Verified local copy before deletion | While unique or active | User deletes manually after gate |
