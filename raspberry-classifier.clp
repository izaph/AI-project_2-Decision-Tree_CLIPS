(deftemplate question
  (slot query-string)
  (slot answer))

(defrule ask-hairs-enlarged
  (not (question (query-string "Some hairs have an enlarged end?")))
  =>
  (printout t "Some hairs have an enlarged end? (yes/no): ")
  (bind ?ans (read))
  (assert (question (query-string "Some hairs have an enlarged end?") (answer ?ans))))

(defrule wineberry
  (question (query-string "Some hairs have an enlarged end?") (answer yes))
  =>
  (printout t "It is a Wineberry." crlf))

(defrule ask-bristly-hairs
  (question (query-string "Some hairs have an enlarged end?") (answer no))
  (not (question (query-string "Bristly, non-enlarged hairs?")))
  =>
  (printout t "Bristly, non-enlarged hairs? (yes/no): ")
  (bind ?ans (read))
  (assert (question (query-string "Bristly, non-enlarged hairs?") (answer ?ans))))

(defrule red-raspberry
  (question (query-string "Bristly, non-enlarged hairs?") (answer no))
  =>
  (printout t "It is a Red Raspberry." crlf))

(defrule ask-waxy-stems
  (question (query-string "Bristly, non-enlarged hairs?") (answer yes))
  (not (question (query-string "Stems very waxy; fruit black?")))
  =>
  (printout t "Stems very waxy; fruit black? (yes/no): ")
  (bind ?ans (read))
  (assert (question (query-string "Stems very waxy; fruit black?") (answer ?ans))))

(defrule black-raspberry
  (question (query-string "Stems very waxy; fruit black?") (answer yes))
  =>
  (printout t "It is a Black Raspberry." crlf))

(defrule ask-leaf-surface-waxy
  (question (query-string "Stems very waxy; fruit black?") (answer no))
  (not (question (query-string "Lower leaf surface and sometimes the stems waxy?")))
  =>
  (printout t "Lower leaf surface and sometimes the stems waxy? (yes/no): ")
  (bind ?ans (read))
  (assert (question (query-string "Lower leaf surface and sometimes the stems waxy?") (answer ?ans))))

(defrule flowering-raspberry
  (question (query-string "Lower leaf surface and sometimes the stems waxy?") (answer yes))
  =>
  (printout t "It is a Flowering Raspberry." crlf))

(defrule ask-lower-leaf-green
  (question (query-string "Lower leaf surface and sometimes the stems waxy?") (answer no))
  (not (question (query-string "Lower leaf surface green?")))
  =>
  (printout t "Lower leaf surface green? (yes/no): ")
  (bind ?ans (read))
  (assert (question (query-string "Lower leaf surface green?") (answer ?ans))))

(defrule leaves-compound
  (question (query-string "Lower leaf surface green?") (answer yes))
  =>
  (printout t "The plant has compound leaves." crlf))

(defrule leaves-simple
  (question (query-string "Lower leaf surface green?") (answer no))
  =>
  (printout t "The plant has simple leaves." crlf))

(deffacts start-facts
  ; a dummy fact to kick things off
  (start))

(defrule init-questioning
  ?s <- (start)
  =>
  (retract ?s)
  (printout t "Starting plant identification..." crlf))

