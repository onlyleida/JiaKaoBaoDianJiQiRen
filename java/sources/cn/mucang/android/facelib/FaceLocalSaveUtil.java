package cn.mucang.android.facelib;

import android.graphics.Bitmap;
import android.os.Environment;
import android.text.format.Formatter;
import androidx.exifinterface.media.ExifInterface;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.sundial.library.device.BaseCamera;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Comparator;
import java.util.LinkedList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.facelib.p, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcn/mucang/android/facelib/FaceLocalSaveUtil;", "", "()V", "Companion", "facelib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FaceLocalSaveUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f3030a = new a(null);

    /* JADX INFO: renamed from: cn.mucang.android.facelib.p$a */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0004J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0002J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u0004J\u001e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/facelib/FaceLocalSaveUtil$Companion;", "", "()V", "FACE_PATH", "", "clearRegisterFace", "", "deleteUserRegisterFace", "studentId", "getFile", "Ljava/io/File;", "child", "getRegisterFaceCount", "", "saveRegisterFace", "bitmap", "Landroid/graphics/Bitmap;", "angleY", "", "trimOldFile", "facelib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {

        /* JADX INFO: renamed from: cn.mucang.android.facelib.p$a$a, reason: collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 5, 1})
        public static final class C0099a<T> implements Comparator {
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

        private final File b(String str) {
            File file;
            if (r.a(Environment.getExternalStorageState(), "mounted")) {
                file = new File(MucangConfig.getContext().getExternalFilesDir(null), "FaceSave" + ((Object) File.separator) + str);
            } else {
                file = new File(MucangConfig.getContext().getFilesDir(), "FaceSave" + ((Object) File.separator) + str);
            }
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        }

        public final void a(String studentId) {
            File[] fileArrListFiles;
            r.e(studentId, "studentId");
            if (studentId.length() == 0) {
                return;
            }
            File fileB = b(studentId);
            if (!fileB.isDirectory() || (fileArrListFiles = fileB.listFiles()) == null) {
                return;
            }
            for (File file : fileArrListFiles) {
                if (file.isFile()) {
                    file.delete();
                }
            }
        }

        public final int c(String studentId) {
            String[] list;
            r.e(studentId, "studentId");
            if ((studentId.length() == 0) || (list = b(studentId).list()) == null) {
                return 0;
            }
            return list.length;
        }

        public final String d(String studentId, Bitmap bitmap, float f2) throws IOException {
            r.e(studentId, "studentId");
            r.e(bitmap, "bitmap");
            if (studentId.length() == 0) {
                return "";
            }
            File file = new File(b(studentId), ((int) f2) + '_' + System.currentTimeMillis() + BaseCamera.SUFFIX_JPEG);
            OutputStream fileOutputStream = new FileOutputStream(file);
            BufferedOutputStream bufferedOutputStream = fileOutputStream instanceof BufferedOutputStream ? (BufferedOutputStream) fileOutputStream : new BufferedOutputStream(fileOutputStream, 8192);
            try {
                bitmap.compress(Bitmap.CompressFormat.JPEG, 100, bufferedOutputStream);
                kotlin.io.b.a(bufferedOutputStream, null);
                String absolutePath = file.getAbsolutePath();
                r.d(absolutePath, "imgFile.absolutePath");
                return absolutePath;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    kotlin.io.b.a(bufferedOutputStream, th);
                    throw th2;
                }
            }
        }

        public final void e() {
            File[] fileArrListFiles;
            LinkedList linkedList = new LinkedList();
            File[] fileArrListFiles2 = b("").listFiles();
            long length = 0;
            if (fileArrListFiles2 != null) {
                for (File file : fileArrListFiles2) {
                    if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                        for (File file2 : fileArrListFiles) {
                            if (file2.isFile()) {
                                linkedList.add(file2);
                                length += file2.length();
                            }
                        }
                    }
                }
            }
            cn.mucang.android.jiakaoyi.framework.log.f.g(r.m("人脸照片(完整)本地存储空间占用：", Formatter.formatFileSize(MucangConfig.getContext(), length)));
            if (length > 838860800) {
                for (File file3 : CollectionsKt___CollectionsKt.G0(linkedList, new C0099a())) {
                    if (file3.isFile() && length > 734003200) {
                        length -= file3.length();
                        file3.delete();
                    }
                }
            }
        }
    }
}
