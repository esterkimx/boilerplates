#define STR_(x) #x
#define STR(x) STR_(x)
#define CONCAT_(a, b) a ## b
#define CONCAT(a, b) CONCAT_(a, b)

#ifdef _WIN32
#define EXPORT __declspec(dllexport)
#else
#define EXPORT
#endif
