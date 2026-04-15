

#include <iostream>

In file included from /cygdrive/p/gcc/gcc61-include/bits/stl_algobase.h:71:0,
2 from /cygdrive/p/gcc/gcc61-include/bits/char_traits.h:39,
3 from /cygdrive/p/gcc/gcc61-include/string:40,
4 from errornovel1.cpp:1:
5 /cygdrive/p/gcc/gcc61-include/bits/predefined_ops.h: In instantiation of ’bool __gnu_cxx
::__ops::_Iter_pred<_Predicate>::operator()(_Iterator) [with _Iterator = std::_Rb_tree_i
terator<std::pair<const std::__cxx11::basic_string<char>, double> >; _Predicate = main()

::<lambda(const string&)>]’:
6 /cygdrive/p/gcc/gcc61-include/bits/stl_algo.h:104:42: required from ’_InputIterator
std::__find_if(_InputIterator, _InputIterator, _Predicate, std::input_iterator_tag)
[with _InputIterator = std::_Rb_tree_iterator<std::pair<const std::__cxx11::basic_string
<char>, double> >; _Predicate = __gnu_cxx::__ops::_Iter_pred<main()::<lambda(const
string&)> >]’
7 /cygdrive/p/gcc/gcc61-include/bits/stl_algo.h:161:23: required from ’_Iterator std::__
find_if(_Iterator, _Iterator, _Predicate) [with _Iterator = std::_Rb_tree_iterator<std::
pair<const std::__cxx11::basic_string<char>, double> >; _Predicate = __gnu_cxx::__ops::_
Iter_pred<main()::<lambda(const string&)> >]’
8 /cygdrive/p/gcc/gcc61-include/bits/stl_algo.h:3824:28: required from ’_IIter std::find
_if(_IIter, _IIter, _Predicate) [with _IIter = std::_Rb_tree_iterator<std::pair<const
std::__cxx11::basic_string<char>, double> >; _Predicate = main()::<lambda(const string&)
>]’
9 errornovel1.cpp:13:29: required from here
10 /cygdrive/p/gcc/gcc61-include/bits/predefined_ops.h:234:11: error: no match for call to
’(main()::<lambda(const string&)>) (std::pair<const std::__cxx11::basic_string<char>,
double>&)’
11 { return bool(_M_pred(*__it)); }
12 ^~~~~~~~~~~~~~~~~~~~
13 /cygdrive/p/gcc/gcc61-include/bits/predefined_ops.h:234:11: note: candidate: bool (*)(
const string&) {aka bool (*)(const std::__cxx11::basic_string<char>&)} <conversion>
14 /cygdrive/p/gcc/gcc61-include/bits/predefined_ops.h:234:11: note: candidate expects 2
arguments, 2 provided
15 errornovel1.cpp:11:52: note: candidate: main()::<lambda(const string&)>
16 [] (std::string const& s) {
17 ^
18 errornovel1.cpp:11:52: note: no known conversion for argument 1 from ’std::pair<const
std::__cxx11::basic_string<char>, double>’ to ’const string& {aka const std::__cxx11::
basic_string<char>&}’
