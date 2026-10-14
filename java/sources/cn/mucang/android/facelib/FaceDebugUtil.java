package cn.mucang.android.facelib;

import android.graphics.Bitmap;
import android.os.Environment;
import android.text.format.Formatter;
import android.util.Base64;
import androidx.exifinterface.media.ExifInterface;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.framework.utils.FormatUtils;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.sundial.library.device.BaseCamera;
import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.r;
import kotlin.text.Charsets;

/* JADX INFO: renamed from: cn.mucang.android.facelib.o, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcn/mucang/android/facelib/FaceDebugUtil;", "", "()V", "Companion", "facelib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FaceDebugUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f3029a = new a(null);

    /* JADX INFO: renamed from: cn.mucang.android.facelib.o$a */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0004H\u0002J\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00102\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004J\u0016\u0010\u0013\u001a\u00020\u00142\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\u0015\u001a\u00020\u0016J \u0010\u0017\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0004J\u001e\u0010\u0019\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fJ&\u0010\u001a\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010\u001d\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcn/mucang/android/facelib/FaceDebugUtil$Companion;", "", "()V", "DEBUG_PATH", "", "clearRegisterFace", "", "deleteUserRegisterFace", "studentId", "mark", "encryptFace", "bitmap", "Landroid/graphics/Bitmap;", "data", "", "getFile", "Ljava/io/File;", "child", "getMatchedFaceFile", "getRegisterFaceCount", "", "isDebug", "", "logMatchedFaceBase64", "compareFile", "saveMatchedFace", "saveRegisterFace", "angleY", "", "trimOldFile", "facelib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {

        /* JADX INFO: renamed from: cn.mucang.android.facelib.o$a$a, reason: collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 5, 1})
        public static final class C0098a<T> implements Comparator {
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return kotlin.x.b.c(Long.valueOf(((File) t).lastModified()), Long.valueOf(((File) t2).lastModified()));
            }
        }

        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        private final String c(Bitmap bitmap) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
                a aVar = FaceDebugUtil.f3029a;
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                r.d(byteArray, "it.toByteArray()");
                String strD = aVar.d(byteArray);
                kotlin.io.b.a(byteArrayOutputStream, null);
                return strD;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    kotlin.io.b.a(byteArrayOutputStream, th);
                    throw th2;
                }
            }
        }

        private final String d(byte[] bArr) {
            byte[] bytes;
            if (bArr.length == 0) {
                return "";
            }
            if (DeviceUtils.c().length() == 0) {
                bytes = "888".getBytes(Charsets.f15811a);
                r.d(bytes, "(this as java.lang.String).getBytes(charset)");
            } else {
                String strC = DeviceUtils.c();
                Charset charset = Charsets.f15811a;
                Objects.requireNonNull(strC, "null cannot be cast to non-null type java.lang.String");
                bytes = strC.getBytes(charset);
                r.d(bytes, "(this as java.lang.String).getBytes(charset)");
            }
            int length = bArr.length - 1;
            if (length >= 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    bArr[i] = (byte) (bArr[i] ^ bytes[i % bytes.length]);
                    if (i2 > length) {
                        break;
                    }
                    i = i2;
                }
            }
            String strEncodeToString = Base64.encodeToString(bArr, 0);
            r.d(strEncodeToString, "encodeToString(data, Base64.DEFAULT)");
            return strEncodeToString;
        }

        private final File e(String str) {
            if (!r.a(Environment.getExternalStorageState(), "mounted")) {
                return null;
            }
            File file = new File(Environment.getExternalStorageDirectory(), "TensorflowSave" + ((Object) File.separator) + str);
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        }

        public final void a() {
            File[] fileArrListFiles;
            File[] fileArrListFiles2;
            File fileE = e("");
            if (fileE == null || (fileArrListFiles = fileE.listFiles()) == null) {
                return;
            }
            for (File file : fileArrListFiles) {
                if (!r.a(file.getName(), "success") && file.isDirectory() && (fileArrListFiles2 = file.listFiles()) != null) {
                    for (File file2 : fileArrListFiles2) {
                        if (file2.isFile()) {
                            file2.delete();
                        }
                    }
                }
            }
        }

        public final void b(String studentId, String mark) {
            File fileE;
            File[] fileArrListFiles;
            r.e(studentId, "studentId");
            r.e(mark, "mark");
            if (h()) {
                studentId = mark;
            }
            if ((studentId.length() == 0) || (fileE = e(studentId)) == null || !fileE.isDirectory() || (fileArrListFiles = fileE.listFiles()) == null) {
                return;
            }
            for (File file : fileArrListFiles) {
                if (file.isFile()) {
                    file.delete();
                }
            }
        }

        public final File f(String studentId, String mark) {
            r.e(studentId, "studentId");
            r.e(mark, "mark");
            File fileE = e("success");
            if (fileE == null) {
                return null;
            }
            a aVar = FaceDebugUtil.f3029a;
            if (aVar.h()) {
                studentId = mark;
            }
            if (studentId.length() == 0) {
                return null;
            }
            return new File(fileE, r.m(studentId, aVar.h() ? BaseCamera.SUFFIX_JPEG : ""));
        }

        public final int g(String studentId, String mark) {
            File fileE;
            String[] list;
            r.e(studentId, "studentId");
            r.e(mark, "mark");
            if (h()) {
                studentId = mark;
            }
            if ((studentId.length() == 0) || (fileE = e(studentId)) == null || (list = fileE.list()) == null) {
                return 0;
            }
            return list.length;
        }

        public final boolean h() {
            if (MucangConfig.v()) {
                return i0.b("key_face_local_debug", false);
            }
            return false;
        }

        public final String i(String studentId, String mark, Bitmap bitmap) throws IOException {
            r.e(studentId, "studentId");
            r.e(mark, "mark");
            r.e(bitmap, "bitmap");
            File fileE = e("success");
            if (fileE == null) {
                return "";
            }
            a aVar = FaceDebugUtil.f3029a;
            if (aVar.h()) {
                studentId = mark;
            }
            if (studentId.length() == 0) {
                return "";
            }
            File file = new File(fileE, r.m(studentId, aVar.h() ? BaseCamera.SUFFIX_JPEG : ""));
            if (aVar.h()) {
                OutputStream fileOutputStream = new FileOutputStream(file);
                BufferedOutputStream bufferedOutputStream = fileOutputStream instanceof BufferedOutputStream ? (BufferedOutputStream) fileOutputStream : new BufferedOutputStream(fileOutputStream, 8192);
                try {
                    bitmap.compress(Bitmap.CompressFormat.JPEG, 100, bufferedOutputStream);
                    kotlin.io.b.a(bufferedOutputStream, null);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        kotlin.io.b.a(bufferedOutputStream, th);
                        throw th2;
                    }
                }
            } else {
                Writer outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), Charsets.f15811a);
                BufferedWriter bufferedWriter = outputStreamWriter instanceof BufferedWriter ? (BufferedWriter) outputStreamWriter : new BufferedWriter(outputStreamWriter, 8192);
                try {
                    bufferedWriter.write(aVar.c(bitmap));
                    kotlin.v vVar = kotlin.v.f15822a;
                    kotlin.io.b.a(bufferedWriter, null);
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        kotlin.io.b.a(bufferedWriter, th3);
                        throw th4;
                    }
                }
            }
            String absolutePath = file.getAbsolutePath();
            r.d(absolutePath, "file.absolutePath");
            return absolutePath;
        }

        public final String j(String studentId, String mark, Bitmap bitmap, float f2) throws IOException {
            File fileE;
            r.e(studentId, "studentId");
            r.e(mark, "mark");
            r.e(bitmap, "bitmap");
            if (h()) {
                studentId = mark;
            }
            if ((studentId.length() == 0) || (fileE = e(studentId)) == null) {
                return "";
            }
            String strD = FormatUtils.d("yyyy_MM_dd__HH_mm_ss", System.currentTimeMillis());
            a aVar = FaceDebugUtil.f3029a;
            File file = new File(fileE, ((int) f2) + '_' + strD + (aVar.h() ? BaseCamera.SUFFIX_JPEG : ""));
            if (aVar.h()) {
                OutputStream fileOutputStream = new FileOutputStream(file);
                BufferedOutputStream bufferedOutputStream = fileOutputStream instanceof BufferedOutputStream ? (BufferedOutputStream) fileOutputStream : new BufferedOutputStream(fileOutputStream, 8192);
                try {
                    bitmap.compress(Bitmap.CompressFormat.JPEG, 100, bufferedOutputStream);
                    kotlin.io.b.a(bufferedOutputStream, null);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        kotlin.io.b.a(bufferedOutputStream, th);
                        throw th2;
                    }
                }
            } else {
                Writer outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), Charsets.f15811a);
                BufferedWriter bufferedWriter = outputStreamWriter instanceof BufferedWriter ? (BufferedWriter) outputStreamWriter : new BufferedWriter(outputStreamWriter, 8192);
                try {
                    bufferedWriter.write(aVar.c(bitmap));
                    kotlin.v vVar = kotlin.v.f15822a;
                    kotlin.io.b.a(bufferedWriter, null);
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        kotlin.io.b.a(bufferedWriter, th3);
                        throw th4;
                    }
                }
            }
            String absolutePath = file.getAbsolutePath();
            r.d(absolutePath, "imgFile.absolutePath");
            return absolutePath;
        }

        public final void k() {
            File[] fileArrListFiles;
            File[] fileArrListFiles2;
            LinkedList linkedList = new LinkedList();
            File fileE = e("");
            long length = 0;
            if (fileE != null && (fileArrListFiles = fileE.listFiles()) != null) {
                for (File file : fileArrListFiles) {
                    if (file.isDirectory() && (fileArrListFiles2 = file.listFiles()) != null) {
                        for (File file2 : fileArrListFiles2) {
                            if (file2.isFile()) {
                                linkedList.add(file2);
                                length += file2.length();
                            }
                        }
                    }
                }
            }
            cn.mucang.android.jiakaoyi.framework.log.f.g(r.m("人脸照片本地存储空间占用：", Formatter.formatFileSize(MucangConfig.getContext(), length)));
            if (length > 52428800) {
                for (File file3 : CollectionsKt___CollectionsKt.G0(linkedList, new C0098a())) {
                    if (file3.isFile() && length > 31457280) {
                        length -= file3.length();
                        file3.delete();
                    }
                }
            }
        }
    }
}
