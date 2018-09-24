;;; Compiled snippets and support files for `terraform-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'terraform-mode
		     '(("var" "variable \"${1:name}\" {\n  ${2:default = \"$3\"}\n}" "variable" nil nil nil "/Users/Jie/.emacs.d/elpa/yasnippet-20180916.2115/snippets/terraform-mode/variable" nil nil)
		       ("tf" "terraform {\n  backend \"${1:backend}\" {\n    $0\n  }\n}\n" "terraform" nil nil nil "/Users/Jie/.emacs.d/elpa/yasnippet-20180916.2115/snippets/terraform-mode/terraform" nil nil)
		       ("res" "resource \"${1:type}\" \"${2:name}\" {\n         $0\n}\n" "resource" nil nil nil "/Users/Jie/.emacs.d/elpa/yasnippet-20180916.2115/snippets/terraform-mode/resource" nil nil)
		       ("prov" "provider \"${1:name}\" {\n  $0\n}\n" "provider" nil nil nil "/Users/Jie/.emacs.d/elpa/yasnippet-20180916.2115/snippets/terraform-mode/provider" nil nil)
		       ("output" "output \"${1:name}\" {\n  value = ${2:value}\n}\n" "output" nil nil nil "/Users/Jie/.emacs.d/elpa/yasnippet-20180916.2115/snippets/terraform-mode/output" nil nil)
		       ("mod" "module \"${1:name}\" {\n  source = \"${2:location}\"\n  $0\n}\n" "module" nil nil nil "/Users/Jie/.emacs.d/elpa/yasnippet-20180916.2115/snippets/terraform-mode/module" nil nil)
		       ("locals" "locals {\n  {$1:name} = ${2:value}\n}" "locals" nil nil nil "/Users/Jie/.emacs.d/elpa/yasnippet-20180916.2115/snippets/terraform-mode/locals" nil nil)
		       ("data" "data \"${1:type}\" \"${2:name}\" {\n  $0\n}\n" "data" nil nil nil "/Users/Jie/.emacs.d/elpa/yasnippet-20180916.2115/snippets/terraform-mode/data" nil nil)))


;;; Do not edit! File generated at Mon Sep 24 23:12:43 2018
