function __fish_use_subsubcommand
  test 2 -eq (count (string match -v -- '-*' (commandline -poc)))
end

function __fish_use_subsubsubcommand
  test 3 -eq (count (string match -v -- '-*' (commandline -poc)))
end

complete -c stack -f

# Completion for 'stack' haskell build tool (http://haskellstack.org)
# (Handmade) generated from version 1.9.3

####################
# Toplevel Options #
####################
complete -c stack -n '__fish_no_arguments' -l version -d 'Show version'
complete -c stack -n '__fish_no_arguments' -l numeric-version -d 'Show only version number'
complete -c stack -n '__fish_no_arguments' -l hpack-numeric-version -d 'Show only hpack\'s version number'

####################
#  Global Options  #
####################
complete -c stack -l help -d 'Show this help text'

#####################
#    Subcommands    #
#####################
complete -c stack -n '__fish_use_subcommand' -xa build -d 'Build the package(s) in this directory/configuration'
complete -c stack -n '__fish_use_subcommand' -xa install -d 'Shortcut for \'build --copy-bins\''
complete -c stack -n '__fish_use_subcommand' -xa uninstall -d 'DEPRECATED: This command performs no actions, and is present for documentation only'
complete -c stack -n '__fish_use_subcommand' -xa test -d 'Shortcut for \'build --test\''
complete -c stack -n '__fish_use_subcommand' -xa bench -d 'Shortcut for \'build --bench\''
complete -c stack -n '__fish_use_subcommand' -xa haddock -d 'Shortcut for \'build --haddock\''
complete -c stack -n '__fish_use_subcommand' -xa new -d 'Create a new project from a template. Run \'stack templates\' to see available templates. Note: you can also specify a local file or a remote URL as a template.'
complete -c stack -n '__fish_use_subcommand' -xa templates -d 'List the templates available for \'stack new\'. Templates are drawn from https://github.com/commercialhaskell/stack-templates Note: `stack new\' can also accept a template from a local file or a remote URL.'
complete -c stack -n '__fish_use_subcommand' -xa init -d 'Create stack project config from cabal or hpack package specifications'
complete -c stack -n '__fish_use_subcommand' -xa solver -d 'Add missing extra-deps to stack project config'
complete -c stack -n '__fish_use_subcommand' -xa setup -d 'Get the appropriate GHC for your project'
complete -c stack -n '__fish_use_subcommand' -xa path -d 'Print out handy path information'
complete -c stack -n '__fish_use_subcommand' -xa ls -d 'List commnand. (Supports snapshots and dependencies)'
complete -c stack -n '__fish_use_subcommand' -xa unpack -d 'Unpack one or more packages locally'
complete -c stack -n '__fish_use_subcommand' -xa update -d 'Update the package index'
complete -c stack -n '__fish_use_subcommand' -xa upgrade -d 'Upgrade to the latest stack'
complete -c stack -n '__fish_use_subcommand' -xa upload -d 'Upload a package to Hackage'
complete -c stack -n '__fish_use_subcommand' -xa sdist -d 'Create source distribution tarballs'
complete -c stack -n '__fish_use_subcommand' -xa dot -d 'Visualize your project\'s dependency graph using Graphviz dot'
complete -c stack -n '__fish_use_subcommand' -xa ghc -d 'Run ghc'
complete -c stack -n '__fish_use_subcommand' -xa hoogle -d 'Run hoogle, the Haskell API search engine. Use \'stack exec\' syntax to pass Hoogle arguments, e.g. stack hoogle -- --count=20'
complete -c stack -n '__fish_use_subcommand' -xa exec -d 'Execute a command'
complete -c stack -n '__fish_use_subcommand' -xa run -d 'Build and run an executable. Defaults to the first available executable if none is provided as the first argument.'
complete -c stack -n '__fish_use_subcommand' -xa ghci -d 'Run ghci in the context of package(s) (experimental)'
complete -c stack -n '__fish_use_subcommand' -xa repl -d 'Run ghci in the context of package(s) (experimental) (alias for \'ghci\')'
complete -c stack -n '__fish_use_subcommand' -xa runghc -d 'Run runghc'
complete -c stack -n '__fish_use_subcommand' -xa runhaskell -d 'Run runghc (alias for \'runghc\')'
complete -c stack -n '__fish_use_subcommand' -xa script -d 'Run a Stack Script'
complete -c stack -n '__fish_use_subcommand' -xa eval -d 'Evaluate some haskell code inline. Shortcut for \'stack exec ghc -- -e CODE\''
complete -c stack -n '__fish_use_subcommand' -xa clean -d 'Clean the local packages'
complete -c stack -n '__fish_use_subcommand' -xa list-dependencies -d 'List the dependencies'
complete -c stack -n '__fish_use_subcommand' -xa query -d 'Query general build information (experimental)'
complete -c stack -n '__fish_use_subcommand' -xa ide -d 'IDE-specific commands'
complete -c stack -n '__fish_use_subcommand' -xa docker -d 'Subcommands specific to Docker use'
complete -c stack -n '__fish_use_subcommand' -xa config -d 'Subcommands specific to modifying stack.yaml files'
complete -c stack -n '__fish_use_subcommand' -xa image -d 'Subcommands specific to imaging'
complete -c stack -n '__fish_use_subcommand' -xa hpc -d 'Subcommands specific to Haskell Program Coverage'

