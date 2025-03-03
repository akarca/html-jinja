(script_element
  (raw_text) @content
  (#set! "language" "javascript"))

(style_element
  (raw_text) @content
  (#set! "language" "css"))

; {{ blocks }}
((_) @content
    (#match? @content "\\{\\{.*\\}\\}")
    (#set! "language" "Jinja-Inline"))

; {# blocks #}
((_) @content
    (#match? @content "\\{\\#.*\\#\\}")
    (#set! "language" "Jinja-Inline"))

; {% blocks %}
((_) @content
    (#match? @content "\\{\\%.*\\%\\}")
    (#set! "language" "Jinja-Inline"))

; Line statements
((_) @content
    (#match? @content "^#.*")
    (#set! "language" "Jinja-Inline"))
