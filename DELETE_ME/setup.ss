(import-notify (and (getenv "VERBOSE") #t))
(generate-wpo-files #t)
(compile-imported-libraries #t)
(define disallow-wpo '())
(library-search-handler
 (let ([default-library-search (library-search-handler)])
   (lambda (who path dir* all-ext*)
     (cond
      [(ormap (lambda (p) (equal? (cdr p) ".wpo")) all-ext*)
       (if (member path disallow-wpo)
           (values #f #f #f)
           (default-library-search who path dir* all-ext*))]
      [(guard (c [else #f]) (library-object-filename path)) =>
       (lambda (obj-file)
         (values #f obj-file (file-exists? obj-file)))]
      [else (default-library-search who path dir* all-ext*)]))))