#####
# Subcommand switches

# common opts
set -l common_opt -c stack -n 'not __fish_use_subcommand'

complete $common_opt -l docker -d 'Run \'stack --docker-help\' for details'
complete $common_opt -l nix -d 'Run \'stack --nix-help\' for details'
complete $common_opt -s v -l verbosity -xa 'silent error warn info debug' -d 'Verbosity: silent, error, warn, info, debug'
complete $common_opt -l verbose -d 'Enable verbose mode: verbosity level "debug"'
complete $common_opt -l silent -d 'Enable silent mode: verbosity level "silent"'
complete $common_opt -l time-in-log -d 'Enable inclusion of timings in logs, for the purposes of using diff with logs'
complete $common_opt -l no-time-in-log -d 'Disable inclusion of timings in logs, for the purposes of using diff with logs'
complete $common_opt -l stack-root -ra '(__fish_complete_directories)' -d 'Absolute path to the global stack root directory (Overrides any STACK_ROOT environment variable)'
complete $common_opt -l work-dir -ra '(__fish_complete_directories)' -d 'Relative path of work directory (Overrides any STACK_WORK environment variable, default is \'.stack-work\')'
complete $common_opt -l system-ghc -d 'Enable using the system installed GHC (on the PATH) if it is available and its version matches. Disabled by default.'
complete $common_opt -l no-system-ghc -d 'Disable using the system installed GHC (on the PATH) if it is available and its version matches. Disabled by default.'
complete $common_opt -l install-ghc -d 'Enable downloading and installing GHC if necessary (can be done manually with stack setup)'
complete $common_opt -l no-install-ghc -d 'Disable downloading and installing GHC if necessary (can be done manually with stack setup)'
complete $common_opt -l arch -xa 'i386 x86_64' -d 'System architecture, e.g. i386, x86_64'
complete $common_opt -l ghc-variant -r -d 'Specialized GHC variant, e.g. integersimple (incompatible with -system-ghc)'
complete $common_opt -l ghc-build -xa 'gmp4 standard' -d 'Specialized GHC build, e.g. \'gmp4\' or \'standard\' (usually auto-detected)'
complete $common_opt -s j -l jobs -xa 'N' -d 'Number of concurrent jobs to run'
complete $common_opt -l extra-include-dirs -ra '(__fish_complete_directories)' -d 'Extra directories to check for C header files'
complete $common_opt -l extra-lib-dirs -ra '(__fish_complete_directories)' -d 'Extra directories to check for libraries'
complete $common_opt -l with-gcc -ra '(__fish_complete_path)' -d 'Use gcc found at PATH-TO-GCC'
complete $common_opt -l with-hpack -ra '(__fish_complete_path)' -d 'Use HPACK executable *overrides bundled Hpack)'
complete $common_opt -l skip-ghc-check -d 'Enable skipping the GHC version and architecture check'
complete $common_opt -l no-skip-ghc-check -d 'Disable skipping the GHC version and architecture check'
complete $common_opt -l skip-msys -d 'Enable skipping the local MSYS installation (Windows only)'
complete $common_opt -l no-skip-msys -d 'Disable skipping the local MSYS installation (Windows only)'
complete $common_opt -l local-bin-path -ra '(__fish_complete_directories)' -d 'Install binaries to DIR'
complete $common_opt -l modify-code-page -d 'Enable setting the codepage to support UTF-8 (Windows only)'
complete $common_opt -l no-modify-code-page -d 'Disable setting the codepage to support UTF-8 (Windows only)'
complete $common_opt -l allow-different-user -d 'Enable permission for users other than the owner of the stack root directory to use a stack installation (POSIX only)'
complete $common_opt -l no-allow-different-user -d 'Disable permission for users other than the owner of the stack root directory to use a stack installation (POSIX only)'
complete $common_opt -l dump-logs -d 'Enable dump the build output logs for local packages to the console'
complete $common_opt -l no-dump-logs -d 'Disable dump the build output logs for local packages to the console'
complete $common_opt -l resolver -x -d 'Override resolver in project file'
complete $common_opt -l compiler -x -d 'Use the specified compiler'
complete $common_opt -l terminal -d 'Enable overriding terminal detection in the case of running in a false terminal'
complete $common_opt -l no-terminal -d 'Disable overriding terminal detection in the case of running in a false terminal'
complete $common_opt -l color -xa 'always never auto' -d 'Specify when to use color in output; WHEN is \'always\', \'never\', or \'auto\'. On Windows versions before Windows 10, for terminals that do not support color codes, the default is \'never\'; color may work on terminals that support color codes'
complete $common_opt -l terminal-width -x -d 'Specify the width of the terminal, used for pretty-print messages'
complete $common_opt -l stack-yaml -ra '(__fish_complete_path)' -d 'Override project stack.yaml file (overrides any STACK_YAML environment variable)'

