; Lemma: F(n) = (\phi^{n} - \psi^{n}) / \sqrt{5}
;   Base case:
;     n = 0: (\phi^{0} - \psi^{0}) / \sqrt{5} = 0 = F(0) by def
;     n = 1: (\phi^{1} - \psi^{1}) / \sqrt{5}
;           = (((1 + \sqrt{5}) / 2) - ((1 - \sqrt{5}) / 2)) / \sqrt{5}
;           = (1 + \sqrt{5} - 1 + \sqrt{5}) / (2 \sqrt{5})
;           = (2 \sqrt{5}) / (2 \sqrt{5}) = 1 = F(1) by def
;   Induction step:
;     Given n s.t. F(n-1) = (\phi^{n-1} - \psi^{n-1}) / \sqrt{5}
;     and F(n) = (\phi^{n} - \psi^{n}) / \sqrt{5}, by def we must have
;     F(n+1) = F(n) + F(n-1)
;     = (\phi^{n} - \psi^{n}) / \sqrt{5} + (\phi^{n-1} - \psi^{n-1}) / \sqrt{5}
;     = ((\phi^{n} - \psi^{n}) + (\phi^{n-1} - \psi^{n-1})) / \sqrt{5}
;     = ((\phi^{n} + \phi^{n-1}) - (\psi^{n} + \psi^{n-1})) / \sqrt{5}
;     = (\phi^{n-1}(\phi + 1) - \psi^{n-1}(\psi + 1)) / \sqrt{5}
;     = (\phi^{n-1}\phi^{2} - \psi^{n-1}\psi^{2}) / \sqrt{5}
;     = (\phi^{n+1} - \psi^{n+1}) / \sqrt{5} as desired.

; Proof that F(n) is the closest integer to \phi^{n} / \sqrt{5}:
;   WTS |F(n) - \phi^{n} / \sqrt{5}| < 1/2
;   => |(\phi^{n} - \psi^{n}) / \sqrt{5} - \phi^{n} / \sqrt{5}| < 1/2
;   => |(\phi^{n} - \psi^{n} - \phi^{n}) / \sqrt{5}| < 1/2
;   => |\psi^{n}) / \sqrt{5}| < 1/2
;   => |\psi^{n})| < \sqrt{5} / 2
;   We know -1 < \psi < 0 => 0 < |\psi^{n}| < 1 and 1 < \sqrt{5} / 2.

(print "QED")
