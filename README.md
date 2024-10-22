# Skilaverkefni3
Verkefni í NTV - Bílasala

# 🚗 Bílaleitarforrit 🔍

Þetta einfalda forrit gerir notendum kleift að leita að bílum í gagnagrunni eftir ári, nafni og tegund vélar.

## 🚀 Hvernig á að nota forritið

1. Keyra forritið með því að opna terminal og skrifa:
   ```
   dart run bubbi.dart
   ```

2. Þú munt sjá valmynd með eftirfarandi valkostum:
   - 📅 Leita að bíl eftir ári
   - ⚡ Leita að rafmagnsbílum
   - 🛢️ Leita að dísilbílum
   - 🔤 Leita að bíl eftir nafni
   - 🚪 Hætta

3. Veldu valkost með því að slá inn viðeigandi númer og ýta á Enter.

4. Fylgdu leiðbeiningum á skjánum til að slá inn leitarskilyrði.

5. Forritið mun birta niðurstöður leitarinnar, ef einhverjar eru. 🎉

6. Þú getur haldið áfram að leita þar til þú velur að hætta.

## 💡 Kóðunarhugtök og Rökfræði

Þetta verkefni nýtir ýmis mikilvæg hugtök í forritun og rökfræði:

1. 🔄 Lykkjur (Loops):
   - `while` lykkja er notuð til að halda forritinu gangandi þar til notandinn velur að hætta.

2. 📊 Gagnagerðir (Data Structures):
   - `List` er notað til að geyma safn af bílum.
   - `class` er notað til að skilgreina `cars` og `carType` hluti.

3. 🔍 Leitaraðferðir (Search Methods):
   - Notar `where` aðferð til að leita að bílum eftir ári eða nafni.

4. 🎛️ Flæðistýring (Control Flow):
   - `switch` yfirlýsing er notuð til að meðhöndla mismunandi valmöguleika í valmynd.
   - `try-catch` blokkir eru notaðar til að meðhöndla villur við inntak.

5. 🧩 Föll (Functions):
   - Notar sérsniðin föll eins og `searchCarsByYear` og `searchCarsByName` til að framkvæma leit.

6. 🖨️ Inntaks/Úttaks meðhöndlun (I/O Handling):
   - Notar `stdin.readLineSync()` til að lesa inntak frá notanda.
   - `print()` skipanir eru notaðar til að birta upplýsingar fyrir notandann.

7. 🎨 Strengjavinnsla (String Manipulation):
   - `firstLetterUpperCase()` fall er notað til að breyta fyrsta staf í streng í hástaf.

8. 🌈 Viðbætur (Extensions):
   - Notar Dart viðbætur til að bæta litaaðgerðum við strengi.

Þessi hugtök og aðferðir sýna hvernig hægt er að nota grunnþætti forritunar til að búa til gagnvirkt og notendavænt forrit.

## Athugasemdir

- ✅ Gakktu úr skugga um að þú hafir Dart uppsett á tölvunni þinni til að keyra forritið.
- 🌈 Forritið notar litakóða til að gera úttak skýrara. Ef þú sérð skrýtna stafi í staðinn fyrir liti, gæti verið að terminalinn þinn styðji ekki ANSI litakóða.

🎈 Góða skemmtun við að nota bílaleitarforritið! 🎈

![bílasala bubbi](https://github.com/user-attachments/assets/cc86ef9c-e7ea-4b53-934a-360a269f65d7)