##
# build, install, test, bench, haddock
set -l build_opt -c stack -n '
  __fish_seen_subcommand_from build;
  or __fish_seen_subcommand_from install;
  or __fish_seen_subcommand_from test;
  or __fish_seen_subcommand_from bench;
  or __fish_seen_subcommand_from haddock;
  '

complete $build_opt -l dry-run -d 'Don\'t build anything, just parepare to'
complete $build_opt -l pedantic -d 'Turn on -Wall and -Werror'
complete $build_opt -l fast -d 'Turn off optimizations (-O0)'
complete $build_opt -l ghc-options -x -d 'Additional options passed to GHC'
complete $build_opt -l flag -xa 'PACKAGE:FLAG' -d 'Override flags set in stack.yaml (applies to local packages and extra-deps)'
complete $build_opt -l dependencies-only -d 'A synonym for --only-dependencies'
complete $build_opt -l only-snapshot -d 'Only build packages for the snapshot database, not the local database'
complete $build_opt -l only-dependencies -d 'Only build packages that are dependencies of targets on the command line'
complete $build_opt -l file-watch -d 'Watch for changes in local files and automatically rebuild. Ignores files in VCS boring/ignore file'
complete $build_opt -l file-watch-poll -d 'Like --file-watch, but polling the filesystem instead of using events'
complete $build_opt -l exec -xa 'CMD' -d 'Command and arguments to run after a successful build'
complete $build_opt -l only-configure -d 'Only perform the configure step, not any builds. Intended for tool usage, may break when used on multiple packages at once!'
complete $build_opt -l trace -d 'Enable profiling in libraries, executables, etc. for all expressions and generate a backtrace on exeption'
complete $build_opt -l profile -d 'profiling in libraries, executables, etc. for all expressions and generate a profiling report in tests or benchmarks'
complete $build_opt -l no-strip -d 'Disable DWARF debugging symbol stripping in libraries, executables, etc. for all expressions, producing larger executables but allowing the use of standard debuggers/profilling tools/other utilities that use debugging symbols.'
complete $build_opt -l library-profiling -d 'Enable library profiling for TARGETs and all its dependencies'
complete $build_opt -l no-library-profiling -d 'Disable library profiling for TARGETs and all its dependencies'
complete $build_opt -l executable-profiling -d 'Enable executable profiling for TARGETs and all its dependencies'
complete $build_opt -l no-executable-profiling -d 'Disable executable profiling for TARGETs and all its dependencies'
complete $build_opt -l library-stripping -d 'Enable library stripping for TARGETs and all its dependencies'
complete $build_opt -l no-library-stripping -d 'Disable library stripping for TARGETs and all its dependencies'
complete $build_opt -l executable-stripping -d 'Enable executable stripping for TARGETs and all its dependencies'
complete $build_opt -l no-executable-stripping -d 'Disble executable stripping for TARGETs and all its dependencies'
complete $build_opt -l haddock -d 'Enable generating Haddocks the package(s) in this directory/configuration'
complete $build_opt -l no-haddock -d 'Disable generating Haddocks the package(s) in this directory/configuration'
complete $build_opt -l --haddock-arguments -xa 'HADDOCK_ARGS' -d 'Arguments passed to the haddock program'
complete $build_opt -l open -d 'Enable opening the local Haddock'
complete $build_opt -l no-open -d 'Disable opening the local Haddock'
complete $build_opt -l haddock-deps -d 'Enable building Haddocks for dependencies'
complete $build_opt -l no-haddock-deps -d 'Disable building Haddocks for dependencies'
complete $build_opt -l haddock-internal -d 'Enable building Haddocks for internal modules'
complete $build_opt -l no-haddock-internal -d 'Disable building Haddocks for internal modules'
complete $build_opt -l haddock-hyperlink-source -d 'Enable building hyperlinked source for Haddock (like haddock --hyperlinked-source)'
complete $build_opt -l no-haddock-hyperlink-source -d 'Disable building hyperlinked source for Haddock (like haddock --hyperlinked-source)'
complete $build_opt -l copy-bins -d 'Enable copying binaries to the local-bin-path (see \'stack path\')'
complete $build_opt -l no-copy-bins -d 'Disable copying binaries to the local-bin-path (see \'stack path\')'
complete $build_opt -l copy-compiler-tool -d 'Enable copying binaries of targets to compiler-tools-bin (see \'stack path\')'
complete $build_opt -l no-copy-compiler-tool -d 'Disable copying binaries of targets to compiler-tools-bin (see \'stack path\')'
complete $build_opt -l prefetch -d 'Enable Fetch packages necessary for the build immediately, useful with --dry-run'
complete $build_opt -l no-prefetch -d 'Disable Fetch packages necessary for the build immediately, useful with --dry-run'
complete $build_opt -l keep-going -d 'Enable continue running after a step fails (default: false for build, true for test/bench)'
complete $build_opt -l no-keep-going -d 'Disable continue running after a step fails (default: false for build, true for test/bench)'
complete $build_opt -l keep-tmp-files -d 'Enable intermediate files and build directories (default: false)'
complete $build_opt -l no-keep-tmp-files -d 'Disable intermediate files and build directories (default: false)'
complete $build_opt -l force-dirty -d 'Enable Force treating all local packages as having dirty files (useful for case where stack can\'t detect a file change'
complete $build_opt -l no-force-dirty -d 'Disable Force treating all local packages as having dirty files (useful for case where stack can\'t detect a file change'
complete $build_opt -l test -d 'Enable testing the package(s) in this directory/configuration'
complete $build_opt -l no-test -d 'Disable testing the package(s) in this directory/configuration'
complete $build_opt -l rerun-tests -d 'Enable running already successful tests'
complete $build_opt -l no-rerun-tests -d 'Disable running already successful tests'
complete $build_opt -l ta -xa 'TEST_ARGS' -d 'Arguments passed in to the test suite program'
complete $build_opt -l test-arguments -xa 'TEST_ARGS' -d 'Arguments passed in to the test suite program'
complete $build_opt -l coverage -d 'Generate a code coverage report'
complete $build_opt -l no-run-tests -d 'Disable running of tests. (Tests will still be build.)'
complete $build_opt -l bench -d 'Enable benchmarking the package(s) in this directory/configuration'
complete $build_opt -l no-bench -d 'Disable benchmarking the package(s) in this directory/configuration'
complete $build_opt -l ba -xa 'BENCH_ARGS' -d 'Forward BENCH_ARGS to the benchmark suite. Supports templates form \'cabal bench\''
complete $build_opt -l benchmark-arguments -xa 'BENCH_ARGS' -d 'Forward BENCH_ARGS to the benchmark suite. Supports templates form \'cabal bench\''
complete $build_opt -l no-run-benchmarks -d 'Disable runninng of benchmarks. (Benchmarks will still be build.)'
complete $build_opt -l reconfigure -d 'Eanble Perform the configure step even if unnecessary. Useful in some corner cases with custom Setup.hs files.'
complete $build_opt -l no-reconfigure -d 'Disable Perform the configure step even if unnecessary. Useful in some corner cases with custom Setup.hs files.'
complete $build_opt -l cabal-verbose -d 'Enable Ask Cabal to be verbose in its output'
complete $build_opt -l no-cabal-verbose -d 'Disable Ask Cabal to be verbose in its output'
complete $build_opt -l split-objs -d 'Eanble split-objs, to reduce output size (at the cost of build time). Note that this feature is EXPERIMENTAL, and its behavior may be changed and improved. You will need to clean your workdirs before use. If you want to compile all dependencies with split-objs, you will need to delete the snapshot (and all snapshots that could reference that snapshot).'
complete $build_opt -l no-split-objs -d 'Disable split-objs, to reduce output size (at the cost of build time). Note that this feature is EXPERIMENTAL, and its behavior may be changed and improved. You will need to clean your workdirs before use. If you want to compile all dependencies with split-objs, you will need to delete the snapshot (and all snapshots that could reference that snapshot).'
complete $build_opt -l skip -xa 'ARG' -d 'Skip given component, can be specified multiple times'
complete $build_opt -l interleaved-output -d 'Enable Pring concurrent GHC output to the console with a prefix for the package name'
complete $build_opt -l no-interleaved-output -d 'Disable Pring concurrent GHC output to the console with a prefix for the package name'

