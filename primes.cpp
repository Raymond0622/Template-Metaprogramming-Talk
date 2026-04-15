#include <iostream>
#include <type_traits>
#include <utility>
#include <cmath>

constexpr int N = 1000;
constexpr int n = std::sqrt(N);

template <typename T, typename U, typename S>
struct check_divisibility {};

template <typename T, size_t I, size_t... Cs, size_t... Is>
struct check_divisibility<std::integer_sequence<T, Cs...>, std::integer_sequence<T, Is...>, 
    std::integral_constant<T, I>> {
    using value = std::integer_sequence<T, std::conditional_t<Is % I == 0 || Cs == 0, 
        std::integral_constant<T, 0>, 
        std::integral_constant<T, 1>>::value...>;
};

template <typename T>
struct divisible_array {};

template <typename T, size_t... Is>
struct divisible_array<std::integer_sequence<T, Is...>> {
    using value = 
        std::index_sequence<Is/Is...>;
};

template <typename T>
struct truncate {};

template <typename T, size_t I, size_t... Is>
struct truncate<std::integer_sequence<T, I, Is...>> {
    using value = std::integer_sequence<T, Is...>;
};

template <typename T, typename U>
struct find_first_one {};

template <typename T>
struct find_first_one<std::integer_sequence<T>, std::integer_sequence<T>> {
    using value = std::tuple<std::integer_sequence<T>, 
        std::integer_sequence<T>, std::integral_constant<T, 0>>;
};

template <typename T, size_t C, size_t I, size_t... Cs, size_t... Is>
struct find_first_one<std::integer_sequence<T, C, Cs...>, std::integer_sequence<T, I, Is...>> {
    using value = std::conditional_t<C == 1, std::tuple<std::integer_sequence<T, Cs...>, 
        std::integer_sequence<T, Is...>, std::integral_constant<T, I>>, 
        typename find_first_one<std::integer_sequence<T, Cs...>, std::integer_sequence<T, Is...>>::value>;
};

template <typename T, typename U>
struct combine_my_list {
    using value = std::integer_sequence<T>;
};

template <typename T, size_t... Js, size_t... Is>
struct combine_my_list<std::integer_sequence<T, Is...>, std::integer_sequence<T, Js...>> {
    using value = std::integer_sequence<T, Is..., Js...>;
};

template <typename T, typename U>
struct sieve_eratosthenes {
    using primes = std::integer_sequence<T>;
};

template <typename T>
struct sieve_eratosthenes<std::integer_sequence<T>, std::integer_sequence<T>> {
    using primes = std::integer_sequence<T>;
};

template <typename T, typename U, typename S = void>
struct check_rootn : std::false_type {};

template <typename T, typename U>
struct check_rootn<T, U, std::enable_if_t<T::value <= U::value>> : std::true_type {};


template <typename T, typename U>
struct construct_rest {};

template <typename T>
struct construct_rest<std::integer_sequence<T>, std::integer_sequence<T>> {
    using value = std::integer_sequence<T>;
};

template <typename T, size_t I, size_t J, T... Is, T... Js>
struct construct_rest<std::integer_sequence<T, I, Is...>, std::integer_sequence<T, J, Js...>> {
    using value = typename combine_my_list<std::conditional_t<I == 1, 
        std::integer_sequence<T, J>, std::integer_sequence<T>>, 
            typename construct_rest<std::integer_sequence<T, Is...>, std::integer_sequence<T, Js...>>::value>::value;
};

template <typename T, size_t C, size_t... Cs, T I, T... Is>
struct sieve_eratosthenes<std::integer_sequence<T, C, Cs...>, std::integer_sequence<T, I, Is...>> {
    using res = typename find_first_one<std::integer_sequence<T, C, Cs...>, 
                    std::integer_sequence<T, I, Is...>>::value;
    using indexes = typename std::tuple_element_t<0, res>;
    using numbers = typename std::tuple_element_t<1, res>;
    using divisor = typename std::tuple_element_t<2, res>;

    using check_divisor_small_n = check_rootn<divisor, std::integral_constant<T, n>>;
    using obj = std::conditional_t<check_divisor_small_n::value, 
                    typename check_divisibility<indexes, numbers, divisor>::value, std::integer_sequence<T>>;

    using primes = std::conditional_t<check_divisor_small_n::value, 
        typename combine_my_list<std::conditional_t<divisor::value >= 2, std::integer_sequence<T, divisor::value>, 
                std::integer_sequence<T>>, typename sieve_eratosthenes<obj, numbers>::primes>::value, 
                    typename combine_my_list<std::integer_sequence<T, divisor::value>, typename construct_rest<indexes, numbers>::value>::value>;

};

// template <typename T, size_t... P, std::integer_sequence<T, P...>>
// void print_primes() {
//     ((std::cout << P << std::endl), ...);
// }

template <typename T>
struct printer;

template <typename T, size_t... P>
struct printer<std::integer_sequence<T, P...>> {
    static void print() {
        ((std::cout << P << "\n"), ...);
    }
};

int main(int argc, char** argv) {
    static_assert(N > 1);
    using I = std::make_integer_sequence<std::size_t, N + 1>;
    // truncate twice to get rid of 0, 1.
    using K1 = typename truncate<I>::value;
    using K2 = typename truncate<K1>::value;
    using T = typename divisible_array<K2>::value;
    using P = typename sieve_eratosthenes<T, K2>::primes;
    printer<P>::print();

}