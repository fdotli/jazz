;;;==============
;;;  JazzScheme
;;;==============
;;;
;;;; Jazz Kernel
;;;
;;;  The contents of this file are subject to the Mozilla Public License Version
;;;  1.1 (the "License"); you may not use this file except in compliance with
;;;  the License. You may obtain a copy of the License at
;;;  http://www.mozilla.org/MPL/
;;;
;;;  Software distributed under the License is distributed on an "AS IS" basis,
;;;  WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
;;;  for the specific language governing rights and limitations under the
;;;  License.
;;;
;;;  The Original Code is JazzScheme.
;;;
;;;  The Initial Developer of the Original Code is Guillaume Cartier.
;;;  Portions created by the Initial Developer are Copyright (C) 1996-2008
;;;  the Initial Developer. All Rights Reserved.
;;;
;;;  Contributor(s):
;;;    Stephane Le Cornec
;;;
;;;  Alternatively, the contents of this file may be used under the terms of
;;;  the GNU General Public License Version 2 or later (the "GPL"), in which
;;;  case the provisions of the GPL are applicable instead of those above. If
;;;  you wish to allow use of your version of this file only under the terms of
;;;  the GPL, and not to allow others to use your version of this file under the
;;;  terms of the MPL, indicate your decision by deleting the provisions above
;;;  and replace them with the notice and other provisions required by the GPL.
;;;  If you do not delete the provisions above, a recipient may use your version
;;;  of this file under the terms of any one of the MPL or the GPL.
;;;
;;;  See www.jazzscheme.org for details.


