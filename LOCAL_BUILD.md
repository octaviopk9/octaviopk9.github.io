# Local build

This repository is configured to mirror GitHub Pages' `github-pages` gem while staying easy to preview locally.

Recommended local Ruby for the `github-pages` gem workflow: **Ruby 3.1.7**.

```bash
ruby -v
# ruby 3.1.7

gem install bundler
bundle install
bundle exec jekyll serve
```

Then open <http://127.0.0.1:4000/>.

If dependencies were previously installed with another Ruby/Bundler version:

```bash
rm -rf .bundle vendor/bundle
rm -f Gemfile.lock
bundle install
```

No Rust toolchain is required for this site.
