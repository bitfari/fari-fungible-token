;; Implement the `ft-trait` trait defined in the `ft-trait` contract
(impl-trait .ft-trait.sip-010-trait)

(define-fungible-token fari-token)

;; get the token balance of owner
(define-read-only (get-balance (owner principal))
  (begin
    (ok (ft-get-balance fari-token owner))))

;; returns the total number of tokens
(define-read-only (get-total-supply)
  (ok (ft-get-supply fari-token)))

;; returns the token name
(define-read-only (get-name)
  (ok "Fari Token"))

;; the symbol or "ticker" for this token
(define-read-only (get-symbol)
  (ok "FARI"))

;; the number of decimals used
(define-read-only (get-decimals)
  (ok u8))

;; Transfers tokens to a recipient
(define-public (transfer (amount uint) (sender principal) (recipient principal) (memo (optional (buff 34))))
  (if (is-eq tx-sender sender)
    (begin
      (try! (ft-transfer? fari-token amount sender recipient))
      (print memo)
      (ok true)
    )
    (err u4)))

(define-public (get-token-uri)
  (ok (some u"https://bitfari.org/token/")))

;; Mint this token to a few people when deployed
;; development team
(ft-mint? fari-token u10000000 'SP3SW54K3QMDZ0BB34KXQ62FNFKDBYB4RMTHJ19SG)

;; bitfari foundation treasury
;; 10% to be distributed to the community for development, promotions, etc.
;; 90% to be distributed to network operators, such as screen operators, auditors, customers, etc.
(ft-mint? fari-token u90000000 'SP213KNHB5QD308TEESY1ZMX1BP8EZDPG4JWD0MEA)
