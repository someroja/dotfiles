;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Osmo Someroja"
      user-mail-address "osmo@someroja.com")

(setq doom-font (font-spec :family "IBM Plex Mono" :size 18)
      doom-variable-pitch-font (font-spec :family "IBM Plex Sans" :size 18)
      doom-big-font (font-spec :family "IBM Plex Mono" :size 36)
      doom-serif-font (font-spec :family "IBM Plex Serif" :size 18))

; Load local config if we have it
(load! "config.local" doom-user-dir t)
