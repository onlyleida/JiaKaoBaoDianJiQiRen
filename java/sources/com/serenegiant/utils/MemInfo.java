package com.serenegiant.utils;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Debug;
import android.text.TextUtils;
import com.iflytek.cloud.util.AudioDetector;
import java.io.BufferedReader;
import java.io.FileReader;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class MemInfo {
    @SuppressLint({"NewApi"})
    public static JSONObject get(Context context) throws JSONException {
        String line;
        JSONObject jSONObject = new JSONObject();
        try {
            try {
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("availMem", memoryInfo.availMem);
                jSONObject2.put("totalMem", memoryInfo.totalMem);
                jSONObject2.put(AudioDetector.THRESHOLD, memoryInfo.threshold);
                jSONObject2.put("lowMemory", memoryInfo.lowMemory);
                jSONObject.put("ACTIVITYMANAGER_MEMORYINFO", jSONObject2);
            } catch (Exception e2) {
                jSONObject.put("ACTIVITYMANAGER_MEMORYINFO", e2.getMessage());
            }
            try {
                Debug.MemoryInfo memoryInfo2 = new Debug.MemoryInfo();
                Debug.getMemoryInfo(memoryInfo2);
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("TotalPss", memoryInfo2.getTotalPss());
                jSONObject3.put("TotalPrivateDirty", memoryInfo2.getTotalPrivateDirty());
                jSONObject3.put("TotalSharedDirty", memoryInfo2.getTotalSharedDirty());
                if (BuildCheck.isAndroid4_4()) {
                    jSONObject3.put("TotalPrivateClean", memoryInfo2.getTotalPrivateClean());
                    jSONObject3.put("TotalSharedClean", memoryInfo2.getTotalSharedClean());
                    jSONObject3.put("TotalSwappablePss", memoryInfo2.getTotalSwappablePss());
                }
                jSONObject.put("DEBUG_MEMORYINFO", jSONObject3);
            } catch (Exception e3) {
                jSONObject.put("DEBUG_MEMORYINFO", e3.getMessage());
            }
            try {
                JSONObject jSONObject4 = new JSONObject();
                int i = 0;
                BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 512);
                do {
                    line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    if (!TextUtils.isEmpty(line)) {
                        jSONObject4.put(Integer.toString(i), line);
                        i++;
                    }
                } while (line != null);
                bufferedReader.close();
                jSONObject.put("PROC_MEMINFO", jSONObject4);
            } catch (Exception e4) {
                jSONObject.put("PROC_MEMINFO", e4.getMessage());
            }
        } catch (Exception e5) {
            jSONObject.put("EXCEPTION", e5.getMessage());
        }
        return jSONObject;
    }
}