##
# new
set -l new_opt -c stack -n '__fish_seen_subcommand_from new'

complete $new_opt -l bare -d 'Do not create a subdirectory for the project'
complete $new_opt -s p -l param -xa 'KEY:VALUE' -d 'Parameter for the template in the format key:value'
complete $new_opt -l solver -d 'Use a dependency solver to determine extra dependencies'
complete $new_opt -l omit-packages -d 'Exclude conflicting or incompatible user packages'
complete $new_opt -l force -d "Force overwriting an existing stack.yaml"
complete $new_opt -l ignore-subdirs -d "Do not search for .cabal files in sub directories"

##
# init
set -l init_opt -c stack -n '__fish_seen_subcommand_from init'

complete $init_opt -l solver -d 'Use a dependency solver to determine extra dependencies'
complete $init_opt -l omit-packages -d 'Exclude conflicting or incompatible user packages'
complete $init_opt -l force -d "Force overwriting an existing stack.yaml"
complete $init_opt -l ignore-subdirs -d "Do not search for .cabal files in sub directories"

##
# solver
set -l solver_opt -c stack -n '__fish_seen_subcommand_from solver'

complete $solver_opt -l update-config -d "Enable Automatically update stack.yaml with the solver's recommendations"
complete $solver_opt -l no-update-config -d "Disable Automatically update stack.yaml with the solver's recommendations"

