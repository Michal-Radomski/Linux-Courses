There are several common tar compression variants: tar.xz, tar.gz (same as gzip), tar.bz2, plus others like tar.zst (zstd)
and tar.lzma. The main differences among these relate to compression algorithms used, compression speed, decompression speed,
and compression ratio.

- tar.gz uses gzip (LZ77 algorithm). It offers fast compression and decompression but moderate compression ratio.
- tar.bz2 uses bzip2 (Burrows-Wheeler + Huffman). It provides better compression than gzip but is slower especially when
  compressing.
- tar.xz uses xz (LZMA2). It achieves the highest compression ratio but is the slowest during compression and has moderate
  decompression speed.
- tar.zst uses Zstandard (zstd), a newer algorithm with fast compression and decompression and good compression ratio,
  gaining popularity for balancing speed vs size.
- tar.lzma is similar to tar.xz, using the older LZMA algorithm.
- uncompressed tar archives (.tar) simply bundle files without compressing.

Choosing among them depends on priorities: gzip for speed, bzip2 for better compression than gzip, xz for maximum compression
at cost of speed. Newer tools like zstd are promising faster and more efficient compression. Also, tar itself just bundles
files; compression is done by the tool indicated by the extension. This allows mixing tar with any compression tool by using
appropriate flags.

In summary:

| Extension      | Compression Tool | Algorithm                 | Compression Ratio | Compression Speed | Decompression Speed | Use Case                                    |
| -------------- | ---------------- | ------------------------- | ----------------- | ----------------- | ------------------- | ------------------------------------------- |
| .tar.gz / .tgz | gzip             | LZ77                      | Moderate          | Fast              | Fast                | General use, fast compression/decompression |
| .tar.bz2       | bzip2            | Burrows-Wheeler + Huffman | Better than gzip  | Slower            | Slow                | When better compression than gzip is needed |
| .tar.xz        | xz               | LZMA2                     | Best              | Slow              | Moderate            | When maximum compression matter             |
| .tar.zst       | zstd             | Zstandard                 | Good              | Very fast         | Very fast           | Emerging, balanced speed + compression      |
| .tar.lzma      | lzma             | LZMA                      | High              | Slow              | Moderate            | Similar to xz, less common                  |
| .tar           | tar only         | None                      | None              | Very fast         | Very fast           | Archive only, no compression                |

There are also less common variants like tar.Z (compress utility), tar.lz (lzip), tar.z (old compress), etc., but they are
rarely used today.

The reason for multiple compression variants is a trade-off between speed, compression ratio, and resource use. gzip remains
popular due to ubiquity and speed, despite lower compression than bzip2 or xz. xz and zstd are increasingly preferred where
compression size is more important and slower compression is acceptable.[1][2][5][6]

[1](https://www.thomas-krenn.com/en/wiki/Comparison_of_gzip,_bzip2,_xz)
[2](https://docs.rockylinux.org/10/guides/backup/tar/)
[3](https://www.reddit.com/r/linuxquestions/comments/jgmh0y/targz_or_tarbz2_which_do_you_use_and_why_i_like/)
[4](https://www.reddit.com/r/linux4noobs/comments/p277p3/why_targz_why_not_zip/)
[5](https://www.ookangzheng.com/linux-tar-gz-bz2-xz-comparison/)
[6](https://stackoverflow.com/questions/6493270/why-is-tar-gz-still-much-more-common-than-tar-xz)
[7](https://www.linkedin.com/advice/1/what-trade-offs-between-speed-compression-ratio-different-tools)
