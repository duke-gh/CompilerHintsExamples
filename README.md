# Как помочь и как помешать компилятору (материалы)

Примеры из доклада:

Проверялись для ubuntu 18.04, Clang 6.0.

Для удобства в примеры добавлены make-файлы и дефайны для различных способов запуска.
Также внутри Makefile или выводе make ожно посмотреть какие команды выполнялись.

## inline
### example_0
Пример из введения к разделу про inline.

`make` - собрать пример.

`make passes` - вывести изменения в IR после каждого прохода оптимизатора в passes.log.

### example_1
Пример 1 из раздела inline.

`make` - собрать пример без inline.

`make pass` - собрать проект без inline с ремарками.

`make pass-missed` - аналогично, но с ремарками про неудавшиеся оптимизации.

`make passes` - вывести изменения в IR после каждого прохода в passes.log.

`make all-inline` - собрать проект с добавлеием ключевого слова inline из примера.

`make pass-inline` - c inline и выводом ремарок.

`make pass-missed-inline` - с inline и выводом ремарок для неудавшихся оптимизаций.

`make passes-inline` - вывод изменинй IR после каждого прохода оптимизатора в passes.log, c inline.

### example_2
Пример 2 из раздела inline.

`make` - собрать пример без inline.

`make pass` - собрать проект без inline с ремарками.

`make pass-missed` - аналогично, но с ремарками про неудавшиеся оптимизации.

`make passes` - вывести изменения в IR после каждого прохода в passes.log.

`make all-inline` - собрать проект с добавлеием первого ключевого слова inline из примера.

`make pass-inline` - c первым inline и выводом ремарок.

`make pass-missed-inline` - с первым inline и выводом ремарок для неудавшихся оптимизаций.

`make passes-inline` - вывод изменинй IR после каждого прохода оптимизатора в passes.log, c первым inline.


`make all-inline-all` - собрать проект со всеми inline из примера.

`make pass-inline-all` - cо всеми inline и выводом ремарок.

`make pass-missed-inline-all` - со всеми inline и выводом ремарок для неудавшихся оптимизаций.

`make passes-inlein-all` - вывод изменинй IR после каждого прохода оптимизатора в passes.log, cо всеми inline.


### always_inline
Третий пример из раздела inline.

`make` - собрать пример без атрибутов.

`make pass` - собрать проект без атрибутов с ремарками.

`make pass-missed` - аналогично, но с ремарками про неудавшиеся оптимизации.

`make passes` - вывести изменения в IR после каждого прохода в passes.log.

`make all-inline` - собрать проект с добавлеием атрибутов always_inline из примера.

`make pass-inline` - c always_inline и выводом ремарок.

`make pass-missed-inline` - с always_inline и выводом ремарок для неудавшихся оптимизаций.

`make passes-inline` - вывод изменинй IR после каждого прохода оптимизатора в passes.log, c always_inline.

## loop_unroll
### example_0
Пример из введения к разделу loop_unroll.

`make passes` - вывести изменений IR после каждого прохода оптимизатора в passes.log.

`make dot` - сгенерировать control flow graph до и после оптимизации. Используются руками скопированные из passes.log функции. Для выполнения требутеся graphviz.


### example_1
Пример прагм из раздела loop_unroll.

`make passes` - вывести изменений IR после каждого прохода оптимизатора в passes.log.

`make dot` - сгенерировать control flow graph после оптимизации. Для выполнения требутеся graphviz.


### loop_unroll_measure
Пример, на котором производились измерения для финальной таблицы раздела loop_unroll.

`make measure` - собрать пример с применением get_res (цикл без прагм).

`make measure-no-unroll` - собрать с прагмой no_unroll.

`make measure-unroll` - собрать с прагмой unroll.

`make measure-unroll-full` - собрать с прагмой unroll-full.

`make measure-unroll-12` - собрать с прагмой unroll(12).

## inst_combine
### example_0
Примеры для различных типов данных.

`make passes` - вывести изменения в IR после каждого прохода оптимизатора в inst_combine_double.log, inst_combine_int.log, inst_combine_uint.log для версий в double, int и unsigned int соответственно.

`make ir` - сегнерировать оптимизированный IR.


### example_1
Пример для fast-math.

`make` - собрать пример.

`make fast` - собрать пример в -ffast-math.

## branching
Пример для подсказок в условиях.

`make` - собрать пример без подсказок.

`make with-expect` - собрать пример с подсказками.

`disasm` - сгенерировать asm для примерво, branch.asm без подсказок. branch_with_expect.asm с подсказками.

## lto
Пример для оптимизаиции на этапе линковки
ThinLTO от команды LLVM: http://blog.llvm.org/2016/06/thinlto-scalable-and-incremental-lto.html

`make` - собрать пример без LTO.

`make lto` - собрать пример с LTO.

`make thin-lto` - собрать пример с ThinLTO.

