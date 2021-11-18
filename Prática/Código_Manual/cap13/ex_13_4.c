uint hash(const uchar*, int len, uint seed)
{
    uint h=seed;
    for (int i=0; i< len; ++i)
        h=31* h +s[i];
    return h;
}