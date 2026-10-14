package cn.mucang.android.core.api.upload;

import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.a;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.api.request.e.c;
import cn.mucang.android.core.http.c.b;
import cn.mucang.android.core.utils.n0;
import com.alibaba.fastjson.JSONObject;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class FileUploadApi extends a {
    public static final String TYPE_APPLICATION_JSON = "application/json";
    public static final String TYPE_APPLICATION_ZIP = "application/zip";
    public static final String TYPE_AUDIO_AAC = "audio/x-aac";
    public static final String TYPE_IMAGE_GIF = "image/gif";
    public static final String TYPE_IMAGE_JPEG = "image/jpeg";
    public static final String TYPE_IMAGE_PNG = "image/png";
    public static final String TYPE_VIDEO_MP4 = "video/mp4";
    public static final String TYPE_VIDEO_MPEG = "video/mpeg";
    private FileType fileType;
    private final Map<String, String> paramsMap;
    private final String path;
    private final String server;
    private final String signKey;

    public enum FileType {
        Image,
        Video,
        Audio,
        File
    }

    public FileUploadApi(String str, String str2, String str3) {
        this.server = null;
        this.path = null;
        this.signKey = str3;
        HashMap map = new HashMap();
        this.paramsMap = map;
        map.put("bucket", str);
        map.put("contentType", str2);
    }

    @Override // cn.mucang.android.core.api.a
    protected String getApiHost() {
        return n0.g(this.server) ? this.server : "https://upload-image.kakamobi.cn";
    }

    @Override // cn.mucang.android.core.api.a
    protected Map<String, String> getExtraParams() {
        return this.paramsMap;
    }

    @Override // cn.mucang.android.core.api.a
    protected c getRequestConfig() {
        return new c(10000L, 10000L, DefaultDrmSessionManager.DEFAULT_SESSION_KEEPALIVE_MS);
    }

    @Override // cn.mucang.android.core.api.a
    public String getSignKey() {
        return this.signKey;
    }

    protected String path() {
        return n0.g(this.path) ? this.path : "/api/open/upload.htm";
    }

    protected <T extends UploadResult> T upload(File file, FileType fileType, Class<T> cls) throws ApiException, IOException, InternalException, HttpException {
        return (T) upload(file, fileType, cls, null);
    }

    public UploadResult uploadAudio(File file) throws ApiException, IOException, InternalException, HttpException {
        return upload(file, FileType.Audio, UploadResult.class);
    }

    public UploadResult uploadFile(File file) throws ApiException, IOException, InternalException, HttpException {
        return upload(file, FileType.File, UploadResult.class);
    }

    public JSONObject uploadGeneral(File file, String str, b bVar) throws ApiException, IOException, InternalException, HttpException {
        FileType fileTypeValueOf;
        Map<String, String> map = this.paramsMap;
        if (map != null) {
            map.get("contentType");
        }
        try {
            fileTypeValueOf = FileType.valueOf(str);
        } catch (Exception unused) {
            fileTypeValueOf = FileType.File;
        }
        return upload(file, fileTypeValueOf, bVar).getData();
    }

    public UploadImageResult uploadImage(File file) throws ApiException, IOException, InternalException, HttpException {
        return (UploadImageResult) upload(file, FileType.Image, UploadImageResult.class);
    }

    public UploadResult uploadVideo(File file) throws ApiException, IOException, InternalException, HttpException {
        return upload(file, FileType.Video, UploadResult.class);
    }

    protected ApiResponse upload(File file, FileType fileType, b bVar) throws ApiException, IOException, InternalException, HttpException {
        if (file == null || !file.exists()) {
            throw new FileNotFoundException();
        }
        this.fileType = fileType;
        if (fileType == FileType.Image) {
            this.paramsMap.put("type", "image");
        } else if (fileType == FileType.Video || fileType == FileType.Audio || fileType == FileType.File) {
            this.paramsMap.put("type", "file");
        }
        return httpPost(path(), file, bVar);
    }

    public UploadResult uploadAudio(File file, b bVar) throws ApiException, IOException, InternalException, HttpException {
        return upload(file, FileType.Audio, UploadResult.class, bVar);
    }

    public UploadResult uploadFile(File file, b bVar) throws ApiException, IOException, InternalException, HttpException {
        return upload(file, FileType.File, UploadResult.class, bVar);
    }

    public UploadImageResult uploadImage(File file, b bVar) throws ApiException, IOException, InternalException, HttpException {
        return (UploadImageResult) upload(file, FileType.Image, UploadImageResult.class, bVar);
    }

    public UploadResult uploadVideo(File file, b bVar) throws ApiException, IOException, InternalException, HttpException {
        return upload(file, FileType.Video, UploadResult.class, bVar);
    }

    public FileUploadApi(String str, String str2, String str3, String str4, String str5) {
        this.server = str;
        this.path = str2;
        this.signKey = str5;
        HashMap map = new HashMap();
        this.paramsMap = map;
        map.put("bucket", str3);
        map.put("contentType", str4);
    }

    protected <T extends UploadResult> T upload(File file, FileType fileType, Class<T> cls, b bVar) throws ApiException, IOException, InternalException, HttpException {
        return (T) upload(file, fileType, bVar).getData(cls);
    }
}
