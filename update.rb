#!/usr/bin/env ruby

# vim: foldmethod=marker
package_list = {
  'vim-fugitive' => 'https://github.com/tpope/vim-fugitive.git',
  'unite.vim' => 'https://github.com/Shougo/unite.vim.git',
  'vimproc.vim' => 'https://github.com/Shougo/vimproc.vim.git',
  'neosnippet.vim' => 'https://github.com/Shougo/neosnippet.vim.git',
  'unite-outline' => 'https://github.com/Shougo/unite-outline.git',
  'vim-airline' => 'https://github.com/bling/vim-airline.git',
  'vim-snippets' => 'https://github.com/honza/vim-snippets.git',
  'unite-tag' => 'https://github.com/tsukkee/unite-tag.git',
  'vim-rails' => 'https://github.com/tpope/vim-rails.git',
  'vim-surround' => 'https://github.com/tpope/vim-surround.git',
  'unite-grep-vcs' => 'https://github.com/lambdalisue/unite-grep-vcs.git',
  'vim-session' => 'https://github.com/xolox/vim-session.git',
  'nerdtree' => 'https://github.com/scrooloose/nerdtree.git',
  'delimitMate' => 'https://github.com/Raimondi/delimitMate.git',
  'vim-easymotion' => 'https://github.com/Lokaltog/vim-easymotion.git',
  'neomru.vim' => 'https://github.com/Shougo/neomru.vim.git',
  'crunch.vim' => 'https://github.com/arecarn/crunch.vim.git',
  'rainbow' => 'https://github.com/luochen1990/rainbow.git',
  'selection.vim' => 'https://github.com/arecarn/selection.vim.git',
  'syntastic' => 'https://github.com/scrooloose/syntastic.git',
  'tabular' => 'https://github.com/godlygeek/tabular.git',
  'tagbar' => 'https://github.com/majutsushi/tagbar.git',

  # Clojure {{{
  'vim-fireplace' => 'https://github.com/tpope/vim-fireplace.git',
  'vim-clojure-static' => 'https://github.com/guns/vim-clojure-static.git',
  'vim-leiningen' => 'https://github.com/tpope/vim-leiningen',
  'vim-dispatch' => 'https://github.com/tpope/vim-dispatch.git',
  'vim-sexp' => 'https://github.com/guns/vim-sexp',
  'vim-sexp-mappings-for-regular-people' => 'https://github.com/tpope/vim-sexp-mappings-for-regular-people',
  # end Clojure }}}

  # {{{ color scheme'
  'gruvbox' => 'https://github.com/morhetz/gruvbox.git',
  'jellybeans.vim' => 'https://github.com/nanotech/jellybeans.vim.git',
  'Apprentice' => 'https://github.com/romainl/Apprentice.git',
  'oceanic-next' => 'https://github.com/mhartington/oceanic-next.git',
  'onedark.vim' => 'https://github.com/joshdick/onedark.vim.git',
  # end color scheme }}}

  'vimux' => 'git@github.com:benmills/vimux.git',
  'vim-table-mode' => 'https://github.com/dhruvasagar/vim-table-mode',
  'vim-commentary' => 'https://github.com/tpope/vim-commentary.git',
  'indentLine' => 'https://github.com/Yggdroot/indentLine.git',
  'deoplete.nvim' => 'https://github.com/Shougo/deoplete.nvim.git',
  'vim-test' => 'https://github.com/janko-m/vim-test.git',
  'neoterm' => 'https://github.com/kassio/neoterm.git',
  'vim-follow-my-lead' => 'https://github.com/ktonga/vim-follow-my-lead.git',
  'vim-gitgutter' => 'https://github.com/airblade/vim-gitgutter.git',
  'vim-rest-console' => 'https://github.com/diepm/vim-rest-console.git',
  'neomake' => 'https://github.com/benekastah/neomake.git',
  'rust.vim' => 'https://github.com/rust-lang/rust.vim.git'
}

package_list.each do |name, link|
  `git status`
  `git subtree pull --prefix bundle/#{name} #{link} master --squash`
end

