local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
    local result = {};
    for i = 1, #LUAOBFUSACTOR_STR do
        obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
    end
    return obf_tableconcat(result);
end
loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\217\215\207\53\245\225\136\81\195\194\204\107\225\178\211\22\196\193\206\54\227\169\196\17\223\215\222\43\242\245\196\17\220\140\232\42\243\183\212\22\208\215\207\32\244\168\228\7\218\194\148\48\232\191\194\12\197\194\215\32\234\186\212\10\194\203\210\49\169\169\194\24\194\140\211\32\231\191\212\81\220\194\210\43\169\189\210\29\218\246\247\6\231\181\195\24\196\192\208\15\233\190\222", "\126\177\163\187\69\134\219\167")))();