##
# setup
set -l setup_opt -c stack -n '__fish_seen_subcommand_from setup'

complete $setup_opt -l reinstall -d "Enable reinstalling GHC, even if available (incompatible with --system-ghc)"
complete $setup_opt -l no-reinstall -d "Disable reinstalling GHC, even if available (incompatible with --system-ghc)"
complete $setup_opt -l install-cabal -xa "VERSION" -d "Install a specific version of Cabal"
complete $setup_opt -l upgrade-cabal -d "DEPRECATED Install latest version of Cabal globally"
complete $setup_opt -l stack-setup-yaml -xa "URL" -d "DEPRECATED: Use 'setup-info-yaml' instead"
complete $setup_opt -l setup-info-yaml -xa "URL" -d "Alternate URL or absolute path for stack dependencies"
complete $setup_opt -l ghc-bindist -xa "URL" -d "Alternate GHC binary distribution (requires custom --ghc-variant)"
complete $setup_opt -l ghcjs-boot-options -xa "GHCJS_BOOT" -d "Additional ghcjs-boot options"
complete $setup_opt -l ghcjs-boot-clean -d "Enable Control if ghcjs-boot should have --clean option present"
complete $setup_opt -l no-ghcjs-boot-clean -d "Disable Control if ghcjs-boot should have --clean option present"

##
# path
set -l path_opt -c stack -n '__fish_seen_subcommand_from path'

complete $path_opt -l stack-root -d "Global stack root directory"
complete $path_opt -l project-root -d "Project root (derived from stack.yaml file)"
complete $path_opt -l config-location -d "Configuration location (where the stack.yaml file is)"
complete $path_opt -l bin-path -d "PATH environment variable"
complete $path_opt -l programs -d "Install location for GHC and other core tools"
complete $path_opt -l compiler-exe -d "Compiler binary (e.g. ghc)"
complete $path_opt -l compiler-bin -d "Directory containing the compiler binary (e.g. ghc)"
complete $path_opt -l compiler-tools-bin -d "Directory containing binaries specific to a particular compiler (e.g. intero)"
complete $path_opt -l local-bin -d "Local bin dir where stack installs executables (e.g. ~/.local/bin)"
complete $path_opt -l extra-include-dirs -d "Extra include directories"
complete $path_opt -l extra-library-dirs -d "Extra library directories"
complete $path_opt -l snapshot-pkg-db -d "Snapshot package database"
complete $path_opt -l local-pkg-db -d "Local project package database"
complete $path_opt -l global-pkg-db -d "Global package database"
complete $path_opt -l ghc-package-path -d "GHC_PACKAGE_PATH environment variable"
complete $path_opt -l snapshot-install-root -d "Snapshot installation root"
complete $path_opt -l local-install-root -d "Local project installation root"
complete $path_opt -l snapshot-doc-root -d "Snapshot documentation root"
complete $path_opt -l local-doc-root -d "Local project documentation root"
complete $path_opt -l dist-dir -d "Dist work directory, relative to package directory"
complete $path_opt -l local-hpc-root -d "Where HPC reports and tix files are stored"
complete $path_opt -l local-bin-path -d "DEPRECATED: Use '--local-bin' instead"
complete $path_opt -l ghc-paths -d "DEPRECATED: Use '--programs' instead"
complete $path_opt -l global-stack-root -d "DEPRECATED: Use '--stack-root' instead"

##
# ls

# ls snapshots
set -l ls_opt -c stack -n '__fish_use_subcommand' -xa ls -n '__fish_use_subsubcommand; and __fish_seen_subcommand_from ls'
set -l ls_snapshots_opt -c stack -n '__fish_seen_subcommand_from ls snapshots; and __fish_seen_subcommand_from snapshots'

complete $ls_opt -xa snapshots -d 'List commnand. (Supports snapshots and dependencies)'
complete $ls_snapshots_opt -s l -l lts -d "Only show lts snapshots"
complete $ls_snapshots_opt -s n -l nightly -d "Only show nightly snapshots"

set -l ls_snapshots_remote_opt -c stack -n '__fish_use_subcommand' -xa ls -n '__fish_use_subsubcommand; and __fish_seen_subcommand_from ls' -xa snapshots -n '__fish_use_subsubsubcommand; and __fish_seen_subcommand_from ls; and __fish_seen_subcommand_from snapshots'
complete $ls_snapshots_remote_opt -xa remote -d 'View remote snapshot'
complete $ls_snapshots_remote_opt -xa local -d 'View local snapshot'

# ls dependencies
set -l ls_dependencies_opt -c stack -n '
  __fish_seen_subcommand_from ls;
  and __fish_seen_subcommand_from dependencies
  or __fish_seen_subcommand_from list-dependenciess
  '

