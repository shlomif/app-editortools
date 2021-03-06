use Module::Build;

my $build = Module::Build->new(
    module_name   => 'App::EditorTools',
    license       => 'perl',
    create_readme => 1,
    script_files  => [qw(script/editortools-vim)],
    requires      => {
        'perl'              => '5.008',
        'PPIx::EditorTools' => 0,
        'App::Cmd'          => '0.301',
    },
    build_requires => {
        'Test::Differences' => 0,
        'Text::Diff'        => 0,
        'Test::More'        => 0.87,
        'File::Find'        => 0,
    },

    meta_merge => {
        resources => {
            bugtracker =>
              'http://rt.cpan.org/NoAuth/Bugs.html?Dist=App-EditorTools',
            repository => 'http://github.com/mvgrimes/app-editortools'
        }
    },
);

$build->create_build_script;

