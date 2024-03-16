# rime-semkey

A Semitic transliteration keyboard layout, implemented as a Rime schema

## Credits

This Rime schema began as an implementaton of Hongwei Zhang's 
[SemKey](https://www.researchgate.net/publication/330501972),
with one breaking change: most of the 'modifier keys' for diacritics are moved
after the base letter, while in the original layout they are typed first.

This schema has made other changes to the original design, which are listed
below.

## Layout

There are two variants:

1. `semkey`: My preferred layout. This layout is also used in my other projects, such as [rime-hebrew-classical](https://github.com/mksinicus/rime-hebrew-classical).
1. `semkey_original`: The layout that stays close to the original SemKey as possible. 

To SemKey users: In both variants, the Ctrl+Alt(+Shift) block in SemKey is not implemented for technical reasons. In compensation, some important letters from that block are assigned anew. See the following keymap for details.

The following keymap is based on the `semkey` variant. Move all the 'modifier keys' before the base letter to get the layout for `semkey_original`.

| Key                       | Character                      | Note                                                   |
| ------------------------- | ------------------------------ | ------------------------------------------------------ |
| [aeiou] + \`              | [aeiou] + grave                |                                                        |
| [aeiough] + \(            | [aeiough] + breve              | `h(` becomes ḫ                                         |
| [aeiou] + )               | [aeiou] + hook                 | p.ex. ả                                                |
| [aeioubgdktp] + -         | [aeioubgdktp] + macron/line    | b, d, k, t becomes ḇ ḏ ḵ ṯ;<br />p̄ is a composed char. |
| [aeiouyt] + ;             | [aeiouyt] + diaeresis/umlaut   |                                                        |
| [aeiougsy] + '            | [aeiougsy] + acute             |                                                        |
| c + '                     | c cedil (ç)                    |                                                        |
| [cgjsz] + ,               | [cgjsz] + caron                |                                                        |
| e + ,                     | schwa (ǝ)                      |                                                        |
| [dhklstz] + .             | [dhklstz] + dot under          | p.ex. ḍ                                                |
| [gp] + .                  | [gp] + dot above               | ġ ṗ                                                    |
| [abcdeghijklopqrtuyz] + / | [abcdeghijklopqrtuyz] + stroke | p.ex. ƀ;<br />a, c, e, l, o becomes ⱥ, ȼ, ɇ, ł, ø.     |
| [aeioun] + ~              | [aeioun] + tilde               | p.ex. ã ñ                                              |
| [aeiougs] + ^             | [aeiougs] + circumflex         | p.ex. â ŝ                                              |
| , + [                     | ⸢                              |                                                        |
| , + ]                     | ⸣                              |                                                        |
| , + =                     | ⸗                              |                                                        |
| , + [0123456789]          | subscript numbers              | ₀₁₂₃…                                                  |
| / + 0                     | ∅                              |                                                        |
| a]                        | alif (ʾ)                       | Appended                                               |
| a[                        | ayin (ʿ)                       | Appended                                               |
| q]                        | ˀ                              | Appended                                               |
| q[                        | ˁ                              | Appended                                               |