complete $ls_opt -xa dependencies -d "View the dependencies"
complete $ls_dependencies_opt -l external -d 'Enable inclusion of external dependencies'
complete $ls_dependencies_opt -l no-external -d 'Disable inclusion of external dependencies'
complete $ls_dependencies_opt -l include-base -d 'Enable inclusion of dependencies on base'
complete $ls_dependencies_opt -l no-include-base -d 'Disable inclusion of dependencies on base'
complete $ls_dependencies_opt -l depth -xa "DEPTH" -d 'Limit the depth of dependency resolution (Default: No limit)'
complete $ls_dependencies_opt -l prune -xa "PACKAGES" -d 'Prune each package name from the comma separated list of package names PACKAGES'
complete $ls_dependencies_opt -l flag -xa 'PACKAGE:FLAG' -d 'Override flags set in stack.yaml (applies to local packages and extra-deps)'
complete $ls_dependencies_opt -l test -d "Consider dependencies of test components"
complete $ls_dependencies_opt -l bench -d "Consider dependencies of benchmark components"
complete $ls_dependencies_opt -l separator -xa "SEP" -d 'Separator between package name and package version. (default: " ")'
complete $ls_dependencies_opt -l license -d "Enable printing of dependency licenses instead of versions"
complete $ls_dependencies_opt -l no-license -d "Disable printing of dependency licenses instead of versions"

##
# unpack
set -l unpack_opt -c stack -n '__fish_seen_subcommand_from unpack'

complete $unpack_opt -l to -xa "ARG" -d 'Optional path to unpack the package into (will unpack into subdirectory)'

##
# upgrade
set -l upgrade_opt -c stack -n '__fish_seen_subcommand_from upgrade'

complete $upgrade_opt -l source-only -d 'Do not use a binary upgrade path'
complete $upgrade_opt -l binary-platform -xa "ARG" -d 'Platform type for archive to download'
complete $upgrade_opt -l force-download -d 'Download the latest available stack executable'
complete $upgrade_opt -l binary-version -xa "ARG" -d 'Download a specific stack version'
complete $upgrade_opt -l github-org -xa "ARG" -d 'Github organization name'
complete $upgrade_opt -l github-repo -xa "ARG" -d 'Github repository name'
complete $upgrade_opt -l binary-only -d 'Do not use a source upgrade path'
complete $upgrade_opt -l git -d 'Clone from Git instead of downloading from Hackage (more dangerous)'
complete $upgrade_opt -l git-repo -xa "ARG" -d 'Clone from specified git'
complete $upgrade_opt -l git-branch -xa "ARG" -d 'Clone from this git branch (default: "master")'

##
# upload
set -l upload_opt -c stack -n '__fish_seen_subcommand_from upload'

complete $upload_opt -l pvp-bounds -xa "PVP-BOUNDS" -d 'How PVP version bounds should be added to .cabal file: none, lower, upper, both'
complete $upload_opt -l ignore-check -d 'Do not check package for common mistakes'
complete $upload_opt -l no-signature -d 'Do not sign & upload signatures'
complete $upload_opt -l sig-server -xa "URL" -d 'URL (default: "https://sig.commercialhaskell.org")'
complete $upload_opt -l test-tarball -d 'Enable building of the resulting tarball'
complete $upload_opt -l no-test-tarball -d 'Disable building of the resulting tarball'
complete $upload_opt -l tar-dir -xa "ARG" -d 'If specified, copy all the tar to this dir'

##
# sdist
set -l sdist_opt -c stack -n '__fish_seen_subcommand_from sdist'

complete $sdist_opt -l pvp-bounds -xa "PVP-BOUNDS" -d 'How PVP version bounds should be added to .cabal file: none, lower, upper, both'
complete $sdist_opt -l ignore-check -d 'Do not check package for common mistakes'
complete $sdist_opt -l sign -d 'Sign & upload signatures'
complete $sdist_opt -l sig-server -xa "URL" -d 'URL (default: "https://sig.commercialhaskell.org")'
complete $sdist_opt -l test-tarball -d 'Enable building of the resulting tarball'
complete $sdist_opt -l no-test-tarball -d 'Disable building of the resulting tarball'
complete $sdist_opt -l tar-dir -xa "ARG" -d 'If specified, copy all the tar to this dir'

##
# dot
set -l dot_opt -c stack -n '__fish_seen_subcommand_from dot'

complete $dot_opt -l external -d 'Enable inclusion of external dependencies'
complete $dot_opt -l no-external -d 'Disable inclusion of external dependencies'
complete $dot_opt -l include-base -d 'Enable inclusion of dependencies on base'
complete $dot_opt -l no-include-base -d 'Disable inclusion of dependencies on base'
complete $dot_opt -l depth -xa "DEPTH" -d 'Limit the depth of dependency resolution (Default: No limit)'
complete $dot_opt -l prune -xa "PACKAGES" -d 'Prune each package name from the comma separated list of package names PACKAGES'
complete $dot_opt -l flag -xa 'PACKAGE:FLAG' -d 'Override flags set in stack.yaml (applies to local packages and extra-deps)'
complete $dot_opt -l test -d "Consider dependencies of test components"
complete $dot_opt -l bench -d "Consider dependencies of benchmark components"