(library jazz.dialect.kernel scheme


;;;
;;;; Autoload
;;;


(native jazz.get-autoload)
(native jazz.autoload)
(native jazz.autoreload)


;;;
;;;; Boolean
;;;


(native jazz.boolean)


;;;
;;;; Build
;;;


(native jazz.build-core)
(native jazz.build-jazz)
(native jazz.build-platform)
(native jazz.build-module)
(native jazz.build-executable)
(native jazz.compile-module)
(native jazz.for-each-submodule)


;;;
;;;; Category
;;;


(native jazz.get-category-name)
(native jazz.get-category-descendants)
(native jazz.get-class-ascendant)


;;;
;;;; Char
;;;


(native jazz.symbolic-char)
(native jazz.char-symbol)


;;;
;;;; Collector
;;;


(native jazz.gc)


;;;
;;;; Continuation
;;;


(native jazz.continuation?)
(native jazz.continuation-capture)
(native jazz.continuation-graft)
(native jazz.continuation-return)


;;;
;;;; Debug
;;;


(native jazz.run-loop?)
(native jazz.terminal)
(native jazz.terminal-string)
(native jazz.error)
(native jazz.unimplemented)
(native jazz.dump-stack)
(native jazz.log-object)
(native jazz.log-string)
(native jazz.log-newline)
(native jazz.close-log)


;;;
;;;; Digest
;;;


(native open-digest)
(native close-digest)
(native digest-update-subu8vector)
(native digest-string)
(native digest-substring)
(native digest-u8vector)
(native digest-subu8vector)
(native digest-file)


;;;
;;;; Enumerator
;;;


(native jazz.enumerator?)


;;;
;;;; Exception
;;;


(native jazz.exception-reason)
(native jazz.display-exception)
(native jazz.display-continuation-backtrace)
(native jazz.get-exception-debugger)
(native jazz.set-exception-debugger)
(native jazz.system-exception-debugger)
(native jazz.system-exception-handler)
(native jazz.current-exception-handler)
(native jazz.with-exception-handler)
(native jazz.with-exception-catcher)
(native jazz.with-system-exception-handler)
(native jazz.with-propagatable-exception-catcher)
(native jazz.dump-exception)
(native jazz.raise)


;;;
;;;; Field
;;;


(native jazz.field? <object:bool>)
(native jazz.field-name)
(native jazz.find-field)


;;;
;;;; Fixnum
;;;


(native fixnum? <object:bool>)
(native flonum? <object:bool>)
(native jazz.fixnum->flonum <fx:fl>)
(native jazz.flonum->fixnum <fl:fx>)
(native fx+ <fx^fx:fx>)
(native fx- <fx^fx:fx>)
(native fx* <fx^fx:fx>)
(native jazz.+infinity)
(native jazz.-infinity)


;;;
;;;; Flonum
;;;


;; until proper call site casting of native calls

(native ##fl+ <fl^fl:fl>)
(native ##fl- <fl^fl:fl>)
(native ##fl* <fl^fl:fl>)
(native ##fl/ <fl^fl:fl>)


;;;
;;;; Foreign
;;;


(native jazz.foreign?)
(native jazz.foreign-address)
(native jazz.foreign-release!)
(native jazz.foreign-released?)
(native jazz.foreign-tags)
(native jazz.still-obj-refcount-dec!)
(native jazz.still-obj-refcount-inc!)
;;(native jazz.still-obj-refcount)


;;;
;;;; Host
;;;


(native command-line)
(native user-name)


;;;
;;;; Identifier
;;;


(native jazz.composite-name?)
(native jazz.compose-name)
(native jazz.identifier-name <symbol>)


;;;
;;;; Instance
;;;


;;(native jazz.current-instance)


;;;
;;;; Integer
;;;


(native bitwise-not <int:int>)
(native bitwise-and <int*:int>)
(native bitwise-ior <int*:int>)
(native bitwise-xor <int*:int>)
(native arithmetic-shift <int:int>)
(native bit-set? <int^int:bool>)
(native extract-bit-field <int^int^int:int>)


;;;
;;;; Kernel
;;;


(native jazz.boot-directory)
(native jazz.jazz-version)
(native jazz.jazz-install)
(native jazz.jazz-source)
(native jazz.jazz-product)
(native jazz.jazz-profile)
(native jazz.reset-packages)
(native jazz.register-product)
(native jazz.get-registered-product)
(native jazz.run-product)
(native jazz.update-product)
(native jazz.build-product)
(native jazz.find-module-src)
(native jazz.module-autoload)
(native jazz.get-environment)
(native jazz.get-environment-module)
(native jazz.load-all)


;;;
;;;; Keyword
;;;


(native jazz.keyword?)
(native jazz.string->keyword)
(native jazz.keyword->string)


;;;
;;;; List
;;;


(native jazz.not-null?)
(native jazz.listify)
(native jazz.list-copy)
(native jazz.last-pair)
(native jazz.proper-list)


;;;
;;;; Network
;;;


(native jazz.open-tcp-client)
(native jazz.open-tcp-server)
(native jazz.tcp-server-socket-info)
(native jazz.call-with-tcp-client)


;;;
;;;; Object
;;;


(native jazz.new)
(native jazz.class-of)
(native jazz.object?)
(native jazz.category?)
(native jazz.interface?)
(native jazz.method?)
(native jazz.is?)
(native jazz.subtype?)
(native jazz.subcategory?)
(native jazz.subclass?)
(native jazz.load-module)
(native jazz.reload-module)


;;;
;;;; Parameters
;;;


(native make-parameter)
(native parameterize)


;;;
;;;; Pathname
;;;


(native jazz.pathname-type)
(native jazz.pathname-expand)
(native jazz.pathname-normalize)
(native jazz.file-exists?)
(native jazz.file-delete)
(native jazz.file-copy)
(native jazz.file-modification-time)
(native jazz.file-rename)
(native jazz.current-directory)
(native jazz.directory-create)
(native jazz.directory-content)
(native jazz.directory-delete)


;;;
;;;; Pipe
;;;


(native open-string-pipe)


;;;
;;;; Port
;;;


(native port?)
(native jazz.close-port)
(native jazz.input-port-timeout-set!)
(native jazz.output-port-timeout-set!)
(native open-event-queue)
(native jazz.eof-object)
(native open-input-string)
(native open-output-string)
(native get-output-string)
(native call-with-input-string)
(native with-input-from-string)
(native call-with-output-string)
(native open-vector)
(native call-with-input-u8vector)
(native open-output-u8vector)
(native get-output-u8vector)
(native jazz.read-u8)
(native jazz.write-u8)
(native jazz.read-subu8vector)
(native jazz.write-subu8vector)
(native jazz.read-line)
(native jazz.read-proper-line)
(native jazz.read-all)
(native jazz.jazz-readtable)
(native jazz.with-jazz-readtable)
(native jazz.print)
(native jazz.pretty-print)
(native force-output)
(native current-error-port)
(native with-output-to-port)
(native write-u8)


;;;
;;;; Property
;;;


(native jazz.property-getter)
(native jazz.property-setter)


;;;
;;;; Queue
;;;


(native jazz.new-queue)
(native jazz.enqueue)
(native jazz.enqueue-list)
(native jazz.queue-list)
(native jazz.reset-queue)


;;;
;;;; Random
;;;


(native jazz.random-integer)
(native jazz.random-source-pseudo-randomize!)
(native jazz.default-random-source)


;;;
;;;; Repl
;;;


(native jazz.current-repl-context)
(native jazz.repl-context-level)
(native jazz.repl-context-depth)
(native jazz.repl-context-cont)
(native jazz.repl-context-initial-cont)
(native jazz.repl-context-prev-level)
(native jazz.repl-context-prev-depth)
(native jazz.with-repl-context)
(native jazz.inspect-repl-context)
(native jazz.repl)


;;;
;;;; Resource
;;;


(native jazz.resource-pathname)


;;;
;;;; Runtime
;;;


(native jazz.get-catalog)
(native jazz.get-catalog-entry)
(native jazz.locate-library-declaration)
(native jazz.get-object-slot)
(native jazz.set-object-slot)
(native jazz.dispatch)
(native jazz.find-dispatch)
(native jazz.call-into-abstract)
(native jazz.debug?)


;;;
;;;; Serial
;;;


(native jazz.object->serial)
(native jazz.serial->object)

;; the -number versions are necessary to support the expansion of the # reader construct
(native object->serial-number)
(native serial-number->object)


;;;
;;;; Shell
;;;


(native shell-command)


;;;
;;;; Slot
;;;


(native jazz.slot? <object:bool>)
(native jazz.slot-value)
(native jazz.set-slot-value)


;;;
;;;; Socket
;;;


(native jazz.socket-info-address)
(native jazz.socket-info-port-number)


;;;
;;;; Stack
;;;


(native jazz.get-continuation-stack)


;;;
;;;; Statprof
;;;


(native jazz.start-statprof)
(native jazz.stop-statprof)
(native jazz.reset-statprof)
(native jazz.report-statprof)


;;;
;;;; String
;;;


(native jazz.join-strings)


;;;
;;;; Symbol
;;;


(native jazz.generate-symbol)
(native jazz.with-expression-value)


;;;
;;;; System
;;;


(native jazz.open-process)
(native jazz.process-status)
(native jazz.exit)


;;;
;;;; Table
;;;


(native table?)
(native make-table)
(native table-ref)
(native table-set!)
(native table->list)
(native list->table)
(native jazz.table-clear)
(native jazz.table-length)
(native jazz.iterate-table)
(native jazz.map-table)
(native jazz.table-entries)
(native jazz.eq-hash)
(native jazz.eqv-hash)
(native jazz.equal-hash)


;;;
;;;; Terminal
;;;


(native jazz.set-terminal-title)
(native jazz.bring-terminal-to-front)
(native jazz.clear-terminal)


;;;
;;;; Thread
;;;


(native jazz.current-thread)
(native jazz.thread?)
(native jazz.make-thread)
(native jazz.thread-name)
(native jazz.thread-specific)
(native jazz.thread-specific-set!)
(native jazz.thread-base-priority)
(native jazz.thread-base-priority-set!)
(native jazz.thread-priority-boost)
(native jazz.thread-priority-boost-set!)
(native jazz.thread-start!)
(native jazz.thread-yield!)
(native jazz.thread-sleep!)
(native jazz.thread-terminate!)
(native jazz.thread-join!)
(native jazz.thread-send)
(native jazz.thread-receive)
(native jazz.thread-interrupt!)
(native jazz.thread-thread-group)
(native jazz.thread-group->thread-group-list)
(native jazz.thread-group->thread-group-vector)
(native jazz.thread-group->thread-list)
(native jazz.thread-group->thread-vector)
(native jazz.thread-state)
(native jazz.thread-state-abnormally-terminated-reason)
(native jazz.thread-state-abnormally-terminated?)
(native jazz.thread-state-active-timeout)
(native jazz.thread-state-active-waiting-for)
(native jazz.thread-state-active?)
(native jazz.thread-state-initialized?)
(native jazz.thread-state-normally-terminated-result)
(native jazz.thread-state-normally-terminated?)
(native jazz.thread-state-uninitialized?)
(native jazz.mutex?)
(native jazz.make-mutex)
(native jazz.mutex-name)
(native jazz.mutex-specific)
(native jazz.mutex-specific-set!)
(native jazz.mutex-state)
(native jazz.mutex-lock!)
(native jazz.mutex-unlock!)
(native jazz.mutex-wait)
(native jazz.condition?)
(native jazz.make-condition)
(native jazz.condition-name)
(native jazz.condition-specific)
(native jazz.condition-specific-set!)
(native jazz.condition-signal!)
(native jazz.condition-broadcast!)


;;;
;;;; Time
;;;


(native jazz.process-times)
(native jazz.cpu-time)
(native jazz.real-time)


;;;
;;;; Unspecified
;;;


(native jazz.unspecified)
(native jazz.unspecified?)
(native jazz.specified?)


;;;
;;;; Vector
;;;


(native jazz.vector-copy)
(native u8vector)
(native make-u8vector)
(native u8vector-length)
(native u8vector-ref)
(native u8vector-set!)
(native u8vector?)
(native u8vector->list)
(native list->u8vector)
(native u16vector)
(native make-u16vector)
(native u16vector-length)
(native u16vector-ref)
(native u16vector-set!)
(native u16vector?)
(native u32vector)
(native make-u32vector)
(native u32vector-length)
(native u32vector-ref)
(native u32vector-set!)
(native u32vector?)
(native f32vector)
(native make-f32vector)
(native f32vector-length)
(native f32vector-ref)
(native f32vector-set!)
(native f32vector?)
(native f64vector)
(native make-f64vector)
(native f64vector-length)
(native f64vector-ref)
(native f64vector-set!)
(native f64vector?)


;;;
;;;; Walker
;;;


(native jazz.new-walk-context)
(native jazz.register-literal-constructor)
(native jazz.specifier?)
(native jazz.binding-specifier)
(native jazz.parse-specifier)
(native jazz.requested-module-name)
(native jazz.requested-module-resource))
