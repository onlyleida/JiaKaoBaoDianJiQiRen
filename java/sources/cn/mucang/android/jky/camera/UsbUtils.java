package cn.mucang.android.jky.camera;

import com.mobile.auth.gatewayauth.Constant;
import java.io.BufferedReader;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.text.Charsets;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0007J\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\b\b\u0002\u0010\b\u001a\u00020\tH\u0007J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u0004H\u0007J\u0015\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\f\u001a\u00020\t¢\u0006\u0002\u0010\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000f\u001a\u00020\u0007H\u0007J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jky/camera/UsbUtils;", "", "()V", "getAllSerial", "", "Lcn/mucang/android/jky/camera/UsbSerial;", "getDevBus", "", Constant.LOGIN_ACTIVITY_VENDOR_KEY, "", "getDevBusByDriver", "getDevBusByName", "devName", "(Ljava/lang/String;)Ljava/lang/Integer;", "getSerial", "devBus", "isVideoDriver", "", "parent", "Ljava/io/File;", "usbcamera_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UsbUtils {
    public static final UsbUtils INSTANCE = new UsbUtils();

    private UsbUtils() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getAllSerial$lambda-4, reason: not valid java name */
    public static final boolean m103getAllSerial$lambda4(File file, String name) {
        kotlin.jvm.internal.r.d(name, "name");
        return StringsKt__StringsKt.G(name, "usb", false, 2, null);
    }

    public static /* synthetic */ List getDevBus$default(UsbUtils usbUtils, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "05a3";
        }
        return usbUtils.getDevBus(str);
    }

    private final boolean isVideoDriver(File parent) {
        int i;
        File[] fileArrListFiles = parent.listFiles();
        if (fileArrListFiles == null) {
            i = 0;
        } else {
            i = 0;
            for (File file : fileArrListFiles) {
                if (file.isDirectory()) {
                    if (i > 2) {
                        return false;
                    }
                    Regex regex = new Regex("^(\\d)-\\d\\.?(\\d?):");
                    String name = file.getName();
                    kotlin.jvm.internal.r.d(name, "child.name");
                    if (Regex.find$default(regex, name, 0, 2, null) != null) {
                        i++;
                    }
                }
            }
        }
        return i != 1;
    }

    public final List<UsbSerial> getAllSerial() {
        Object objM139constructorimpl;
        List<String> listB;
        String str;
        List<Integer> devBusByDriver = getDevBusByDriver();
        HashMap map = new HashMap();
        File[] fileArrListFiles = new File("sys/bus/usb/devices").listFiles(new FilenameFilter() { // from class: cn.mucang.android.jky.camera.w
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str2) {
                return UsbUtils.m103getAllSerial$lambda4(file, str2);
            }
        });
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                Integer numJ = null;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM139constructorimpl = Result.m139constructorimpl((String) kotlin.collections.s.f0(FilesKt__FileReadWriteKt.d(new File(file, "serial"), null, 1, null), 0));
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
                }
                if (Result.m145isFailureimpl(objM139constructorimpl)) {
                    objM139constructorimpl = null;
                }
                String str2 = (String) objM139constructorimpl;
                Regex regex = new Regex("usb(.+)");
                String name = file.getName();
                kotlin.jvm.internal.r.d(name, "it.name");
                MatchResult matchResultFind$default = Regex.find$default(regex, name, 0, 2, null);
                if (matchResultFind$default != null && (listB = matchResultFind$default.b()) != null && (str = (String) kotlin.collections.s.f0(listB, 1)) != null) {
                    numJ = kotlin.text.s.j(str);
                }
                if (str2 != null && numJ != null) {
                    if (!map.containsKey(str2)) {
                        map.put(str2, new UsbSerial(numJ.intValue(), str2));
                    } else if (devBusByDriver.contains(numJ)) {
                        map.put(str2, new UsbSerial(numJ.intValue(), str2));
                    }
                }
            }
        }
        Collection collectionValues = map.values();
        kotlin.jvm.internal.r.d(collectionValues, "list.values");
        return CollectionsKt___CollectionsKt.G0(collectionValues, new Comparator() { // from class: cn.mucang.android.jky.camera.UsbUtils$getAllSerial$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return kotlin.x.b.c(Integer.valueOf(((UsbSerial) t).getDevBus()), Integer.valueOf(((UsbSerial) t2).getDevBus()));
            }
        });
    }

    public final List<Integer> getDevBus(String vendor) throws InterruptedException, IOException {
        List<String> listB;
        String str;
        Integer numJ;
        kotlin.jvm.internal.r.e(vendor, "vendor");
        Process processExec = Runtime.getRuntime().exec("lsusb");
        InputStream inputStream = processExec.getInputStream();
        kotlin.jvm.internal.r.d(inputStream, "process.inputStream");
        Reader inputStreamReader = new InputStreamReader(inputStream, Charsets.f15811a);
        BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
        ArrayList arrayList = new ArrayList();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                processExec.waitFor();
                return arrayList;
            }
            if (line != null && StringsKt__StringsKt.G(line, vendor, false, 2, null)) {
                Regex regex = new Regex("Bus (.+) Device");
                kotlin.jvm.internal.r.c(line);
                MatchResult matchResultFind$default = Regex.find$default(regex, line, 0, 2, null);
                if (matchResultFind$default != null && (listB = matchResultFind$default.b()) != null && (str = (String) kotlin.collections.s.f0(listB, 1)) != null && (numJ = kotlin.text.s.j(str)) != null) {
                    arrayList.add(Integer.valueOf(numJ.intValue()));
                }
            }
        }
    }

    public final List<Integer> getDevBusByDriver() {
        int iIntValue;
        File file = new File("sys/bus/usb/drivers/usb");
        HashSet hashSet = new HashSet();
        File[] fileArrListFiles = file.listFiles();
        boolean z = false;
        if (fileArrListFiles == null) {
            iIntValue = -1;
        } else {
            iIntValue = -1;
            boolean z2 = false;
            for (File parent : fileArrListFiles) {
                if (parent.isDirectory()) {
                    Regex regex = new Regex("^(\\d)-\\d\\.?(\\d?)");
                    String name = parent.getName();
                    kotlin.jvm.internal.r.d(name, "parent.name");
                    MatchResult matchResultFind$default = Regex.find$default(regex, name, 0, 2, null);
                    if (matchResultFind$default != null) {
                        String str = (String) kotlin.collections.s.f0(matchResultFind$default.b(), 1);
                        Integer numJ = str == null ? null : kotlin.text.s.j(str);
                        String str2 = (String) kotlin.collections.s.f0(matchResultFind$default.b(), 2);
                        Integer numJ2 = str2 != null ? kotlin.text.s.j(str2) : null;
                        if (numJ != null && numJ2 != null) {
                            iIntValue = numJ.intValue();
                            if (numJ2.intValue() <= 3) {
                                UsbUtils usbUtils = INSTANCE;
                                kotlin.jvm.internal.r.d(parent, "parent");
                                if (usbUtils.isVideoDriver(parent)) {
                                    z2 = true;
                                }
                            }
                        } else if (numJ != null) {
                            UsbUtils usbUtils2 = INSTANCE;
                            kotlin.jvm.internal.r.d(parent, "parent");
                            if (usbUtils2.isVideoDriver(parent)) {
                                hashSet.add(numJ);
                            }
                        }
                    }
                }
            }
            z = z2;
        }
        if (iIntValue != -1) {
            if (z) {
                hashSet.add(Integer.valueOf(iIntValue));
            } else {
                hashSet.remove(Integer.valueOf(iIntValue));
            }
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("getDevBusByDriver : ", hashSet));
        return CollectionsKt___CollectionsKt.M0(hashSet);
    }

    public final Integer getDevBusByName(String devName) {
        List<String> listB;
        String str;
        kotlin.jvm.internal.r.e(devName, "devName");
        MatchResult matchResultFind$default = Regex.find$default(new Regex("usb[/\\\\](\\d+)"), devName, 0, 2, null);
        if (matchResultFind$default == null || (listB = matchResultFind$default.b()) == null || (str = (String) kotlin.collections.s.f0(listB, 1)) == null) {
            return null;
        }
        return kotlin.text.s.j(str);
    }

    public final String getSerial(int devBus) {
        Object objM139constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl((String) kotlin.collections.s.f0(FilesKt__FileReadWriteKt.d(new File("sys/bus/usb/devices/usb" + devBus + "/serial"), null, 1, null), 0));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
        }
        return (String) (Result.m145isFailureimpl(objM139constructorimpl) ? null : objM139constructorimpl);
    }
}