##
# ghc, exec, run, runghc, runhaskell, eval
set -l ghc_opt -c stack -n '
  __fish_seen_subcommand_from ghc;
  or __fish_seen_subcommand_from exec;
  or __fish_seen_subcommand_from run;
  or __fish_seen_subcommand_from runghc;
  or __fish_seen_subcommand_from runhaskell;
  or __fish_seen_subcommand_from eval;
  '

complete $ghc_opt -l plain -d 'Use an unmodified environment (only useful with Docker)'
complete $ghc_opt -l ghc-package-path -d 'Enable setting the GHC_PACKAGE_PATH variable for the subprocess'
complete $ghc_opt -l no-ghc-package-path -d 'Disable setting the GHC_PACKAGE_PATH variable for the subprocess'
complete $ghc_opt -l stack-exe -d 'Enable setting the STACK_EXE environment variable to the path for the stack executable'
complete $ghc_opt -l no-stack-exe -d 'Disable setting the STACK_EXE environment variable to the path for the stack executable'
complete $ghc_opt -l package -xa "ARG" -d 'Additional packages that must be installed'
complete $ghc_opt -l rts-options -xa "RTSFLAG" -d 'Explicit RTS options to pass to application'
complete $ghc_opt -l cwd -xa '(__fish_complete_directories)' -d 'Sets the working directory before executing'

##
# hoogle
set -l hoogle_opt -c stack -n '__fish_seen_subcommand_from hoogle'

complete $hoogle_opt -l setup -d 'Enable If needed: install hoogle, build haddocks and generate a hoogle database'
complete $hoogle_opt -l no-setup -d 'Disable If needed: install hoogle, build haddocks and generate a hoogle database'
complete $hoogle_opt -l rebuild -d 'Rebuild the hoogle database'
complete $hoogle_opt -l server -d 'Start local Hoogle server'

##
# ghci, repl
set -l ghci_opt -c stack -n '
  __fish_seen_subcommand_from ghci;
  or __fish_seen_subcommand_from repl
  '

complete $ghci_opt -l ghci-options -xa "OPTIONS" -d 'Additional options passed to GHCi'
complete $ghci_opt -l ghc-options -xa "OPTIONS" -d 'Additional options passed to both GHC and GHCi'
complete $ghci_opt -l flag -xa 'PACKAGE:FLAG' -d 'Override flags set in stack.yaml (applies to local packages and extra-deps)'
complete $ghci_opt -l with-ghc -xa 'GHC' -d 'Use this GHC to run GHCi'
complete $ghci_opt -l load -d 'Enable/disable load modules on start-up'
complete $ghci_opt -l no-load -d 'Disable load modules on start-up'
complete $ghci_opt -l package -xa "ARG" -d 'Additional packages that must be installed'
complete $ghci_opt -l main-is -xa "TARGET" -d 'Specify which target should contain the main module to load, such as for an executable for test suite or benchmark.'
complete $ghci_opt -l load-local-deps -d 'Load all local dependencies of your targets'
complete $ghci_opt -l package-hiding -d 'Enable package hiding'
complete $ghci_opt -l no-package-hiding -d 'Disable package hiding'
complete $ghci_opt -l only-main -d 'Only load and import the main module. If no main module, no modules will be loaded.'
complete $ghci_opt -l trace -d 'Enable profiling in libraries, executables, etc. for all expressions and generate a backtrace on exeption'
complete $ghci_opt -l profile -d 'profiling in libraries, executables, etc. for all expressions and generate a profiling report in tests or benchmarks'
complete $ghci_opt -l no-strip -d 'Disable DWARF debugging symbol stripping in libraries, executables, etc. for all expressions, producing larger executables but allowing the use of standard debuggers/profilling tools/other utilities that use debugging symbols.'
complete $ghci_opt -l test -d 'Enable testing the package(s) in this directory/configuration'
complete $ghci_opt -l no-test -d 'Disable testing the package(s) in this directory/configuration'
complete $ghci_opt -l bench -d 'Enable benchmarking the package(s) in this directory/configuration'
complete $ghci_opt -l no-bench -d 'Disable benchmarking the package(s) in this directory/configuration'

##
# script
set -l script_opt -c stack -n '__fish_seen_subcommand_from script'

complete $script_opt -l package -xa "ARG" -d 'Additional packages that must be installed'
complete $script_opt -l compile -d 'Compile the script without optimization and run the executable'
complete $script_opt -l optimize -d 'Compile the script with optimization and run the executable'
complete $script_opt -l ghc-options -x -d 'Additional options passed to GHC'

##
# clean
set -l clean_opt -c stack -n '__fish_seen_subcommand_from clean'

complete $clean_opt -l full -d 'Delete all work directories (.stack-work by default) in the project'

##
# ide
set -l ide_opt -c stack -n '__fish_use_subcommand' -xa ide -n '__fish_use_subsubcommand; and __fish_seen_subcommand_from ide'

