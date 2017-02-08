__kernel void PassThrough(__global uchar* in, __global uchar* out, const int width)
{
    int x = get_global_id(0);
    int y = get_global_id(1);
    
    int offset = y*width + x;
    
    out[offset] = in[offset];
}
