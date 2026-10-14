package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes5.dex */
public class MapSerializer extends SerializeFilterable implements ObjectSerializer {
    public static MapSerializer instance = new MapSerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        write(jSONSerializer, obj, obj2, type, i, false);
    }

    /* JADX WARN: Code duplicated, block: B:102:0x014f A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:112:0x016e A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:117:0x017d A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:120:0x0185 A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:128:0x01a1 A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:131:0x01ab A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:134:0x01b3 A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:142:0x01cf A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:145:0x01d8 A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:149:0x01f6 A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:152:0x020e A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:157:0x0221 A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:159:0x0226 A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:162:0x0231 A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:164:0x0238 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:165:0x023a A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:168:0x0245 A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:174:0x025a A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:177:0x0268 A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:180:0x0271 A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:182:0x0279 A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:183:0x0287 A[Catch: all -> 0x02b5, TRY_LEAVE, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:202:0x021b A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:211:0x0177 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x0082  */
    /* JADX WARN: Code duplicated, block: B:61:0x00db A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x00df A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x010f A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x0113 A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x0143 A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x0147 A[Catch: all -> 0x02b5, TryCatch #1 {all -> 0x02b5, blocks: (B:24:0x0044, B:25:0x0047, B:27:0x0053, B:38:0x0072, B:40:0x0083, B:41:0x0090, B:43:0x0096, B:45:0x00a8, B:48:0x00b0, B:51:0x00b5, B:53:0x00bf, B:55:0x00c3, B:58:0x00ce, B:61:0x00db, B:63:0x00df, B:66:0x00e7, B:69:0x00ec, B:71:0x00f6, B:73:0x00fa, B:76:0x0105, B:79:0x010f, B:81:0x0113, B:84:0x011b, B:87:0x0120, B:89:0x012a, B:91:0x012e, B:94:0x0139, B:97:0x0143, B:99:0x0147, B:102:0x014f, B:105:0x0154, B:107:0x015e, B:109:0x0162, B:112:0x016e, B:115:0x0179, B:117:0x017d, B:120:0x0185, B:123:0x018a, B:125:0x0194, B:127:0x0198, B:128:0x01a1, B:129:0x01a7, B:131:0x01ab, B:134:0x01b3, B:137:0x01b8, B:139:0x01c2, B:141:0x01c6, B:142:0x01cf, B:145:0x01d8, B:148:0x01dd, B:152:0x020e, B:155:0x021b, B:157:0x0221, B:159:0x0226, B:160:0x0229, B:162:0x0231, B:163:0x0234, B:177:0x0268, B:180:0x0271, B:182:0x0279, B:183:0x0287, B:165:0x023a, B:166:0x023d, B:168:0x0245, B:170:0x024d, B:173:0x0256, B:175:0x0261, B:174:0x025a, B:149:0x01f6, B:33:0x0067), top: B:199:0x0044 }] */
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i, boolean z) throws IOException {
        Map treeMap;
        boolean z2;
        List<PropertyPreFilter> list;
        List<PropertyFilter> list2;
        List<PropertyFilter> list3;
        List<NameFilter> list4;
        List<NameFilter> list5;
        Object obj3;
        Object obj4;
        Object objProcessValue;
        Object obj5;
        Class<?> cls;
        Class<?> cls2;
        SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull();
            return;
        }
        Map map = (Map) obj;
        int i2 = SerializerFeature.MapSortField.mask;
        if (((serializeWriter.features & i2) == 0 && (i & i2) == 0) || (map instanceof SortedMap) || (map instanceof LinkedHashMap)) {
            treeMap = map;
        } else {
            try {
                treeMap = new TreeMap(map);
            } catch (Exception unused) {
                treeMap = map;
            }
        }
        if (jSONSerializer.containsReference(obj)) {
            jSONSerializer.writeReference(obj);
            return;
        }
        SerialContext serialContext = jSONSerializer.context;
        jSONSerializer.setContext(serialContext, obj, obj2, 0);
        if (!z) {
            try {
                serializeWriter.write(123);
            } catch (Throwable th) {
                jSONSerializer.context = serialContext;
                throw th;
            }
        }
        jSONSerializer.incrementIndent();
        if (serializeWriter.isEnabled(SerializerFeature.WriteClassName)) {
            String str = jSONSerializer.config.typeKey;
            Class<?> cls3 = treeMap.getClass();
            if ((cls3 == JSONObject.class || cls3 == HashMap.class || cls3 == LinkedHashMap.class) && treeMap.containsKey(str)) {
                z2 = true;
            } else {
                serializeWriter.writeFieldName(str);
                serializeWriter.writeString(obj.getClass().getName());
                z2 = false;
            }
        } else {
            z2 = true;
        }
        boolean z3 = z2;
        Class<?> cls4 = null;
        ObjectSerializer objectWriter = null;
        for (Map.Entry entry : treeMap.entrySet()) {
            Object value = entry.getValue();
            Object key = entry.getKey();
            List<PropertyPreFilter> list6 = jSONSerializer.propertyPreFilters;
            if (list6 == null || list6.size() <= 0) {
                list = this.propertyPreFilters;
                if (list != null || list.size() <= 0) {
                    list2 = jSONSerializer.propertyFilters;
                    if (list2 != null || list2.size() <= 0) {
                        list3 = this.propertyFilters;
                        if (list3 != null && list3.size() > 0) {
                            if (key != null || (key instanceof String)) {
                                if (!apply(jSONSerializer, obj, (String) key, value)) {
                                    cls4 = cls4;
                                    cls4 = cls4;
                                }
                            } else if ((key.getClass().isPrimitive() || (key instanceof Number)) && !apply(jSONSerializer, obj, JSON.toJSONString(key), value)) {
                                cls4 = cls4;
                                cls4 = cls4;
                            }
                        }
                        list4 = jSONSerializer.nameFilters;
                        if (list4 != null && list4.size() > 0) {
                            if (key != null || (key instanceof String)) {
                                key = processKey(jSONSerializer, obj, (String) key, value);
                            } else if (key.getClass().isPrimitive() || (key instanceof Number)) {
                                key = processKey(jSONSerializer, obj, JSON.toJSONString(key), value);
                            }
                        }
                        list5 = this.nameFilters;
                        if (list5 != null && list5.size() > 0) {
                            if (key != null || (key instanceof String)) {
                                key = processKey(jSONSerializer, obj, (String) key, value);
                            } else if (key.getClass().isPrimitive() || (key instanceof Number)) {
                                key = processKey(jSONSerializer, obj, JSON.toJSONString(key), value);
                            }
                        }
                        obj3 = key;
                        if (obj3 != null || (obj3 instanceof String)) {
                            obj4 = obj3;
                            objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                        } else {
                            obj4 = obj3;
                            objProcessValue = processValue(jSONSerializer, null, obj, JSON.toJSONString(obj3), value);
                        }
                        obj5 = objProcessValue;
                        if (obj5 == null || serializeWriter.isEnabled(SerializerFeature.WRITE_MAP_NULL_FEATURES)) {
                            if (obj4 instanceof String) {
                                String str2 = (String) obj4;
                                if (!z3) {
                                    serializeWriter.write(44);
                                }
                                if (serializeWriter.isEnabled(SerializerFeature.PrettyFormat)) {
                                    jSONSerializer.println();
                                }
                                serializeWriter.writeFieldName(str2, true);
                            } else {
                                if (!z3) {
                                    serializeWriter.write(44);
                                }
                                if (!serializeWriter.isEnabled(SerializerFeature.BrowserCompatible) || serializeWriter.isEnabled(SerializerFeature.WriteNonStringKeyAsString) || serializeWriter.isEnabled(SerializerFeature.BrowserSecure)) {
                                    jSONSerializer.write(JSON.toJSONString(obj4));
                                } else {
                                    jSONSerializer.write(obj4);
                                }
                                serializeWriter.write(58);
                            }
                            if (obj5 == null) {
                                serializeWriter.writeNull();
                            } else {
                                cls = obj5.getClass();
                                if (cls == cls2) {
                                    cls2 = cls4;
                                    cls4 = cls2;
                                    objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                } else {
                                    cls2 = cls4;
                                    objectWriter = jSONSerializer.getObjectWriter(cls);
                                    objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                    cls4 = cls;
                                }
                                z3 = false;
                            }
                            cls4 = cls4;
                            z3 = false;
                        } else {
                            cls4 = cls4;
                        }
                    } else {
                        if (key == null || (key instanceof String)) {
                            if (apply(jSONSerializer, obj, (String) key, value)) {
                                list3 = this.propertyFilters;
                                if (list3 != null) {
                                    if (key != null) {
                                        if (!apply(jSONSerializer, obj, (String) key, value)) {
                                        }
                                    } else if (!apply(jSONSerializer, obj, (String) key, value)) {
                                    }
                                }
                                list4 = jSONSerializer.nameFilters;
                                if (list4 != null) {
                                    if (key != null) {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    } else {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    }
                                }
                                list5 = this.nameFilters;
                                if (list5 != null) {
                                    if (key != null) {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    } else {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    }
                                }
                                obj3 = key;
                                if (obj3 != null) {
                                    obj4 = obj3;
                                    objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                                } else {
                                    obj4 = obj3;
                                    objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                                }
                                obj5 = objProcessValue;
                                if (obj5 == null) {
                                }
                                if (obj4 instanceof String) {
                                    String str3 = (String) obj4;
                                    if (!z3) {
                                        serializeWriter.write(44);
                                    }
                                    if (serializeWriter.isEnabled(SerializerFeature.PrettyFormat)) {
                                        jSONSerializer.println();
                                    }
                                    serializeWriter.writeFieldName(str3, true);
                                } else {
                                    if (!z3) {
                                        serializeWriter.write(44);
                                    }
                                    if (serializeWriter.isEnabled(SerializerFeature.BrowserCompatible)) {
                                        jSONSerializer.write(JSON.toJSONString(obj4));
                                    } else {
                                        jSONSerializer.write(JSON.toJSONString(obj4));
                                    }
                                    serializeWriter.write(58);
                                }
                                if (obj5 == null) {
                                    serializeWriter.writeNull();
                                } else {
                                    cls = obj5.getClass();
                                    if (cls == cls2) {
                                        cls2 = cls4;
                                        cls4 = cls2;
                                        objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                    } else {
                                        cls2 = cls4;
                                        objectWriter = jSONSerializer.getObjectWriter(cls);
                                        objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                        cls4 = cls;
                                    }
                                    z3 = false;
                                }
                                cls4 = cls4;
                                z3 = false;
                            }
                        } else if ((!key.getClass().isPrimitive() && !(key instanceof Number)) || apply(jSONSerializer, obj, JSON.toJSONString(key), value)) {
                            list3 = this.propertyFilters;
                            if (list3 != null) {
                                if (key != null) {
                                    if (!apply(jSONSerializer, obj, (String) key, value)) {
                                    }
                                } else if (!apply(jSONSerializer, obj, (String) key, value)) {
                                }
                            }
                            list4 = jSONSerializer.nameFilters;
                            if (list4 != null) {
                                if (key != null) {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                } else {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                }
                            }
                            list5 = this.nameFilters;
                            if (list5 != null) {
                                if (key != null) {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                } else {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                }
                            }
                            obj3 = key;
                            if (obj3 != null) {
                                obj4 = obj3;
                                objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                            } else {
                                obj4 = obj3;
                                objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                            }
                            obj5 = objProcessValue;
                            if (obj5 == null) {
                            }
                            if (obj4 instanceof String) {
                                String str4 = (String) obj4;
                                if (!z3) {
                                    serializeWriter.write(44);
                                }
                                if (serializeWriter.isEnabled(SerializerFeature.PrettyFormat)) {
                                    jSONSerializer.println();
                                }
                                serializeWriter.writeFieldName(str4, true);
                            } else {
                                if (!z3) {
                                    serializeWriter.write(44);
                                }
                                if (serializeWriter.isEnabled(SerializerFeature.BrowserCompatible)) {
                                    jSONSerializer.write(JSON.toJSONString(obj4));
                                } else {
                                    jSONSerializer.write(JSON.toJSONString(obj4));
                                }
                                serializeWriter.write(58);
                            }
                            if (obj5 == null) {
                                serializeWriter.writeNull();
                            } else {
                                cls = obj5.getClass();
                                if (cls == cls2) {
                                    cls2 = cls4;
                                    cls4 = cls2;
                                    objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                } else {
                                    cls2 = cls4;
                                    objectWriter = jSONSerializer.getObjectWriter(cls);
                                    objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                    cls4 = cls;
                                }
                                z3 = false;
                            }
                            cls4 = cls4;
                            z3 = false;
                        }
                        cls4 = cls4;
                        cls4 = cls4;
                    }
                } else {
                    if (key == null || (key instanceof String)) {
                        if (applyName(jSONSerializer, obj, (String) key)) {
                            list2 = jSONSerializer.propertyFilters;
                            if (list2 != null) {
                                list3 = this.propertyFilters;
                                if (list3 != null) {
                                    if (key != null) {
                                        if (!apply(jSONSerializer, obj, (String) key, value)) {
                                        }
                                    } else if (!apply(jSONSerializer, obj, (String) key, value)) {
                                    }
                                }
                                list4 = jSONSerializer.nameFilters;
                                if (list4 != null) {
                                    if (key != null) {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    } else {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    }
                                }
                                list5 = this.nameFilters;
                                if (list5 != null) {
                                    if (key != null) {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    } else {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    }
                                }
                                obj3 = key;
                                if (obj3 != null) {
                                    obj4 = obj3;
                                    objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                                } else {
                                    obj4 = obj3;
                                    objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                                }
                                obj5 = objProcessValue;
                                if (obj5 == null) {
                                }
                                if (obj4 instanceof String) {
                                    String str5 = (String) obj4;
                                    if (!z3) {
                                        serializeWriter.write(44);
                                    }
                                    if (serializeWriter.isEnabled(SerializerFeature.PrettyFormat)) {
                                        jSONSerializer.println();
                                    }
                                    serializeWriter.writeFieldName(str5, true);
                                } else {
                                    if (!z3) {
                                        serializeWriter.write(44);
                                    }
                                    if (serializeWriter.isEnabled(SerializerFeature.BrowserCompatible)) {
                                        jSONSerializer.write(JSON.toJSONString(obj4));
                                    } else {
                                        jSONSerializer.write(JSON.toJSONString(obj4));
                                    }
                                    serializeWriter.write(58);
                                }
                                if (obj5 == null) {
                                    serializeWriter.writeNull();
                                } else {
                                    cls = obj5.getClass();
                                    if (cls == cls2) {
                                        cls2 = cls4;
                                        cls4 = cls2;
                                        objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                    } else {
                                        cls2 = cls4;
                                        objectWriter = jSONSerializer.getObjectWriter(cls);
                                        objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                        cls4 = cls;
                                    }
                                    z3 = false;
                                }
                                cls4 = cls4;
                                z3 = false;
                            } else {
                                list3 = this.propertyFilters;
                                if (list3 != null) {
                                    if (key != null) {
                                        if (!apply(jSONSerializer, obj, (String) key, value)) {
                                        }
                                    } else if (!apply(jSONSerializer, obj, (String) key, value)) {
                                    }
                                }
                                list4 = jSONSerializer.nameFilters;
                                if (list4 != null) {
                                    if (key != null) {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    } else {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    }
                                }
                                list5 = this.nameFilters;
                                if (list5 != null) {
                                    if (key != null) {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    } else {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    }
                                }
                                obj3 = key;
                                if (obj3 != null) {
                                    obj4 = obj3;
                                    objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                                } else {
                                    obj4 = obj3;
                                    objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                                }
                                obj5 = objProcessValue;
                                if (obj5 == null) {
                                }
                                if (obj4 instanceof String) {
                                    String str6 = (String) obj4;
                                    if (!z3) {
                                        serializeWriter.write(44);
                                    }
                                    if (serializeWriter.isEnabled(SerializerFeature.PrettyFormat)) {
                                        jSONSerializer.println();
                                    }
                                    serializeWriter.writeFieldName(str6, true);
                                } else {
                                    if (!z3) {
                                        serializeWriter.write(44);
                                    }
                                    if (serializeWriter.isEnabled(SerializerFeature.BrowserCompatible)) {
                                        jSONSerializer.write(JSON.toJSONString(obj4));
                                    } else {
                                        jSONSerializer.write(JSON.toJSONString(obj4));
                                    }
                                    serializeWriter.write(58);
                                }
                                if (obj5 == null) {
                                    serializeWriter.writeNull();
                                } else {
                                    cls = obj5.getClass();
                                    if (cls == cls2) {
                                        cls2 = cls4;
                                        cls4 = cls2;
                                        objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                    } else {
                                        cls2 = cls4;
                                        objectWriter = jSONSerializer.getObjectWriter(cls);
                                        objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                        cls4 = cls;
                                    }
                                    z3 = false;
                                }
                                cls4 = cls4;
                                z3 = false;
                            }
                        }
                    } else if ((!key.getClass().isPrimitive() && !(key instanceof Number)) || applyName(jSONSerializer, obj, JSON.toJSONString(key))) {
                        list2 = jSONSerializer.propertyFilters;
                        if (list2 != null) {
                            list3 = this.propertyFilters;
                            if (list3 != null) {
                                if (key != null) {
                                    if (!apply(jSONSerializer, obj, (String) key, value)) {
                                    }
                                } else if (!apply(jSONSerializer, obj, (String) key, value)) {
                                }
                            }
                            list4 = jSONSerializer.nameFilters;
                            if (list4 != null) {
                                if (key != null) {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                } else {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                }
                            }
                            list5 = this.nameFilters;
                            if (list5 != null) {
                                if (key != null) {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                } else {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                }
                            }
                            obj3 = key;
                            if (obj3 != null) {
                                obj4 = obj3;
                                objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                            } else {
                                obj4 = obj3;
                                objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                            }
                            obj5 = objProcessValue;
                            if (obj5 == null) {
                            }
                            if (obj4 instanceof String) {
                                String str7 = (String) obj4;
                                if (!z3) {
                                    serializeWriter.write(44);
                                }
                                if (serializeWriter.isEnabled(SerializerFeature.PrettyFormat)) {
                                    jSONSerializer.println();
                                }
                                serializeWriter.writeFieldName(str7, true);
                            } else {
                                if (!z3) {
                                    serializeWriter.write(44);
                                }
                                if (serializeWriter.isEnabled(SerializerFeature.BrowserCompatible)) {
                                    jSONSerializer.write(JSON.toJSONString(obj4));
                                } else {
                                    jSONSerializer.write(JSON.toJSONString(obj4));
                                }
                                serializeWriter.write(58);
                            }
                            if (obj5 == null) {
                                serializeWriter.writeNull();
                            } else {
                                cls = obj5.getClass();
                                if (cls == cls2) {
                                    cls2 = cls4;
                                    cls4 = cls2;
                                    objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                } else {
                                    cls2 = cls4;
                                    objectWriter = jSONSerializer.getObjectWriter(cls);
                                    objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                    cls4 = cls;
                                }
                                z3 = false;
                            }
                            cls4 = cls4;
                            z3 = false;
                        } else {
                            list3 = this.propertyFilters;
                            if (list3 != null) {
                                if (key != null) {
                                    if (!apply(jSONSerializer, obj, (String) key, value)) {
                                    }
                                } else if (!apply(jSONSerializer, obj, (String) key, value)) {
                                }
                            }
                            list4 = jSONSerializer.nameFilters;
                            if (list4 != null) {
                                if (key != null) {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                } else {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                }
                            }
                            list5 = this.nameFilters;
                            if (list5 != null) {
                                if (key != null) {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                } else {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                }
                            }
                            obj3 = key;
                            if (obj3 != null) {
                                obj4 = obj3;
                                objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                            } else {
                                obj4 = obj3;
                                objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                            }
                            obj5 = objProcessValue;
                            if (obj5 == null) {
                            }
                            if (obj4 instanceof String) {
                                String str8 = (String) obj4;
                                if (!z3) {
                                    serializeWriter.write(44);
                                }
                                if (serializeWriter.isEnabled(SerializerFeature.PrettyFormat)) {
                                    jSONSerializer.println();
                                }
                                serializeWriter.writeFieldName(str8, true);
                            } else {
                                if (!z3) {
                                    serializeWriter.write(44);
                                }
                                if (serializeWriter.isEnabled(SerializerFeature.BrowserCompatible)) {
                                    jSONSerializer.write(JSON.toJSONString(obj4));
                                } else {
                                    jSONSerializer.write(JSON.toJSONString(obj4));
                                }
                                serializeWriter.write(58);
                            }
                            if (obj5 == null) {
                                serializeWriter.writeNull();
                            } else {
                                cls = obj5.getClass();
                                if (cls == cls2) {
                                    cls2 = cls4;
                                    cls4 = cls2;
                                    objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                } else {
                                    cls2 = cls4;
                                    objectWriter = jSONSerializer.getObjectWriter(cls);
                                    objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                    cls4 = cls;
                                }
                                z3 = false;
                            }
                            cls4 = cls4;
                            z3 = false;
                        }
                    }
                    cls4 = cls4;
                    cls4 = cls4;
                }
            } else {
                if (key == null || (key instanceof String)) {
                    if (applyName(jSONSerializer, obj, (String) key)) {
                        list = this.propertyPreFilters;
                        if (list != null) {
                            list2 = jSONSerializer.propertyFilters;
                            if (list2 != null) {
                                list3 = this.propertyFilters;
                                if (list3 != null) {
                                    if (key != null) {
                                        if (!apply(jSONSerializer, obj, (String) key, value)) {
                                        }
                                    } else if (!apply(jSONSerializer, obj, (String) key, value)) {
                                    }
                                }
                                list4 = jSONSerializer.nameFilters;
                                if (list4 != null) {
                                    if (key != null) {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    } else {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    }
                                }
                                list5 = this.nameFilters;
                                if (list5 != null) {
                                    if (key != null) {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    } else {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    }
                                }
                                obj3 = key;
                                if (obj3 != null) {
                                    obj4 = obj3;
                                    objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                                } else {
                                    obj4 = obj3;
                                    objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                                }
                                obj5 = objProcessValue;
                                if (obj5 == null) {
                                }
                                if (obj4 instanceof String) {
                                    String str9 = (String) obj4;
                                    if (!z3) {
                                        serializeWriter.write(44);
                                    }
                                    if (serializeWriter.isEnabled(SerializerFeature.PrettyFormat)) {
                                        jSONSerializer.println();
                                    }
                                    serializeWriter.writeFieldName(str9, true);
                                } else {
                                    if (!z3) {
                                        serializeWriter.write(44);
                                    }
                                    if (serializeWriter.isEnabled(SerializerFeature.BrowserCompatible)) {
                                        jSONSerializer.write(JSON.toJSONString(obj4));
                                    } else {
                                        jSONSerializer.write(JSON.toJSONString(obj4));
                                    }
                                    serializeWriter.write(58);
                                }
                                if (obj5 == null) {
                                    serializeWriter.writeNull();
                                } else {
                                    cls = obj5.getClass();
                                    if (cls == cls2) {
                                        cls2 = cls4;
                                        cls4 = cls2;
                                        objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                    } else {
                                        cls2 = cls4;
                                        objectWriter = jSONSerializer.getObjectWriter(cls);
                                        objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                        cls4 = cls;
                                    }
                                    z3 = false;
                                }
                                cls4 = cls4;
                                z3 = false;
                            } else {
                                list3 = this.propertyFilters;
                                if (list3 != null) {
                                    if (key != null) {
                                        if (!apply(jSONSerializer, obj, (String) key, value)) {
                                        }
                                    } else if (!apply(jSONSerializer, obj, (String) key, value)) {
                                    }
                                }
                                list4 = jSONSerializer.nameFilters;
                                if (list4 != null) {
                                    if (key != null) {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    } else {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    }
                                }
                                list5 = this.nameFilters;
                                if (list5 != null) {
                                    if (key != null) {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    } else {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    }
                                }
                                obj3 = key;
                                if (obj3 != null) {
                                    obj4 = obj3;
                                    objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                                } else {
                                    obj4 = obj3;
                                    objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                                }
                                obj5 = objProcessValue;
                                if (obj5 == null) {
                                }
                                if (obj4 instanceof String) {
                                    String str10 = (String) obj4;
                                    if (!z3) {
                                        serializeWriter.write(44);
                                    }
                                    if (serializeWriter.isEnabled(SerializerFeature.PrettyFormat)) {
                                        jSONSerializer.println();
                                    }
                                    serializeWriter.writeFieldName(str10, true);
                                } else {
                                    if (!z3) {
                                        serializeWriter.write(44);
                                    }
                                    if (serializeWriter.isEnabled(SerializerFeature.BrowserCompatible)) {
                                        jSONSerializer.write(JSON.toJSONString(obj4));
                                    } else {
                                        jSONSerializer.write(JSON.toJSONString(obj4));
                                    }
                                    serializeWriter.write(58);
                                }
                                if (obj5 == null) {
                                    serializeWriter.writeNull();
                                } else {
                                    cls = obj5.getClass();
                                    if (cls == cls2) {
                                        cls2 = cls4;
                                        cls4 = cls2;
                                        objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                    } else {
                                        cls2 = cls4;
                                        objectWriter = jSONSerializer.getObjectWriter(cls);
                                        objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                        cls4 = cls;
                                    }
                                    z3 = false;
                                }
                                cls4 = cls4;
                                z3 = false;
                            }
                        } else {
                            list2 = jSONSerializer.propertyFilters;
                            if (list2 != null) {
                                list3 = this.propertyFilters;
                                if (list3 != null) {
                                    if (key != null) {
                                        if (!apply(jSONSerializer, obj, (String) key, value)) {
                                        }
                                    } else if (!apply(jSONSerializer, obj, (String) key, value)) {
                                    }
                                }
                                list4 = jSONSerializer.nameFilters;
                                if (list4 != null) {
                                    if (key != null) {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    } else {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    }
                                }
                                list5 = this.nameFilters;
                                if (list5 != null) {
                                    if (key != null) {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    } else {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    }
                                }
                                obj3 = key;
                                if (obj3 != null) {
                                    obj4 = obj3;
                                    objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                                } else {
                                    obj4 = obj3;
                                    objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                                }
                                obj5 = objProcessValue;
                                if (obj5 == null) {
                                }
                                if (obj4 instanceof String) {
                                    String str11 = (String) obj4;
                                    if (!z3) {
                                        serializeWriter.write(44);
                                    }
                                    if (serializeWriter.isEnabled(SerializerFeature.PrettyFormat)) {
                                        jSONSerializer.println();
                                    }
                                    serializeWriter.writeFieldName(str11, true);
                                } else {
                                    if (!z3) {
                                        serializeWriter.write(44);
                                    }
                                    if (serializeWriter.isEnabled(SerializerFeature.BrowserCompatible)) {
                                        jSONSerializer.write(JSON.toJSONString(obj4));
                                    } else {
                                        jSONSerializer.write(JSON.toJSONString(obj4));
                                    }
                                    serializeWriter.write(58);
                                }
                                if (obj5 == null) {
                                    serializeWriter.writeNull();
                                } else {
                                    cls = obj5.getClass();
                                    if (cls == cls2) {
                                        cls2 = cls4;
                                        cls4 = cls2;
                                        objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                    } else {
                                        cls2 = cls4;
                                        objectWriter = jSONSerializer.getObjectWriter(cls);
                                        objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                        cls4 = cls;
                                    }
                                    z3 = false;
                                }
                                cls4 = cls4;
                                z3 = false;
                            } else {
                                list3 = this.propertyFilters;
                                if (list3 != null) {
                                    if (key != null) {
                                        if (!apply(jSONSerializer, obj, (String) key, value)) {
                                        }
                                    } else if (!apply(jSONSerializer, obj, (String) key, value)) {
                                    }
                                }
                                list4 = jSONSerializer.nameFilters;
                                if (list4 != null) {
                                    if (key != null) {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    } else {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    }
                                }
                                list5 = this.nameFilters;
                                if (list5 != null) {
                                    if (key != null) {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    } else {
                                        key = processKey(jSONSerializer, obj, (String) key, value);
                                    }
                                }
                                obj3 = key;
                                if (obj3 != null) {
                                    obj4 = obj3;
                                    objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                                } else {
                                    obj4 = obj3;
                                    objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                                }
                                obj5 = objProcessValue;
                                if (obj5 == null) {
                                }
                                if (obj4 instanceof String) {
                                    String str12 = (String) obj4;
                                    if (!z3) {
                                        serializeWriter.write(44);
                                    }
                                    if (serializeWriter.isEnabled(SerializerFeature.PrettyFormat)) {
                                        jSONSerializer.println();
                                    }
                                    serializeWriter.writeFieldName(str12, true);
                                } else {
                                    if (!z3) {
                                        serializeWriter.write(44);
                                    }
                                    if (serializeWriter.isEnabled(SerializerFeature.BrowserCompatible)) {
                                        jSONSerializer.write(JSON.toJSONString(obj4));
                                    } else {
                                        jSONSerializer.write(JSON.toJSONString(obj4));
                                    }
                                    serializeWriter.write(58);
                                }
                                if (obj5 == null) {
                                    serializeWriter.writeNull();
                                } else {
                                    cls = obj5.getClass();
                                    if (cls == cls2) {
                                        cls2 = cls4;
                                        cls4 = cls2;
                                        objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                    } else {
                                        cls2 = cls4;
                                        objectWriter = jSONSerializer.getObjectWriter(cls);
                                        objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                        cls4 = cls;
                                    }
                                    z3 = false;
                                }
                                cls4 = cls4;
                                z3 = false;
                            }
                        }
                    }
                } else if ((!key.getClass().isPrimitive() && !(key instanceof Number)) || applyName(jSONSerializer, obj, JSON.toJSONString(key))) {
                    list = this.propertyPreFilters;
                    if (list != null) {
                        list2 = jSONSerializer.propertyFilters;
                        if (list2 != null) {
                            list3 = this.propertyFilters;
                            if (list3 != null) {
                                if (key != null) {
                                    if (!apply(jSONSerializer, obj, (String) key, value)) {
                                    }
                                } else if (!apply(jSONSerializer, obj, (String) key, value)) {
                                }
                            }
                            list4 = jSONSerializer.nameFilters;
                            if (list4 != null) {
                                if (key != null) {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                } else {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                }
                            }
                            list5 = this.nameFilters;
                            if (list5 != null) {
                                if (key != null) {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                } else {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                }
                            }
                            obj3 = key;
                            if (obj3 != null) {
                                obj4 = obj3;
                                objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                            } else {
                                obj4 = obj3;
                                objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                            }
                            obj5 = objProcessValue;
                            if (obj5 == null) {
                            }
                            if (obj4 instanceof String) {
                                String str13 = (String) obj4;
                                if (!z3) {
                                    serializeWriter.write(44);
                                }
                                if (serializeWriter.isEnabled(SerializerFeature.PrettyFormat)) {
                                    jSONSerializer.println();
                                }
                                serializeWriter.writeFieldName(str13, true);
                            } else {
                                if (!z3) {
                                    serializeWriter.write(44);
                                }
                                if (serializeWriter.isEnabled(SerializerFeature.BrowserCompatible)) {
                                    jSONSerializer.write(JSON.toJSONString(obj4));
                                } else {
                                    jSONSerializer.write(JSON.toJSONString(obj4));
                                }
                                serializeWriter.write(58);
                            }
                            if (obj5 == null) {
                                serializeWriter.writeNull();
                            } else {
                                cls = obj5.getClass();
                                if (cls == cls2) {
                                    cls2 = cls4;
                                    cls4 = cls2;
                                    objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                } else {
                                    cls2 = cls4;
                                    objectWriter = jSONSerializer.getObjectWriter(cls);
                                    objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                    cls4 = cls;
                                }
                                z3 = false;
                            }
                            cls4 = cls4;
                            z3 = false;
                        } else {
                            list3 = this.propertyFilters;
                            if (list3 != null) {
                                if (key != null) {
                                    if (!apply(jSONSerializer, obj, (String) key, value)) {
                                    }
                                } else if (!apply(jSONSerializer, obj, (String) key, value)) {
                                }
                            }
                            list4 = jSONSerializer.nameFilters;
                            if (list4 != null) {
                                if (key != null) {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                } else {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                }
                            }
                            list5 = this.nameFilters;
                            if (list5 != null) {
                                if (key != null) {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                } else {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                }
                            }
                            obj3 = key;
                            if (obj3 != null) {
                                obj4 = obj3;
                                objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                            } else {
                                obj4 = obj3;
                                objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                            }
                            obj5 = objProcessValue;
                            if (obj5 == null) {
                            }
                            if (obj4 instanceof String) {
                                String str14 = (String) obj4;
                                if (!z3) {
                                    serializeWriter.write(44);
                                }
                                if (serializeWriter.isEnabled(SerializerFeature.PrettyFormat)) {
                                    jSONSerializer.println();
                                }
                                serializeWriter.writeFieldName(str14, true);
                            } else {
                                if (!z3) {
                                    serializeWriter.write(44);
                                }
                                if (serializeWriter.isEnabled(SerializerFeature.BrowserCompatible)) {
                                    jSONSerializer.write(JSON.toJSONString(obj4));
                                } else {
                                    jSONSerializer.write(JSON.toJSONString(obj4));
                                }
                                serializeWriter.write(58);
                            }
                            if (obj5 == null) {
                                serializeWriter.writeNull();
                            } else {
                                cls = obj5.getClass();
                                if (cls == cls2) {
                                    cls2 = cls4;
                                    cls4 = cls2;
                                    objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                } else {
                                    cls2 = cls4;
                                    objectWriter = jSONSerializer.getObjectWriter(cls);
                                    objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                    cls4 = cls;
                                }
                                z3 = false;
                            }
                            cls4 = cls4;
                            z3 = false;
                        }
                    } else {
                        list2 = jSONSerializer.propertyFilters;
                        if (list2 != null) {
                            list3 = this.propertyFilters;
                            if (list3 != null) {
                                if (key != null) {
                                    if (!apply(jSONSerializer, obj, (String) key, value)) {
                                    }
                                } else if (!apply(jSONSerializer, obj, (String) key, value)) {
                                }
                            }
                            list4 = jSONSerializer.nameFilters;
                            if (list4 != null) {
                                if (key != null) {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                } else {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                }
                            }
                            list5 = this.nameFilters;
                            if (list5 != null) {
                                if (key != null) {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                } else {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                }
                            }
                            obj3 = key;
                            if (obj3 != null) {
                                obj4 = obj3;
                                objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                            } else {
                                obj4 = obj3;
                                objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                            }
                            obj5 = objProcessValue;
                            if (obj5 == null) {
                            }
                            if (obj4 instanceof String) {
                                String str15 = (String) obj4;
                                if (!z3) {
                                    serializeWriter.write(44);
                                }
                                if (serializeWriter.isEnabled(SerializerFeature.PrettyFormat)) {
                                    jSONSerializer.println();
                                }
                                serializeWriter.writeFieldName(str15, true);
                            } else {
                                if (!z3) {
                                    serializeWriter.write(44);
                                }
                                if (serializeWriter.isEnabled(SerializerFeature.BrowserCompatible)) {
                                    jSONSerializer.write(JSON.toJSONString(obj4));
                                } else {
                                    jSONSerializer.write(JSON.toJSONString(obj4));
                                }
                                serializeWriter.write(58);
                            }
                            if (obj5 == null) {
                                serializeWriter.writeNull();
                            } else {
                                cls = obj5.getClass();
                                if (cls == cls2) {
                                    cls2 = cls4;
                                    cls4 = cls2;
                                    objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                } else {
                                    cls2 = cls4;
                                    objectWriter = jSONSerializer.getObjectWriter(cls);
                                    objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                    cls4 = cls;
                                }
                                z3 = false;
                            }
                            cls4 = cls4;
                            z3 = false;
                        } else {
                            list3 = this.propertyFilters;
                            if (list3 != null) {
                                if (key != null) {
                                    if (!apply(jSONSerializer, obj, (String) key, value)) {
                                    }
                                } else if (!apply(jSONSerializer, obj, (String) key, value)) {
                                }
                            }
                            list4 = jSONSerializer.nameFilters;
                            if (list4 != null) {
                                if (key != null) {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                } else {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                }
                            }
                            list5 = this.nameFilters;
                            if (list5 != null) {
                                if (key != null) {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                } else {
                                    key = processKey(jSONSerializer, obj, (String) key, value);
                                }
                            }
                            obj3 = key;
                            if (obj3 != null) {
                                obj4 = obj3;
                                objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                            } else {
                                obj4 = obj3;
                                objProcessValue = processValue(jSONSerializer, null, obj, (String) obj4, value);
                            }
                            obj5 = objProcessValue;
                            if (obj5 == null) {
                            }
                            if (obj4 instanceof String) {
                                String str16 = (String) obj4;
                                if (!z3) {
                                    serializeWriter.write(44);
                                }
                                if (serializeWriter.isEnabled(SerializerFeature.PrettyFormat)) {
                                    jSONSerializer.println();
                                }
                                serializeWriter.writeFieldName(str16, true);
                            } else {
                                if (!z3) {
                                    serializeWriter.write(44);
                                }
                                if (serializeWriter.isEnabled(SerializerFeature.BrowserCompatible)) {
                                    jSONSerializer.write(JSON.toJSONString(obj4));
                                } else {
                                    jSONSerializer.write(JSON.toJSONString(obj4));
                                }
                                serializeWriter.write(58);
                            }
                            if (obj5 == null) {
                                serializeWriter.writeNull();
                            } else {
                                cls = obj5.getClass();
                                if (cls == cls2) {
                                    cls2 = cls4;
                                    cls4 = cls2;
                                    objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                } else {
                                    cls2 = cls4;
                                    objectWriter = jSONSerializer.getObjectWriter(cls);
                                    objectWriter.write(jSONSerializer, obj5, obj4, null, 0);
                                    cls4 = cls;
                                }
                                z3 = false;
                            }
                            cls4 = cls4;
                            z3 = false;
                        }
                    }
                }
                cls4 = cls4;
                cls4 = cls4;
            }
        }
        jSONSerializer.context = serialContext;
        jSONSerializer.decrementIdent();
        if (serializeWriter.isEnabled(SerializerFeature.PrettyFormat) && treeMap.size() > 0) {
            jSONSerializer.println();
        }
        if (z) {
            return;
        }
        serializeWriter.write(125);
    }
}
