# vkIndividualTask
[![.github/workflows/ci.yml](https://github.com/Dibydo/vkIndividualTask/actions/workflows/ci.yml/badge.svg?branch=Homework2)](https://github.com/Dibydo/vkIndividualTask/actions/workflows/ci.yml)
[![codecov](https://codecov.io/gh/Dibydo/vkIndividualTask/branch/main/graph/badge.svg?token=RWB1O58P03)](https://codecov.io/gh/Dibydo/vkIndividualTask)

**Жовтяк Ярослав WEB-13**\
**Преподаватель: Алексей Халайджи**
### Вариант #47
В вашем распоряжении — массив из 100 млн. чисел - отсчётов сигнала ЭКГ, полученных при частоте дискретизации f (например, f=360 Гц). Составьте последовательный алгоритм подсчета количества R-пиков сигнала, считая, что R-пики - это локальные максимумы сигнала по модулю (они могут быть как положительной, так и отрицательной полярности), и между соседними R-пиками должно пройти как минимум R_window отсчётов (например, R_window = 115), а затем распараллельте его на несколько потоков с учётом оптимизации работы с кэш-памятью.


### Требования к оформлению:
- параллельная реализация не должна быть осуществлена с помощью процессов, когда требуется реализация с помощью потоков (и наоборот);
- компиляция должна происходить с флагами -Wall -Werror -Wpedantic, то есть необработанных ворнингов быть не должно;
- количество потоков/процессов должно быть не захардкожено, а определяться в зависимости от возможностей системы (например, в зависимости от количества ядер процессора);
- при разработке обеих библиотек стоит делать общий интерфейс, не раскрывая особенностей реализации;
- библиотеки должны быть взаимозаменяемыми - конкретная реализация (последовательная/параллельная) - использоваться в зависимости от конфигурации сборки;
- юнит-тесты должны быть реализованы для обеих реализаций (последовательной/параллельной). Покрытие тестами должно быть максимально возможным;
- должны присутствовать стресс-тесты. Они могут быть реализованы внешним образом, запуская две разные программы - одну со статической библиотекой с последовательной реализацией, вторую - с динамической библиотекой с параллельной реализацией, и сравнивая их выводы друг с другом.
- для организации ввода/вывода больших данных полезно работать с файлами, а в программе - предусмотреть работу с универсальными потоками входных/выходных данных (или хотя бы перенаправлять ввод/вывод на уровне их запуска)
- если в задании сказано, что программа должна обрабатывать файлы объёмом 100 Мб – это лишь ориентир, на которых программа точно должна работать, и на котором имеет смысл делать замеры производительности и эффективности алгоритмов. Поэтому тесты на такой объём должны быть. Однако сама программа должна уметь работать с произвольными размерами входных данных
- измерение времени должно осуществляться внешним образом, а не внутри кода библиотек. При этом необходимо делать несколько замеров и усреднять. Стоит помнить о том, что clock() в многопоточных приложениях работает не так, как ожидается.