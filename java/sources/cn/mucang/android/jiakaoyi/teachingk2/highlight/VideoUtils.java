package cn.mucang.android.jiakaoyi.teachingk2.highlight;

import android.media.MediaMetadataRetriever;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResDirUtils;
import com.tencent.connect.share.QzonePublish;
import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.highlight.t, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004J\u000e\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\nJ\u0018\u0010\u0010\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u0014\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0004J\u000e\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\nJ\u0010\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\nH\u0002J\u000e\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\nJ\u000e\u0010\u001b\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/highlight/VideoUtils;", "", "()V", "PATH_COMPRESS", "", "PATH_RECORD", "PATH_VIDEO", "PATH_ZIP", "TEMP", "createCompressPath", "Ljava/io/File;", "path", "createRecordPath", "time", "", "getCompressDirectory", "getFaceFile", "mustExist", "", "getFinalFaceRecordPath", "getTempFaceRecordPath", "getVideoDuration", QzonePublish.PUBLISH_TO_QZONE_VIDEO_PATH, "getZipFaceFile", "file", "getZipFile", "getZipRecordFile", "saveVideoFile", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class VideoUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final VideoUtils f7169a = new VideoUtils();

    private VideoUtils() {
    }

    private final File h(File file) {
        String name = file.getName();
        kotlin.jvm.internal.r.d(name, "name");
        String strG0 = StringsKt__StringsKt.G0(name, ".", null, 2, null);
        StringBuilder sb = new StringBuilder();
        sb.append("video");
        String str = File.separator;
        sb.append((Object) str);
        sb.append("zip");
        sb.append((Object) str);
        sb.append(strG0);
        return ResDirUtils.b(sb.toString());
    }

    public final File a(String path) {
        kotlin.jvm.internal.r.e(path, "path");
        String name = new File(path).getName();
        File fileB = ResDirUtils.b("video" + ((Object) File.separator) + "compress");
        kotlin.jvm.internal.r.d(name, "name");
        return new File(fileB, kotlin.text.t.x(name, ".mp4", ".tmp", false, 4, null));
    }

    public final File b(long j) {
        File fileB = ResDirUtils.b("video" + ((Object) File.separator) + "record");
        StringBuilder sb = new StringBuilder();
        sb.append(j);
        sb.append(".tmp");
        File file = new File(fileB, sb.toString());
        if (file.exists()) {
            file.delete();
        }
        return file;
    }

    public final File c(String path, boolean z) {
        kotlin.jvm.internal.r.e(path, "path");
        StringBuilder sb = new StringBuilder(path);
        int iZ = StringsKt__StringsKt.Z(path, ".", 0, false, 6, null);
        if (iZ < 0) {
            return null;
        }
        sb.insert(iZ, "-face");
        File file = new File(sb.toString());
        if (!z || file.exists()) {
            return file;
        }
        return null;
    }

    public final File d(long j) {
        return new File(ResDirUtils.b("video"), j + ".mp4");
    }

    public final File e(long j) {
        return new File(ResDirUtils.b("video"), j + ".tmp");
    }

    public final long f(String videoPath) throws IOException {
        kotlin.jvm.internal.r.e(videoPath, "videoPath");
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource(videoPath);
        String strExtractMetadata = mediaMetadataRetriever.extractMetadata(9);
        mediaMetadataRetriever.release();
        if (strExtractMetadata == null) {
            return 0L;
        }
        return Long.parseLong(strExtractMetadata);
    }

    public final File g(File file) {
        kotlin.jvm.internal.r.e(file, "file");
        return new File(h(file), "face.mp4");
    }

    public final File i(File file) {
        kotlin.jvm.internal.r.e(file, "file");
        return new File(h(file), "record.mp4");
    }

    public final File j(File file) {
        kotlin.jvm.internal.r.e(file, "file");
        String absolutePath = file.getAbsolutePath();
        kotlin.jvm.internal.r.d(absolutePath, "file.absolutePath");
        File file2 = new File(kotlin.text.t.x(absolutePath, ".tmp", ".mp4", false, 4, null));
        file.renameTo(file2);
        return file2;
    }
}
