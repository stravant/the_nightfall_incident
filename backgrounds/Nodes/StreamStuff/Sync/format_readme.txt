PPFormat Available Arguments:
rtpp rtpp_aim rtpp_speed rtpp_acc fcpp fcpp_aim fcpp_speed fcpp_acc maxpp maxpp_aim maxpp_speed maxpp_acc

HitCount Format Arguments:
combo maxcombo fullcombo n300 n100 n150 ngeki akatu n50 nmiss

e.g
PPFormat=RT:${rtpp_acc}+${rtpp_speed}+${rtpp_aim}=${rtpp}pp\nFC:${fcpp_aim}+${fcpp_speed}+${fcpp_acc}=${fcpp}pp\nMAX:${maxpp_aim}+${maxpp_speed}+${maxpp_acc}=${maxpp}pp
HitCountFormat=${n300}x300 ${n100}x100 ${n50}x50 ${nmiss}xDP ${combo}/${maxcombo}/${fullcombo}
