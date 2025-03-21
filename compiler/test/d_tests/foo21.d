import core.stdc.stdio;
struct S21
{
    static char[] r;
    // int a,b,c=2,d;
    this(this) { printf("this(this) %p\n", &this); r ~= '='; }
    ~this() { printf("~this() %p\n", &this); r ~= '~'; }
}

void foo21()
{
    S21 s;
    S21[3] x;
    S21[3] a = s;
    a = x;
    // assert(S21.r == "===");
    // S21.r = null;
    // S21[3][2] b = s;
    // assert(S21.r == "======");
    // S21.r = null;
}

// void test21()
// {
//     foo21();
//     assert(S21.r == "~~~~~~~~~~");
//     printf("-main()\n");
// }

int main()
{
    foo21();

    return 0;
}