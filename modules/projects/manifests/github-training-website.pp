class projects::github-training-website {
  boxen::project { 'github-training-website':
    ruby   => '1.9.3',
    source => 'github/training.github.com'
  }

  file { "${boxen::config::srcdir}/training.github.com":
    ensure => link,
    target => "${boxen::config::srcdir}/github-training-website"
  }
}