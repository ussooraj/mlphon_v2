#include "alphabets.fst"

%ALPHABET = [#ml##spl-char##boundarytag#]
$MISC$ = [#boundarytags#]
$zwnj$ = [‌]:<zwnj>
$zwj$ = [‍]:<zwj>
$virama$ = ്:<virama>
$vowel$ = (അ:{a}|\
          ആ:{aː}|\
          ഇ:{i}|\
          ഈ:{iː} |\
          ഉ:{u}|\
          ഊ:{uː}|\
          ഋ:{rɨ}|\
          ൠ:{rɨː}|\
          ഌ:{lɨ}|\
          ൡ:{lɨː}|\
          എ:{e}|\
          ഏ:{eː}|\
          ഐ:{ai̯}|\
          ഒ:{o}|\
          ഓ:{oː}|\
          ഔ:{au̯}) <>:<vowel>
$vowelsign$ = (	ാ:{aː}|\
		            ി:{i}|\
		            ീ:{iː}|\
		            ു:{u}|\
		            ൂ:{uː}|\
		            ൃ:{rɨ}|\
		            ൄ:{rɨː}|\
		            ൢ:{lɨ}|\
		            ൣ:{lɨː}|\
		            െ:{e}|\
		            േ:{eː}|\
		            ൈ:{ai̯}|\
		            ൊ:{o}|\
		            ോ:{oː}|\
		            ൗ:{au̯}|\
		            ൌ:{au̯}) <>:<v_sign>
$anuswara$ = ം:{m <anuswara>}
$visarga$ = ഃ:{ɦ<visarga>}
$velar$ = (ക:{k<plosive><voiceless><unaspirated>}|\
          ഖ:{kʰ<plosive><voiceless><aspirated>}|\
          ഗ:{ɡ<plosive><voiced><unaspirated>}|\
          ഘ:{ɡʱ<plosive><voiced><aspirated>}|\
          ങ:{ŋ<nasal>}) <>:<velar>
$palatal$ = (ച:{c<plosive><voiceless><unaspirated>}|\
            ഛ:{cʰ<plosive><voiceless><aspirated>}|\
            ജ:{ɟ<plosive><voiced><unaspirated>}|\
            ഝ:{ɟʱ<plosive><voiced><aspirated>}|\
            ഞ:{ɲ<nasal>}) <>:<palatal>
$retroflex$ =( ട:{ʈ<plosive><voiceless><unaspirated>}|\
              ഠ:{ʈʰ<plosive><voiceless><aspirated>}|\
              ഡ:{ɖ<plosive><voiced><unaspirated>}|\
              ഢ:{ɖʱ<plosive><voiced><aspirated>}|\
              ണ:{ɳ<nasal>}) <>:<retroflex>
$dental$ = (ത:{t̪<plosive><voiceless><unaspirated>}|\
           ഥ:{t̪ʰ<plosive><voiceless><aspirated>}|\
           ദ:{d̪<plosive><voiced><unaspirated>}|\
           ധ:{d̪ʱ<plosive><voiced><aspirated>}|\
           ന:{n̪<nasal>}) <>:<dental>
$alveolar$ = (ഺ:{ṯ<plosive><voiceless><unaspirated>}|\
             ഩ:{n<nasal>}) <>:<alveolar>
$labial$ = (പ:{p<plosive><voiceless><unaspirated>}|\
        %    ഫ:{pʰ<plosive><voiceless><aspirated>}|\
           ബ:{b<plosive><voiced><unaspirated>}|\
           ഭ:{bʱ<plosive><voiced><aspirated>}|\
           മ:{m<nasal>}) <>:<labial>
$otherconsonants$ = (ഫ:{fa<fricative><labiodental>}|\
                    യ:{ja<glide><palatal>}|\
                    ര:{ɾa<flapped><alveolar>}|\
                    ല:{la<lateral><alveolar>}|\
                    വ:{ʋa<approximant><labiodental>}|\
                    ശ:{ç<fricative><palatal>}|\
                    ഷ:{ʂa<fricative><retroflex>}|\
                    സ:{sa<fricative><alveolar>}|\
                    ഹ:{ɦa<fricative><glottal>}|\
                    ള:{ɭa<lateral><retroflex>}|\
                    ഴ:{ɻa<approximant><retroflex>}|\
                    റ:{ra<trill><alveolar>})
$dotreph$ = ൎ:{r<trill><alveolar><dotreph>}
$chillu$ = ൺ:{ɳ<chil>} | ൻ:{n<chil>} |ർ:{r<chil>} |ൽ:{l<chil>} | ൾ:{ɭ<chil>}| ൿ:{k<chil>}| ൔ:{m<chil>} | ൕ:{j<chil>} | ൖ:{ɻ<chil>}

$IPAmap$ = ( $MISC$ |$virama$ | $zwj$ | $zwnj$ | $vowel$ | $vowelsign$ | $anuswara$ | $visarga$ | $velar$ | $palatal$ | $retroflex$ | $dental$ | $alveolar$ | $labial$ | $otherconsonants$ | $dotreph$ |$chillu$)*

$IPAmap$
