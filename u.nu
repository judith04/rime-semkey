# Load Rime user dir configuration from local file.
export-env {
  load-env (
    open -r rime_user_dir | str trim | {
      RIME_USER_DIR: ($in | path expand)
    }
  )
}

alias core-move = move
# move to Rime user dir.
export def move [
  --no-backup (-n)
] {
  use std assert
  let pwd = pwd
  let files = glob '*.yaml' | path basename
  assert equal ($files | length) 4
  cd $env.RIME_USER_DIR
  $files | each {|file|
    if not $no_backup {
      try {
        mv -nv $file ($file + '.bak')
      } catch {
        match (input "bak file exists. Overwrite? (y/N) ") {
          'y' => {mv -vf $file ($file + '.bak')}
          _ => {error make {msg: "Aborted due to existing bak file"}}
        }
      }
    } else {
      cp -v ($pwd | path join $file) .
    }
  } | ignore
}
export alias m = move
export alias mn = move --no-backup

