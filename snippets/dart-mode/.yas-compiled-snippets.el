;;; Compiled snippets and support files for `dart-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'dart-mode
		     '(("set" "${1:Type} _${2:Name};\nset $2($1 $2) => _$2 = $2;" "setter" nil nil nil "/Users/Jie/.emacs.d/elpa/yasnippet-20180916.2115/snippets/dart-mode/setter" nil nil)
		       ("part" "part of ${1:Part}$0" "part" nil nil nil "/Users/Jie/.emacs.d/elpa/yasnippet-20180916.2115/snippets/dart-mode/part" nil nil)
		       ("main" "main(List<String> args) {\n  $0\n}" "main" nil nil nil "/Users/Jie/.emacs.d/elpa/yasnippet-20180916.2115/snippets/dart-mode/main" nil nil)
		       ("imp" "import '${1:Library}';$0" "import" nil nil nil "/Users/Jie/.emacs.d/elpa/yasnippet-20180916.2115/snippets/dart-mode/import" nil nil)
		       ("impl" "implements ${1:Name}$0" "impl" nil nil nil "/Users/Jie/.emacs.d/elpa/yasnippet-20180916.2115/snippets/dart-mode/impl" nil nil)
		       ("get" "${1:Type} _${2:Name};\n$1 get $2 => _$2;$0" "getter" nil nil nil "/Users/Jie/.emacs.d/elpa/yasnippet-20180916.2115/snippets/dart-mode/getter" nil nil)
		       ("getset" "${1:Type} _${2:Name};\n$1 get $2 => _$2;\nset $2($1 $2) => _$2 = $2;$0" "getset" nil nil nil "/Users/Jie/.emacs.d/elpa/yasnippet-20180916.2115/snippets/dart-mode/getset" nil nil)
		       ("afun" "Future<${1:Type}> ${2:Name}($3) async {\n  $0\n}" "funca" nil nil nil "/Users/Jie/.emacs.d/elpa/yasnippet-20180916.2115/snippets/dart-mode/funca" nil nil)
		       ("fun" "${1:Type} ${2:Name}($3) {\n  $0\n}" "fun" nil nil nil "/Users/Jie/.emacs.d/elpa/yasnippet-20180916.2115/snippets/dart-mode/func" nil nil)
		       ("fori" "for(var ${1:obj} in ${2:collection}) {\n  $0\n}" "fori" nil nil
			((yas-indent-line 'fixed)
			 (yas-wrap-around-region nil))
			"/Users/Jie/.emacs.d/elpa/yasnippet-20180916.2115/snippets/dart-mode/fori" nil nil)
		       ("for" "for(var i = ${1:0}; i ${2:< 10}; i${3:++}) {\n  $0\n}" "for" nil nil
			((yas-indent-line 'fixed)
			 (yas-wrap-around-region nil))
			"/Users/Jie/.emacs.d/elpa/yasnippet-20180916.2115/snippets/dart-mode/for" nil nil)
		       ("ext" "extends ${1:Name}$0" "ext" nil nil nil "/Users/Jie/.emacs.d/elpa/yasnippet-20180916.2115/snippets/dart-mode/ext" nil nil)
		       ("cls" "class ${1:Name} {\n  $0\n}" "class" nil nil nil "/Users/Jie/.emacs.d/elpa/yasnippet-20180916.2115/snippets/dart-mode/class" nil nil)
		       ("acls" "abstract class ${1:Name} {\n  $0\n}" "aclass" nil nil nil "/Users/Jie/.emacs.d/elpa/yasnippet-20180916.2115/snippets/dart-mode/aclass" nil nil)))


;;; Do not edit! File generated at Mon Sep 24 23:12:41 2018