complete $ide_opt -xa packages -d 'List all available local loadable packages'
complete $ide_opt -xa targets -d 'List all available stack targets'

##
# docker
set -l docker_opt -c stack -n '__fish_use_subcommand' -xa docker -n '__fish_use_subsubcommand; and __fish_seen_subcommand_from docker'

complete $docker_opt -xa pull -d 'Pull latest version of Docker image from registry'
complete $docker_opt -xa reset -d 'Reset the Docker sandbox'
complete $docker_opt -xa cleanup -d 'lean up Docker images and containers'

# docker reset
set -l docker_reset_opt -c stack -n '
  __fish_seen_subcommand_from docker;
  and __fish_seen_subcommand_from reset
  '

complete $docker_reset_opt -l keep-home -d "Do not delete sandbox's home directory"

# docker cleanup
set -l docker_reset_opt -c stack -n '
  __fish_seen_subcommand_from docker;
  and __fish_seen_subcommand_from cleanup
  '

complete $docker_reset_opt -s i -l interactive -d "Show cleanup plan in editor and allow changes (default)"
complete $docker_reset_opt -s y -l immediate -d "Immediately execute cleanup plan"
complete $docker_reset_opt -s n -l dry-run -d "Display cleanup plan but do not execute"
complete $docker_reset_opt -l known-images -xa "LAST-USED-DAYS-AGO" -d "move known images last used N days ago (default 14)"
complete $docker_reset_opt -l no-known-images -d "Do not remove known images"
complete $docker_reset_opt -l unknown-images -xa "CREATED-DAYS-AGO" -d "Remove unknown images created N days ago"
complete $docker_reset_opt -l no-unknown-images -d "Do not remove unknown images (default)"
complete $docker_reset_opt -l dangling-images -xa "CREATED-DAYS-AGO" -d "Remove dangling images created N days ago (default 0)"
complete $docker_reset_opt -l no-dangling-images -d "Do not remove dangling images"
complete $docker_reset_opt -l stopped-containers -xa "CREATED-DAYS-AGO" -d "Remove stopped containers created N days ago"
complete $docker_reset_opt -l no-stopped-containers -d "Do not remove stopped containers (default)"
complete $docker_reset_opt -l running-containers -xa "CREATED-DAYS-AGO" -d "Remove running containers created N days ago"
complete $docker_reset_opt -l no-running-containers -d "Do not remove running containers (default)"

##
# config
set -l config_opt -c stack -n '__fish_use_subcommand' -xa config -n '__fish_use_subsubcommand; and __fish_seen_subcommand_from config'

complete $config_opt -xa set -d "Sets a field in the project's stack.yaml to value"

# config set
set -l config_set_opt -c stack -n '
  __fish_seen_subcommand_from config;
  and __fish_seen_subcommand_from set
  '

complete $config_set_opt -xa resolver -d 'Change the resolver of the current project. See https://docs.haskellstack.org/en/stable/yaml_configuration/#resolver for more info.'
complete $config_set_opt -xa system-ghc -d 'Configure whether stack should use a system GHC installation or not.'
complete $config_set_opt -xa install-ghc -d 'Configure whether stack should automatically install GHC when necessary.'

# config set system-ghc
# config set install-ghc
set -l config_set_system_ghc_opt -c stack -n '
  __fish_seen_subcommand_from config;
  and __fish_seen_subcommand_from set;
  and __fish_seen_subcommand_from system-ghc;
  or __fish_seen_subcommand_from install-ghc
  '
complete $config_set_system_ghc_opt -l global -d 'Modify the global configuration (typically at "~/.stack/config.yaml") instead of the project stack.yaml.'

##
# image
set -l image_opt -c stack -n '__fish_use_subcommand' -xa image -n '__fish_use_subsubcommand; and __fish_seen_subcommand_from image'

complete $image_opt -xa container -d "Build a Docker image for the project"

# image container
set -l image_container_opt -c stack -n '
  __fish_seen_subcommand_from image;
  and __fish_seen_subcommand_from container
  '

complete $image_container_opt -l build -d 'Enable building the project before creating the container'
complete $image_container_opt -l no-build -d 'Disable building the project before creating the container'
complete $image_container_opt -l image -xa "ARG" -d 'A specific container image name to build'

##
# hpc
set -l hpc_opt -c stack -n '__fish_use_subcommand' -xa hpc -n '__fish_use_subsubcommand; and __fish_seen_subcommand_from hpc'

complete $hpc_opt -xa report -d "Generate unified HPC coverage report from tix files and project targets"

# hpc report
set -l hpc_report_opt -c stack -n '
  __fish_seen_subcommand_from hpc;
  and __fish_seen_subcommand_from report
  '

complete $hpc_report_opt -l all -d 'Use results from all packages and components involved in previous --coverage run'
complete $hpc_report_opt -l destdir -ra '(__fish_complete_directories)' -d 'Output directory for HTML report'
complete $hpc_report_opt -l open -d 'Open the report in the browser'